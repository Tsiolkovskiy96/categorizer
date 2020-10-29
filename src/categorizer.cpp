#include "categorizer.hpp"

using namespace std;

int main(int argc, char** args)                                             // "args" - массив состоящий из строк
{
    fstream f;                                                              // переменная используемая для управления входящими файлами; чтобы использовать файлы;

    if (argc == 1)
    {
        cout << "Please specify input file(s)!" << endl;
        return 1;                                                           // Прерываем функцию main и выходим из программы;
    }

    for(int i = 1; i < argc; i++)                                            // функция для проверки!
    {
        f.open(args[i], ios::binary|ios::in);                                // "f." функция подставновки имён; "open" - принимаеи на вход имя файла; "ios::binary|ios::stream" - флаги ввода и вывода; "ios in" - файл открывается для чтения ввода данных в программу;
        if(!f.is_open())                                                     // проверка существования файла; "Если функция вернула False то делать ..."
        {
            cout << "File: " << args[i] << " is not accessible!" << endl;
            return 1;                                                        // Прерываем функцию main и выходим из программы;
        }
        f.close();                                                           // завершение функции и подготовить к выполнению других операций над файлом;
    }
    return 0;
}
