//Punto 9 condicionales usando funciones, calcolo de �reas de figuras geom�tricas
//Funci�n para calcular �rea de un rect�ngulo
SubProceso areaRectangulo <- calcAreaRect (base, altura)
	Definir areaRectangulo Como Real;
	areaRectangulo <- base * altura;
FinSubProceso

//Funci�n para calcular �rea de un tri�ngulo
SubProceso areaTriangulo <- calcAreaTriang (base, altura)
	Definir areaTriangulo Como Real;
	areaTriangulo <- base * altura / 2;
FinSubProceso

//Funci�n para calcular �rea de un trapecio
SubProceso areaTrapecio <- calcAreaTrapec (baseMayor, baseMenor, altura)
	Definir areaTrapecio Como Real;
	areaTrapecio <- (baseMayor + baseMenor) / 2 * altura;
FinSubProceso

//Programa para calculo del �rea de un rect�ngulo, tri�ngulo o trapecio
Proceso TallerFuncionesCondicionalesPunto9
	Definir opcion Como Entero;
	
	Escribir "Hola estudiane, seleccione la figura a la cual desea calcularle el �rea:";
	Escribir "1. Calcular �rea de un rect�ngulo";
	Escribir "2. Calcular �rea de un triangulo";
	Escribir "3. Calcular �rea de un trapecio";
	Escribir "4. Salir";
	leer opcion;
	
	Limpiar Pantalla;
		
	Segun opcion Hacer
		1:
			Escribir "Se proceder� a realizar el c�lculo, recuerde ingresar las medidas en las mismas unidades m�tricas (UM)!";
			Definir base Como Real;
			Definir altura Como Real;
			Escribir "Favor ingrese la medida de la base del rect�ngulo:";
			Leer base;
			Escribir "Favor ingrese la medida de la altura del rect�ngulo:";
			Leer altura;
			Escribir "El �rea del rect�ngulo es ", calcAreaRect(base, altura), " UM^2";
		2:
			Escribir "Se proceder� a realizar el c�lculo, recuerde ingresar las medidas en las mismas unidades m�tricas (UM)!";
			Definir base Como Real;
			Definir altura Como Real;
			Escribir "Favor ingrese la medida de la base del tri�ngulo:";
			Leer base;
			Escribir "Favor ingrese la medida de la altura del tri�ngulo:";
			Leer altura;
			Escribir "El �rea del tri�ngulo es ", calcAreaTriang(base, altura), " UM^2";
		3:
			Escribir "Se proceder� a realizar el c�lculo, recuerde ingresar las medidas en las mismas unidades m�tricas (UM)!";
			Definir baseMayor Como Real;
			Definir baseMenor Como Real;
			Definir altura Como Real;
			Escribir "Favor ingrese la medida de la base mayor del trapecio:";
			Leer baseMayor;
			Escribir "Favor ingrese la medida de la base menor del trapecio:";
			Leer baseMenor;
			Escribir "Favor ingrese la medida de la altura del trapecio:";
			Leer altura;
			Escribir "El �rea del trapecio es ", calcAreaTrapec(baseMayor, baseMenor, altura), " UM^2";
		De Otro Modo:
			Escribir "Profesor, el estudiante no quiso realizar la tarea!!!";
	FinSegun
FinProceso


