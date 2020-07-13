//
// Created by gongsf on 2020/7/13.
//

#include "kernel.h"
#include <iostream>

using namespace std;

static int Pagerank(ConfigData& conf){
    cout << "this is page rank " << conf.value <<endl;
    return 0;
}

static int sssp(ConfigData& conf){
    cout << "this is page rank " << conf.value <<endl;
    return 0;
}

REGISTER_RUNNER(Pagerank);
REGISTER_RUNNER(sssp);

