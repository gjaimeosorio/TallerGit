SubProceso InfoUsuario ()
	Definir vector, i Como Entero;
	Dimension vector[5];
	Escribir "Favor ingresar 5 datos tipo entero";	
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "Este dato ser� almacenado en la posici�n ", i, ":"; //Indico al usuario en qu� posici�n del vector va a quedar su  n�mero.
		Leer vector[i];
	FinPara
	Limpiar Pantalla;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "[", i, "] = ", vector[i];
	FinPara
FinSubProceso

//Punto 1, taller de arreglos usando funciones, crear vector de tipo Entero con 5 posiciones, llenarlo con informaci�n solicitada al usuario
Proceso TallerFuncionesArreglosPunto1
	InfoUsuario();
FinProceso