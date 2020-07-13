#include <iostream>
#include <mpi.h>
#include <unistd.h>

#include "kernel.h"

using namespace std;

int main(int argc, char *argv[]) {

    string kernal = "sssp";

    RunnerRegistry::KernelRunner k = RunnerRegistry::Get()->runner(kernal);
    if(k == NULL){
        cout << "there is no kernel " << kernal << endl;
        cout << RunnerRegistry::Get()->runners().size() << endl;
        map<string, RunnerRegistry::KernelRunner> kmap =  RunnerRegistry::Get()->runners();
        map<string, RunnerRegistry::KernelRunner>::iterator itr = kmap.begin();
        while(itr != kmap.end()){
            cout << itr->first << " " << itr->second << endl;
            itr++;
        }
        cout << kmap["sssp"] << endl;
        cout << k << endl;
    }else{
        ConfigData conf = ConfigData();
        k(conf);
    }
    return 0;
}
