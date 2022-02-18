//Punto 9 condicionales usando funciones, calcolo de áreas de figuras geométricas
//Función para calcular área de un rectángulo
SubProceso areaRectangulo <- calcAreaRect (base, altura)
	Definir areaRectangulo Como Real;
	areaRectangulo <- base * altura;
FinSubProceso

//Función para calcular área de un triángulo
SubProceso areaTriangulo <- calcAreaTriang (base, altura)
	Definir areaTriangulo Como Real;
	areaTriangulo <- base * altura / 2;
FinSubProceso

//Función para calcular área de un trapecio
SubProceso areaTrapecio <- calcAreaTrapec (baseMayor, baseMenor, altura)
	Definir areaTrapecio Como Real;
	areaTrapecio <- (baseMayor + baseMenor) / 2 * altura;
FinSubProceso

//Programa para calculo del área de un rectángulo, triángulo o trapecio
Proceso TallerFuncionesCondicionalesPunto9
	Definir opcion Como Entero;
	
	Escribir "Hola estudiane, seleccione la figura a la cual desea calcularle el área:";
	Escribir "1. Calcular área de un rectángulo";
	Escribir "2. Calcular área de un triangulo";
	Escribir "3. Calcular área de un trapecio";
	Escribir "4. Salir";
	leer opcion;
	
	Limpiar Pantalla;
		
	Segun opcion Hacer
		1:
			Escribir "Se procederá a realizar el cálculo, recuerde ingresar las medidas en las mismas unidades métricas (UM)!";
			Definir base Como Real;
			Definir altura Como Real;
			Escribir "Favor ingrese la medida de la base del rectángulo:";
			Leer base;
			Escribir "Favor ingrese la medida de la altura del rectángulo:";
			Leer altura;
			Escribir "El área del rectángulo es ", calcAreaRect(base, altura), " UM^2";
		2:
			Escribir "Se procederá a realizar el cálculo, recuerde ingresar las medidas en las mismas unidades métricas (UM)!";
			Definir base Como Real;
			Definir altura Como Real;
			Escribir "Favor ingrese la medida de la base del triángulo:";
			Leer base;
			Escribir "Favor ingrese la medida de la altura del triángulo:";
			Leer altura;
			Escribir "El área del triángulo es ", calcAreaTriang(base, altura), " UM^2";
		3:
			Escribir "Se procederá a realizar el cálculo, recuerde ingresar las medidas en las mismas unidades métricas (UM)!";
			Definir baseMayor Como Real;
			Definir baseMenor Como Real;
			Definir altura Como Real;
			Escribir "Favor ingrese la medida de la base mayor del trapecio:";
			Leer baseMayor;
			Escribir "Favor ingrese la medida de la base menor del trapecio:";
			Leer baseMenor;
			Escribir "Favor ingrese la medida de la altura del trapecio:";
			Leer altura;
			Escribir "El área del trapecio es ", calcAreaTrapec(baseMayor, baseMenor, altura), " UM^2";
		De Otro Modo:
			Escribir "Profesor, el estudiante no quiso realizar la tarea!!!";
	FinSegun
FinProceso


