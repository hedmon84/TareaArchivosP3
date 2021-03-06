//
// Created by Hedmon lopez on 05/03/2018.
//

#include "Notas.h"
#include <fstream>
#include <iostream>
#include <cstring>
#define Print(x) std:::cout << x << std::endl;
using  namespace std;

void Notas::registroAlumno() {

    ofstream archivoAlumnos("alumnos.dat",ios::app);

    if(!archivoAlumnos){
        cout<<"Error al intentar abrir el archivo alumnos.dat\n";
    }

    int cuenta ,edad , cantidad;
    char nombre[50];

    cout<<"\n\n *** INGRESO DE ALUMNOS ***\n\n";
    cout<<"Cantidad de alumnos a ingresar: ";
    cin>>cantidad;

    for(int i =0 ; i < cantidad; i++){

        cout<<"Ingrese numero de cuenta : ";
        cin>> cuenta ;
        cout<<"Ingrese nombre del alumno: ";
        cin>>nombre;
        cout<< "Ingrese edad: ";
        cin>> edad;

        archivoAlumnos<<cuenta<<' '<<nombre<<' '<<edad<<"\n";
    }

    archivoAlumnos.close();

}

void Notas::consultarAlumno() {

    ifstream archivoAlumnos("alumnos.dat" , ios::in );
    if(!archivoAlumnos){
        cout << "Error al intentar abrir el archivo.dat";
        return;
    }
    int cuenta,edad ;
    char nombre[50];

    cout << "\n\n ***CONSULTA DE ALUMNOS***\n\n";
    //archivoAlumnos.seekg(0,ios::beg);
    while(archivoAlumnos>>cuenta>>nombre>>edad){

        cout<<cuenta << ' ' << nombre << ' ' << edad << "\n";
    }

    archivoAlumnos.close();


}

void Notas::registroMateria() {

    ofstream writer("materias.dat", ios::app);
    if(!writer){
        cout << "Error, al intentar abrir el archivo materias.dat\n";
        return;
    }
    int cantidad, codigoM;
    char nombre[30];
    cout << "\n\n**Ingreso de materias *** \n\n";

    cout << "Ingrese cantidad de materias: ";
    cin >> cantidad;

    for (int i = 0; i < cantidad; i++)
    {

        cout<<"Ingrese Codigo de Materia: ";
        cin>> codigoM ;
        cout<<"Ingrese Nombre de Materia: ";
        cin>> nombre;
        writer << codigoM << ' ' << nombre << "\n";

    }

    writer.close();

}

void Notas::consultarMaterias() {
    ifstream reader("materias.dat", ios::app);

    if (!reader) {
        cout << "Error al intentar abrir el archivo materias.dat\n";
        return;
    }

    cout << "\n\n ** Consulta de Materias **\n";

    reader.seekg(0, ios::beg);

    int codigoM;
    char nombre[50];

    while (reader >> codigoM >> nombre) {

        cout << codigoM << ' ' << nombre << "\n";


    }

    reader.close();

}
void Notas::registrarNotas()
{
    ofstream writer("notas.dat", ios::app);

    if (!writer) {
        cout << "Error al intentar abrir el archivo notas.dat\n";
        return;
    }

    int opcion = 0;

    cout << "\n\n **Ingreso de Notas** \n\n";

    do{
        char nombreM[30];
        char nombreA[50];
        int contador = 0;
        int codigoM, codigoA, nota;

        do{
            cout<< "Ingrese Materia : ";
            cin >> nombreM;
            codigoM = obtenerCodigoMateria(nombreM);
        }while (codigoM == -1);

        do{
            cout<< "Ingrese Alumno : ";
            cin >> nombreA;
            codigoA =  obtenerCodigoAlumno(nombreA);
        }while (codigoA == -1);


         do{
             cout << "Ingrese Notas: ";
             cin>>nota;
             contador++;
         }while (contador != 1);

        contador=0;




        writer << codigoM << ' ' << codigoA << ' ' << nota << "\n";
        cout << "Desea ingresar una nueva nota 1 si ? 2 salir" <<  "\n";
        cin >> opcion;



    }while (opcion != 2);

    writer.close();




}


void Notas::consultarNotas()
{
    ifstream archivoNotas( "notas.dat" , ios::in);

    if(!archivoNotas){
        cout << "Error al intentar abrir el archivo notas.dat\n";
        return;
    }

    cout<< "\n\n ***CONSULTA DE NOTAS**\n\n";
    int codigoM,codigoA,nota;
    archivoNotas.seekg(0,ios::beg);
    while (archivoNotas >> codigoM>>codigoA>>nota){

        cout << obtenerNombreMateria(codigoM) << ' ' << obtenerNombreAlummo(codigoA) << ' ' << nota << '\n';
    }

    archivoNotas.close();

}

int Notas::obtenerCodigoAlumno(const char *nombreM)
{

    ifstream reader("materias.dat", ios::in);

    if (!reader) {
        cout << "Error al intentar el archivo materias.dat\n";
        return -1;
    }

    reader.seekg(0, ios::beg);
    int codigo;
    char nombre[30];

    while (reader >> codigo >> nombre) {
        if (strcmp(nombre, nombreM) != 0) {
            return codigo;
        }
    }


    return -1;
}

int Notas::obtenerCodigoMateria(const char *nombreM)
{
    ifstream reader("alumnos.dat", ios::in);

    if (!reader) {
        cout << "Error al intentar el archivo materias.dat\n";
        return -1;
    }

    reader.seekg(0, ios::beg);
    int codigo, edad;
    char nombre[30];

    while (reader >> codigo >> nombre >> edad) {
        if (strcmp(nombre, nombreM) != 0) {
            return codigo;
        }
    }

    return -1;
}

char *Notas::obtenerNombreAlummo(const int codigoAlumno) {

    ifstream archivoAlumno("alumno.dat");
    if(!archivoAlumno){
        cout << "Error al intentar el archivo alumno.dat\n";
       return NULL;
    }
    int codigo , edad;
    char nombre[50];
    archivoAlumno.seekg(0,ios::beg);
    while (archivoAlumno >>codigo >> nombre >> edad){
        if(codigoAlumno == codigo){

            auto *retorno = new char[strlen(nombre)];
            strcpy(retorno,nombre);
            retorno[strlen(nombre)]= '0';
            archivoAlumno.close();
            return retorno;

        }

    }
    archivoAlumno.close();
    return nullptr;


}

char *Notas::obtenerNombreMateria(const int codigoMateria) {

    ifstream archivoMateria("alumno.dat");
    if(!archivoMateria){
        cout << "Error al intentar el archivo alumno.dat\n";
        return NULL;
    }
    int codigo ;
    char nombre[50];
    archivoMateria.seekg(0,ios::beg);

    while (archivoMateria >>codigo >> nombre){
        if(codigoMateria == codigo){
            auto *retorno = new char[strlen(nombre)];
            strcpy(retorno,nombre);
            retorno[strlen(nombre)]='0';
            archivoMateria.close();
            return retorno;

        }

    }
    archivoMateria.close();
    return  NULL;

}

void Notas::promedioAlumno() {

    ifstream promedioAL("notas.dat",ios::in);

    if (!promedioAL) {
        cout << "ERROR NOSE PUEDE ABRIR EL ARCHIVO nota.dat";
        return;
    }
    promedioAL.seekg(0, ios::beg);
    char nombreA[50];
    int codigoM, codigoA, codigoAlumPromedio, nota, promedio, notaTotal=0, cantNota=0;

    cout << "\n\n  --P R O M E D I O   D E L   A L U M N O--\n";

    cout << "\nNombre del alumno: ";
    cin >> nombreA;
    codigoAlumPromedio = obtenerCodigoAlumno(nombreA);

    while (promedioAL >> codigoM >> codigoA >> nota) {
        if (codigoAlumPromedio == codigoA) {
            notaTotal = notaTotal + nota;
            cantNota++;
        }
    }
    promedio = notaTotal / cantNota;
    cout << "\nPromedio del alumno:  " << nombreA << " es " << promedio;



}


void Notas::promedioMateria() {

    ifstream archivoP("notas.dat", ios::in);

    if (!archivoP) {
        cout << "ERROR NO SE PUDO ABRIR EL ARCHIVO notas.dat" << endl;
        return;
    }

    archivoP.seekg(0, ios::beg);
    char nombreM[30];
    int codigoA, codigoM, nota, codigoMPromedio, notaSuma = 0, cantN = 0, promedio;

    cout << "\n\n *P R O M E D I O  D E  L A S  M A T E R I A S *\n\n";

    cout << "\nIngrese Materia: ";
    cin >> nombreM;

    codigoMPromedio = obtenerCodigoMateria(nombreM);

    while (archivoP >> codigoM >> codigoA >> nota) {
        if (codigoMPromedio == codigoM) {
            notaSuma += nota;
            cantN++;
        }
    }

    promedio = notaSuma / cantN;
    cout << "\nPromedio total de la clase " << nombreM << " es " << promedio;

    
}