//Calculo del �ndice de masa corporal (IMC) para La Secretar�a de Salud Municipal
Proceso Taller2Punto7
	//Definici�n de variables
	Definir nombrePersona Como Caracter;
	Definir pesoKg Como Real;
	Definir estaturaMts Como Real;
	Definir IMC como Real;
	
	Escribir "Ingrese su nombre completo:";
	Leer nombrePersona;
	
	Escribir "Hola ", nombrePersona, ", para calcular su �ndice de masa corporal, ingrese su peso en Kg:";
	Leer pesoKg;
	
	Escribir "Ingrese su estatura en metros:";
	Leer estaturaMts;
	
	//C�lculo del IMC
	IMC <- pesoKg / (estaturaMts) ^ 2;
	
	Limpiar Pantalla;
	
	Si IMC < 18.5 Entonces
		Escribir "Estimado(a) ", nombrePersona, " usted tiene bajo peso";
	SiNo
		Si IMC < 24.9 Entonces
			Escribir "Estimado(a) ", nombrePersona, " usted tiene un peso normal";
		SiNo
			Si IMC < 29.9 Entonces
				Escribir "Estimado(a) ", nombrePersona, " usted tiene sobrepeso";
			SiNo
				Escribir "Estimado(a) ", nombrePersona, " usted est� obeso";
			FinSi
		FinSi
	FinSi
	
	Escribir "";
	Escribir "Gracias por usar el software para c�lculo de IMC de La Secretar�a de Salud Municipal. Feliz d�a";
	
FinProceso


