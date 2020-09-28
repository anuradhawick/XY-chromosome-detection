#include <iostream>
#include <string>
#include <unordered_set>
#include <vector>
#include <fstream>
#include <list>
#include <map>
#include <sstream>

using namespace std;

#pragma once

namespace UTILS
{
    string revComp(string &seq)
    {
        string rev(seq.length() , 'N');
        
        for (int i = seq.length() - 1; i >= 0; --i)
        {
            if (seq[i] == 'A')
            {
                rev[seq.length() - 1 - i] = 'T';
            }
            else if(seq[i] == 'T')
            {
                rev[seq.length() - 1 - i] = 'A';
            }
            else if (seq[i] == 'G')
            {
                rev[seq.length() - 1 - i] = 'C';
            }
            else if (seq[i] == 'C')
            {
                rev[seq.length() - 1 - i] = 'G';
            }
            else
            {
                rev[seq.length() - 1 - i] = 'N';
            } 
        }

        return rev;
    }

    u_int64_t substr_kmer_int(string &str, int start, int length)
    {
        u_int64_t val = 0;

        for (size_t i = start; i < start + length; i++)
        {
            val = val << 2;
            val += (str[i] >> 1 & 3);
        }

        return val;
    }

    unordered_set<u_int64_t> obtainMinimizers(int &k, int &m, string &seq)
    {
        int Kmer = k;
        int M = m;
        int L = seq.length();
        // list<string> mins;
        list<u_int64_t> mins;
        string rev = revComp(seq);    

        for (size_t i = 0; i < L - Kmer + 1; i++)
        {    
            string sub_f = seq.substr(i, Kmer);
            
            if (sub_f.find('N') != string::npos)
            {
                continue;
            } 
            
            string sub_r = rev.substr(L - Kmer - i, Kmer);
            // string minimizer = "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
            u_int64_t minimizer = UINT64_MAX;

            for (size_t j = 0; j < Kmer - M + 1; j++)
            {
                // string sub2 = sub_f.substr(j, M);
                u_int64_t sub2 = substr_kmer_int(sub_f, j, M);
                if (sub2 < minimizer)
                {
                    minimizer = sub2;
                }
                
                // sub2 = sub_r.substr(j, M);
                sub2 = substr_kmer_int(sub_r, j, M);
                if (sub2 < minimizer)
                {
                    minimizer = sub2;
                }
            }

            mins.push_back(minimizer);
            
        }
        
        // unordered_set<string> result(mins.begin(), mins.end());
        unordered_set<u_int64_t> result(mins.begin(), mins.end());

        return result;
    }

    vector<string> splitString(string s, char d)
    {
        vector<string> splitted;
        istringstream iss(s);
        string data;

        while (getline(iss, data, d))
        {
            splitted.push_back(data);
        }

        return splitted;
    }
}