#include <stdio.h>
#include <windows.h>

void test_dll()
{
    int ret = 0;
    char* dll = "D:\\DLL-Injector\\messagebox.dll";

    printf("[+] Testing functionality of %s\n", dll);
    HMODULE dll_handle = LoadLibraryA((LPCSTR)dll);
}

int main()
{
    //test function, comment this out if you dont want to test
    test_dll();

    return 0;
}