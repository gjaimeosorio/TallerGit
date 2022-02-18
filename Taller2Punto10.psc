//Aplicación para llevar las cuentas de los usuarios del banco "Su banco fiel"
Proceso Taller2Punto10
	//Definición de variables
	Definir titular Como Caracter;
	Definir titular1 Como Caracter;
	Definir titular2 Como Caracter;
	Definir titular3 Como Caracter;
	Definir cantidad1 Como Entero;
	Definir cantidad2 Como Entero;
	Definir cantidad3 Como Entero;
	Definir transaccion Como Entero;
	Definir opcion Como Entero;
	
	//El banco cuenta con 3 usuarios, para cada usuario se tiene su nombre de usuario y cantidad guardada en el banco. 
	titular1 <- "andresramirez"; cantidad1 <- 345000;
	titular2 <- "williamgiraldo"; cantidad2 <- 1200000;
	titular3 <- "abelhernandez"; cantidad3 <- 2300000;
	
	Escribir "Bienvenido a la sucursal virtual de Su Banco Fiel, favor ingrese su nombre de usuario para realizar sus transacciones:";
	leer titular;
	
	Si titular = titular1 | titular = titular2 | titular = titular3 Entonces
		Limpiar Pantalla;
		Escribir "Bienvenido, ", titular, " elija una opción:";
		Escribir "1. Realizar ingreso a la cuenta bancaria";
		Escribir "2. Realizar retiro de la cuenta bancaria";
		Escribir "3. Realizar consulta de la cuenta bancaria";
		leer opcion;
		
		Limpiar Pantalla;
		
		Segun opcion Hacer
			1:
				Escribir "Qué cantidad de dinero desea ingresar a su cuenta?";
				Leer transaccion;
				Si transaccion < 0 Entonces
					Escribir "No se pueden ingresar valores negativos a su cuenta, ¡intentelo de nuevo!";
				SiNo
					Si titular = titular1 Entonces
						cantidad1 <- cantidad1 + transaccion;
						Escribir "Gracias por haber realizado el ingreso a su cuenta, el nuevo saldo es de: $", cantidad1;
					SiNo
						Si titular = titular2 Entonces
							cantidad2 <- cantidad2 + transaccion;
							Escribir "Gracias por haber realizado el ingreso a su cuenta, el nuevo saldo es de: $", cantidad2;
						SiNo
							cantidad3 <- cantidad3 + transaccion;
							Escribir "Gracias por haber realizado el ingreso a su cuenta, el nuevo saldo es de: $", cantidad3;
						FinSi
					FinSi
				FinSi
			2:
				Escribir "Qué cantidad de dinero desea retirar cuenta?";
				Leer transaccion;
				Si titular = titular1 Entonces
					Si transaccion > cantidad1 Entonces
						Escribir "No puede retirar una cantidad mayor a $", cantidad1;
					SiNo
						cantidad1 <- cantidad1 - transaccion;
						Escribir "Gracias por haber realizado el retiro de dinero de su cuenta, el nuevo saldo es de: $", cantidad1;
					FinSi
				SiNo
					Si titular = titular2 Entonces
						Si transaccion > cantidad2 Entonces
							Escribir "No puede retirar una cantidad mayor a $", cantidad2;
						SiNo
							cantidad2 <- cantidad2 - transaccion;
							Escribir "Gracias por haber realizado el retiro de dinero de su cuenta, el nuevo saldo es de: $", cantidad2;
						FinSi
					SiNo
						Si transaccion > cantidad3 Entonces
							Escribir "No puede retirar una cantidad mayor a $", cantidad3;
						SiNo
							cantidad3 <- cantidad3 - transaccion;
							Escribir "Gracias por haber realizado el retiro de dinero de su cuenta, el nuevo saldo es de: $", cantidad3;
						FinSi
					FinSi
				FinSi
			3:
				Si titular = titular1 Entonces
					Escribir "Su saldo actual es de: $", cantidad1;
				SiNo
					Si titular = titular2 Entonces
						Escribir "Su saldo actual es de: $", cantidad2;
					SiNo
						Escribir "Su saldo actual es de: $", cantidad3;
					FinSi
				FinSi
			De Otro Modo:
				Escribir "Opción incorrecta";
		FinSegun
	SiNo
		Escribir "El nombre de usuario: ", titular, " aún no se ha registrado en la base de datos del banco Su banco fiel!, para registrarse favor espere en la fila virtual, su puesto es el 300";
	FinSi	
FinProceso


