//
// Created by Hedmon lopez on 05/03/2018.
//

#ifndef ARCHIVOS_NOTAS_H
#define ARCHIVOS_NOTAS_H


class Notas {

public:

    Notas();
    static void promedioAlumno();
    static void promedioMateria();
    static void registroAlumno();
    static void consultarAlumno();
    static void registroMateria();
    static void consultarMaterias();
    static void registrarNotas();
    static void consultarNotas();
    static int obtenerCodigoAlumno(const char *);
    static int obtenerCodigoMateria(const char *);
    static char* obtenerNombreAlummo(const int);
    static char* obtenerNombreMateria(const int);
};


#endif //ARCHIVOS_NOTAS_H
