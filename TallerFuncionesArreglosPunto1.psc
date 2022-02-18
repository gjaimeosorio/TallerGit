SubProceso InfoUsuario ()
	Definir vector, i Como Entero;
	Dimension vector[5];
	Escribir "Favor ingresar 5 datos tipo entero";	
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "Este dato será almacenado en la posición ", i, ":"; //Indico al usuario en qué posición del vector va a quedar su  número.
		Leer vector[i];
	FinPara
	Limpiar Pantalla;
	Para i <- 0 Hasta 4 Con Paso 1 Hacer
		Escribir "[", i, "] = ", vector[i];
	FinPara
FinSubProceso

//Punto 1, taller de arreglos usando funciones, crear vector de tipo Entero con 5 posiciones, llenarlo con información solicitada al usuario
Proceso TallerFuncionesArreglosPunto1
	InfoUsuario();
FinProceso