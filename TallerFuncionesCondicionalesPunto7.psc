//Punto 7 condicionales usando funciones, calculo del índice de masa corporal (IMC) para La Secretaría de Salud Municipal
SubProceso calculoIMC <- IMC (nPersona)
	Definir pesoKg Como Real;
	Definir estaturaMts Como Real;
	Definir calculoIMC como Real;
	
	Escribir "Hola ", nPersona, ", para calcular su índice de masa corporal, ingrese su peso en Kg:";
	Leer pesoKg;
	
	Escribir "Ingrese su estatura en metros:";
	Leer estaturaMts;
	
	//Cálculo del IMC
	calculoIMC <- pesoKg / (estaturaMts) ^ 2;
FinSubProceso

Proceso TallerFuncionesCondicionalesPunto7
	//Definición de variables
	Definir nombrePersona Como Caracter;
	definir imcPersona Como Real;
	
	Escribir "Ingrese su nombre completo:";
	Leer nombrePersona;
	imcPersona <- IMC(nombrePersona);
	
	Limpiar Pantalla;
	
	Si imcPersona < 18.5 Entonces
		Escribir "Estimado(a) ", nombrePersona, " usted tiene bajo peso";
	SiNo
		Si imcPersona < 24.9 Entonces
			Escribir "Estimado(a) ", nombrePersona, " usted tiene un peso normal";
		SiNo
			Si imcPersona < 29.9 Entonces
				Escribir "Estimado(a) ", nombrePersona, " usted tiene sobrepeso";
			SiNo
				Escribir "Estimado(a) ", nombrePersona, " usted está obeso";
			FinSi
		FinSi
	FinSi
	
	Escribir "";
	Escribir "Gracias por usar el software para cálculo de IMC de La Secretaría de Salud Municipal. Feliz día";
	
FinProceso


