#include <iostream>
#include <string>
#include <unordered_set>
#include <vector>
#include <fstream>
#include <list>
#include "utils.h"

using namespace std;

vector<string> getSeqs(string path)
{
    vector<string> seqs;
    ifstream filex;
    string line, seq = "";
    filex.open(path, ifstream::in);

    while (getline(filex, line))
    {
        if (line[0] == '>')
        {
            if (seq.length() > 0)
            {
                seqs.push_back(seq);
            }
            seq = "";
        } 
        else 
        {
            seq += line;
        }
    }

    filex.close();
    if (seq.length() > 0)
    {
        seqs.push_back(seq);
    }

    return seqs;
}

int main(int argc, char ** argv)
{
    int kmerSize = stoi(argv[1]);
    int minSize = stoi(argv[2]);
    string output = argv[3];

    vector<string> paths{
        "./refs/chr1.fa",
        "./refs/chr2.fa",
        "./refs/chr3.fa",
        "./refs/chr4.fa",
        "./refs/chr5.fa",
        "./refs/chr6.fa",
        "./refs/chr7.fa",
        "./refs/chr8.fa",
        "./refs/chr9.fa",
        "./refs/chr10.fa",
        "./refs/chr11.fa",
        "./refs/chr12.fa",
        "./refs/chr13.fa",
        "./refs/chr14.fa",
        "./refs/chr15.fa",
        "./refs/chr16.fa",
        "./refs/chr17.fa",
        "./refs/chr18.fa",
        "./refs/chr19.fa",
        "./refs/chr20.fa",
        "./refs/chr21.fa",
        "./refs/chr22.fa",
        "./refs/chrX.fa",
        "./refs/chrY.fa"
    };

    ofstream outFile(output, ios::out);

    for (string path: paths)
    {
        vector<string> seqs = getSeqs(path);
        unordered_set<string> allmins;
        auto path_split = UTILS::splitString(path, '/');
        auto chromName = UTILS::splitString(path_split[path_split.size() - 1], '.')[0];

        for (string seq: seqs)
        {
            unordered_set<string> mins = UTILS::obtainMinimizers(kmerSize, minSize, seq);
            allmins.insert(mins.begin(), mins.end());
        }

        outFile << chromName << "\t";

        for(unordered_set<string>::iterator it = allmins.begin(); it != allmins.end(); ++it)
        {
            outFile << *it << "\t";
        }
        outFile << endl;
    }

    outFile.close();
   
    return 0;
}