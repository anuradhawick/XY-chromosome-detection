#include <iostream>
#include <string>
#include <unordered_set>
#include <vector>
#include <fstream>
#include <list>
#include <unordered_map>
#include <sstream>
#include "utils.h"

using namespace std;

string chroms[] = { "chr1", "chr2", "chr3", "chr4", "chr5", "chr6", "chr7", "chr8", "chr9", "chr10", "chr11", "chr12", "chr13", "chr14", "chr15", "chr16", "chr17", "chr18", "chr19", "chr20", "chr21", "chr22", "chrX", "chrY" };
unordered_map<string, int8_t> str_int_map = {
                                {"chr1", 0},
                                {"chr2", 1},
                                {"chr3", 2},
                                {"chr4", 3},
                                {"chr5", 4},
                                {"chr6", 5},
                                {"chr7", 6},
                                {"chr8", 7},
                                {"chr9", 8},
                                {"chr10", 9},
                                {"chr11", 10},
                                {"chr12", 11},
                                {"chr13", 12},
                                {"chr14", 13},
                                {"chr15", 14},
                                {"chr16", 15},
                                {"chr17", 16},
                                {"chr18", 17},
                                {"chr19", 18},
                                {"chr20", 19},
                                {"chr21", 20},
                                {"chr22", 21},
                                {"chrX", 22},
                                {"chrY", 23}
                            };

u_int64_t kmer_int(string &kmer)
{
    u_int64_t val = 0;

    for (size_t i = 0; i < kmer.size(); i++)
    {
        val = val << 2;
        val += (kmer[i] >> 1 & 3);
    }

    return val;
}

void loadIndex(string &path, vector<int8_t> &index, int threads=8)
{
    ifstream minimizers(path);
    string line;
    vector<string> lines;

    while (getline(minimizers, line))
    {
        lines.push_back(line);
    }

    #pragma omp parallel for num_threads(threads)
    for (size_t i = 0; i < lines.size(); i++)
    {
        string chromName = "";
        string line = lines[i];
        string data;
        istringstream iss(line);

        while (getline(iss, data, '\t'))
        {
            if (chromName == "") {
                chromName = data;
            } else 
            {
                // no locking required since minimizers are unique
                index[kmer_int(data)] = str_int_map[chromName];
            }
        }
    }
    
    minimizers.close();
}

string findInIndex(string &seq, vector<int8_t> &index, int kmerSize, int minSize)
{
    unordered_set<u_int64_t> seqMins = UTILS::obtainMinimizers(kmerSize, minSize, seq);
    long scores[24] = {0};
    string best = "Unassigned";
    int maxScore = 0;

    for (unordered_set<u_int64_t>::iterator i = seqMins.begin(); i != seqMins.end(); i++)
    {
        if (index[*i] >= 0)
        {
            scores[index[*i]]++;
        }
    }

    for (size_t i = 0; i < 24; i++)
    {
        if (maxScore < scores[i])
        {
            best = chroms[i];
            maxScore = scores[i];
        }
    }

    return best;
}

unordered_map<string, long> processLinesBatch(vector<string> &linesBatch, vector<int8_t> &index, int kmerSize, int minSize, int threads)
{
    vector<string> batchAnswers(linesBatch.size());
    string output = "";
    unordered_map<string, long> assignments;

    // initialize assignments
    for (string c: chroms)
    {
        assignments[c];
    }

    #pragma omp parallel for num_threads(threads)
    for (uint i = 0; i < linesBatch.size(); i++)
    {
        batchAnswers[i] =  findInIndex(linesBatch[i], index, kmerSize, minSize);
    }

    for (string s: batchAnswers)
    {
        assignments[s]++;
    }

    return assignments;
}

void log_state(unordered_map<string, long> &assignments)
{
    for (string c: chroms)
    {
        cout << assignments[c] << "\t";
    }
    cout << endl;
}

int main(int argc, char ** argv)
{
    string dbPath = argv[1], readsPath = argv[6];
    int threads = stoi(argv[2]);
    int batchSize = stoi(argv[3]);
    int kmerSize = stoi(argv[4]);
    int minSize = stoi(argv[5]);
    cout << "DATABASE LOADING" << endl;
    vector<int8_t> index(1073741824, -1);
    loadIndex(dbPath, index);
    cout << "DATABASE LOADED" << endl;

    ifstream readsFile(readsPath);
    string line;
    int i = 0;
    vector<string> lines;
    unordered_map<string, long> assignments, batch_results;
    bool is_log = true;
    
    while (getline(readsFile, line))
    {
        if (i % 4 == 1)
        {
            lines.push_back(line);
        }

        if (lines.size() == batchSize)
        {
            batch_results = processLinesBatch(lines, index, kmerSize, minSize, threads);

            for (unordered_map<string, long>::iterator it = batch_results.begin(); it != batch_results.end(); it++)
            {
                assignments[it->first] += it->second;
            }
            if (is_log)
            {
                log_state(assignments);
            }
            
            lines.clear();
        }
        i++;
    }
    if (lines.size() > 0)
    {
        processLinesBatch(lines, index, kmerSize, minSize, threads);
        lines.clear();
        for (unordered_map<string, long>::iterator it = batch_results.begin(); it != batch_results.end(); it++)
        {
            assignments[it->first] += it->second;
        }
    }
    if (is_log)
    {
        log_state(assignments);
    }

    for (string s: chroms)
    {
        cout << s << " " << assignments[s] << endl;
    }


    readsFile.close();
    
    return 0;
}