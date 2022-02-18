SubProceso menu ()
	Definir control Como Entero;
	Para control <- 1 Hasta 10 Con Paso 1 Hacer
		Escribir control, ". Tabla del ", control;
	FinPara
FinSubProceso

SubProceso tabla ( num )
	Definir control Como Entero;
	Para control <- 1 Hasta 10 Con Paso 1 Hacer
		Escribir control, " x " , num, " = ", control * num;
	FinPara
FinSubProceso

Proceso Taller3Punto4
	Definir opcion Como Entero;
	Escribir "Hola, ¿qué tabla de multiplicar desea crear?";
	Escribir "Seleccione una opción:";
	menu(); //El menú es repetitivo
	leer opcion;
	Limpiar Pantalla;
	tabla(opcion); //La tabla es repetitiva
FinProceso
