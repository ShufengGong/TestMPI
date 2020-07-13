//
// Created by gongsf on 2020/7/13.
//

#ifndef TESTMPI_KERNEL_H
#define TESTMPI_KERNEL_H

#include <map>
#include <iostream>

using namespace std;

class ConfigData{
public:
    ConfigData() {

    }
    ~ConfigData() {
    }

    int value = 1;
};

class RunnerRegistry {
public:
    typedef int (*KernelRunner)(ConfigData&);

    typedef map<string, KernelRunner> Map;

    KernelRunner runner(const string name) {
        return m_[name];
    }

    Map &runners() {
        return m_;
    }

    static RunnerRegistry *Get();

private:

    RunnerRegistry() {
    }

    Map m_;
};

RunnerRegistry* RunnerRegistry::Get() {
    static RunnerRegistry* r = NULL;
    if (!r) { r = new RunnerRegistry; }
    return r;
}

struct RunnerRegistrationHelper {

    RunnerRegistrationHelper(RunnerRegistry::KernelRunner k, const char *name) {
        cout << k << " " << name << endl;
        RunnerRegistry::Get()->runners().insert(make_pair(name, k));
    }
};

#define REGISTER_RUNNER(r)\
  static RunnerRegistrationHelper r_helper_ ## r ## _(&r, #r);


#endif //TESTMPI_KERNEL_H
