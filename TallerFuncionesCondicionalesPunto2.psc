//Punto 2 condicionales usando funciones, preguntar una persona es ni�o(a) o adulto(a).
SubProceso ninho_adulto ()
	Definir edad Como Entero;
	Escribir "Favor ingresar edad de la persona: ";
	Leer edad;
	Si edad < 18 Entonces
		Escribir "Usted a�n es un ni�o(a).";
	SiNo
		Escribir "Usted es un adulto.";
	FinSi
FinSubProceso

Proceso TallerFuncionesCondicionalesPunto2
	ninho_adulto();
FinProceso
