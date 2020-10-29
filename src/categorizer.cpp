#include "categorizer.hpp"

using namespace std;

unsigned int histogram[256];                                                // место где хранится наша гистограмма; записывать индекс яркости от 0 до 255;
int alphabet[256];

int main(int argc, char** args)                                             // "args" - массив состоящий из строк
{
    fstream f;                                                              // переменная используемая для управления входящими файлами; чтобы использовать файлы;
    ofstream out("histogram.txt");

    int width, height;
    width = 0;
    height = 0;

    char PGM_hdr1[2];                                                       // ввели переменную символов с указанием массива и сичла элементов в нём;

    if (argc == 1)                                                          // Проверка условия;
    {
        cout << "Please specify input file(s)!" << endl;
        return 1;                                                           // Прерываем функцию main и выходим из программы;
    }

    for(int i = 1; i < argc; i++)                                            // Проверка с помощью функции счетчика;
    {
        f.open(args[i], ios::binary|ios::in);                                // "f." функция подставновки имён; "open" - принимаеи на вход имя файла; "ios::binary|ios::stream" - флаги ввода и вывода; "ios in" - файл открывается для чтения ввода данных в программу;
        if(!f.is_open())                                                     // проверка существования файла; "Если функция вернула False то делать ..."
        {
            cout << "File: " << args[i] << " is not accessible!" << endl;
            continue;                                                        // команда сброса итерации цикла;
        }

        cout << "File " << args[i] << " opened" << endl;

        f.read(PGM_hdr1, 2);                                                 // считать файл, указание на переменную PGM_hdr1 и число элементов
        if((PGM_hdr1[0] != 0x50)||(PGM_hdr1[1] != 0x35)) continue;           // условие выполнения
        cout << "PGM header detected" << endl;

        f.seekg(static_cast<unsigned int>(f.tellg()) + 1);                   // функкции которые помогут сдвинуть текущую позицию чтения в файле на 1 байт  (возврощают результат в виде size); staic_cast<тип> - приведение типов; Предсавить один тип с другим;

        unsigned int digit_b = static_cast<unsigned int>(f.tellg());

        char sym;                                                            //считывание файла байтах; Символ пропуска 0x20
        do
        {
            f.read(&sym, 1);
        } while(sym != 0x20);

        unsigned int digit_e = static_cast<unsigned int>(f.tellg()) - 2;

        int j = 0;
        for(int d = '0'; d <= '9'; d++, j++) alphabet[d] = j;
        int c = 1;
        for(j = digit_e; j >= digit_b; j--, c *= 10)
        {
            f.seekg(j);
            f.read(&sym, 1);
            width += alphabet[sym] * c;
        }
        cout << "Width: " << width << endl;

        digit_b = digit_e + 2;
        c = 1;
        do
        {
            f.read(&sym, 1);
        } while(sym != 0x0A);
        digit_e = static_cast<unsigned int>(f.tellg()) - 2;
        for(j = digit_e; j >= digit_b; j--, c *=10)
        {
            f.seekg(j);
            f.read(&sym, 1);
            height += alphabet[sym] * c;
        }
        cout << "Height: " << width << endl;

        for(int d = 0; d < 256; ++d) histogram[d] = 0;
        f.seekg(digit_e + 6);
        for(int d = 0; d < (width * height); ++d)
        {
            if(f.eof()) break;
            f.read(&sym, 1);
            histogram[static_cast<unsigned char>(sym)] += 1;
        }
        cout << endl;

        for(j = 0; j < 256; j++)
        {
            cout << "[" << j << "]";
            for(c = 0; c < histogram[j]; c++)
                cout << "|";
            cout << endl;
        }

        f.close();                                                           // завершение функции и подготовить к выполнению других операций над файлом;
        out << "File: " << args[i] << endl;
        out << "Width" << width << "\t Height: " << height << endl;

        for(j = 0; j < 256; j++)
        {
            out << "[" << j << "]";
            for(c = 0; c < histogram[j]; c++)
                out << "|";
            out << endl;
        }
        out << "End of file " << args[i] << endl << endl;
        out.close();
    }
    return 0;
}


