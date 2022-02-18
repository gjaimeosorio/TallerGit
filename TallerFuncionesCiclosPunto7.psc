SubProceso i <- Buscar (contactoi)
	Definir i Como Entero;
	i <- Longitud(contactoi);
FinSubProceso 

SubProceso contacto <- Registro ()
	Definir contacto Como Caracter;
	Escribir "Ingrese el nombre, tel�fono, n�mero de placa, y marca, separados por coma (,) y sin espacios:";
	Escribir "Por ejemplo: Gabriel,3345687,TYH657,Renault";
	Leer contacto;
FinSubProceso

//Punto 7, taller de ciclos usando funciones, aplicaci�n del parqueadero El Guardi�n para registro de veh�culos
Proceso TallerFuncionesCiclosPunto7
	//Definici�n de variables
	Definir control Como Logico;
	Definir contacto1 Como Caracter;
	Definir contacto2 Como Caracter;
	Definir contacto3 Como Caracter;
	Definir contacto4 Como Caracter;
	Definir contacto5 Como Caracter;
	Definir opcion Como Entero;
	Definir buscarContacto Como Caracter;
	Definir punteroContacto Como Entero;
	Definir i Como Entero;
	
	//Inicializaci�n de variables
	contacto1 <- "";
	contacto2 <- "";
	contacto3 <- "";
	contacto4 <- "";
	contacto5 <- "";
	punteroContacto <- 1;
	control <- Verdadero;
	
	Escribir "Bienvenido al parqueadero El guardi�n, favor registrar veh�culo";
	Mientras control = Verdadero Hacer
		Escribir "";
		Escribir "*** Men� de usuario ***";
		Escribir "1. Ingresar vehiculo al parqueadero";
		Escribir "2. Consultar vehiculo del parqueadero";
		Escribir "3. Retirar vehiculo del parqueadero";
		Escribir "4. Salir de la aplicaci�n";
		Leer opcion;
		Segun opcion Hacer
			1: //Ingreso de veh�culo al parqueadero
				//Manejo de usuarios sin registrar
				Si contacto1 = "" Entonces
					punteroContacto <- 1;
				SiNo
					Si contacto2 = "" Entonces
						punteroContacto <- 2;
					SiNo
						Si contacto3 = "" Entonces
							punteroContacto <- 3;
						SiNo
							Si contacto4 = "" Entonces
								punteroContacto <- 4;
							SiNo
								Si contacto5 = "" Entonces
									punteroContacto <- 5;
								SiNo
									punteroContacto <- 6;
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi					
				Segun punteroContacto Hacer
					1:
						contacto1 <- Registro();
					2:
						contacto2 <- Registro();
					3:
						contacto3 <- Registro();
					4:
						contacto4 <- Registro();
					5:
						contacto5 <- Registro();
					De Otro Modo:
						Escribir "No puede registrar m�s de 5 veh�culos";
				FinSegun
			2: //Consultar veh�culo
				Escribir "Ingrese el nombre del cliente para buscar su veh�culo:";
				Leer buscarContacto;
				i <- Buscar(buscarContacto);
				Si buscarContacto = Subcadena(contacto1,0,i-1) Entonces
					Escribir "El veh�culo se encuentra en el parqueadero!!!";
					Escribir "Datos del veh�culo [cliente,tel�fono,#placa,marca] = : ", contacto1;
				SiNo
					Si buscarContacto = Subcadena(contacto2,0,i-1) Entonces
						Escribir "El veh�culo se encuentra en el parqueadero!!!";
						Escribir "Datos del veh�culo [cliente,tel�fono,#placa,marca] = : ", contacto2;
					SiNo
						Si buscarContacto = Subcadena(contacto3,0,i-1) Entonces
							Escribir "El veh�culo se encuentra en el parqueadero!!!";
							Escribir "Datos del veh�culo [cliente,tel�fono,#placa,marca] = : ", contacto3;
						SiNo
							Si buscarContacto = Subcadena(contacto4,0,i-1) Entonces
								Escribir "El veh�culo se encuentra en el parqueadero!!!";
								Escribir "Datos del veh�culo [cliente,tel�fono,#placa,marca] = : ", contacto4;
							SiNo
								Si buscarContacto = Subcadena(contacto5,0,i-1) Entonces
									Escribir "El veh�culo se encuentra en el parqueadero!!!";
									Escribir "Datos del veh�culo [cliente,tel�fono,#placa,marca] = : ", contacto5;
								SiNo
									Escribir "El veh�culo no se encuentra en el parqueadero!";
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			3:
				Escribir "Ingrese el nombre del cliente para retirar su vehiculo:";
				Leer buscarContacto;
				i <- Buscar(buscarContacto);
				Si buscarContacto = Subcadena(contacto1,0,i-1) Entonces
					contacto1 <- "";
					Escribir "El veh�culo de ", buscarContacto, " ha sido retirado del parqueadero";
				SiNo
					Si buscarContacto = Subcadena(contacto2,0,i-1) Entonces
						contacto2 <- "";
						Escribir "El veh�culo de ", buscarContacto, " ha sido retirado del parqueadero";
					SiNo
						Si buscarContacto = Subcadena(contacto3,0,i-1) Entonces
							contacto3 <- "";
							Escribir "El veh�culo de ", buscarContacto, " ha sido retirado del parqueadero";
						SiNo
							Si buscarContacto = Subcadena(contacto4,0,i-1) Entonces
								contacto4 <- "";
								Escribir "El veh�culo de ", buscarContacto, " ha sido retirado del parqueadero";
							SiNo
								Si buscarContacto = Subcadena(contacto5,0,i-1) Entonces
									contacto5 <- "";
									Escribir "El veh�culo de ", buscarContacto, " ha sido retirado del parqueadero";
								SiNo
									Escribir "El veh�culo no se encuentra en el parqueadero!";
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			4:
				control <- Falso;
				Escribir "Muchas gracias por usar la aplicaci�n del parqueadero El Guardian, vuelva pronto";
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "Opci�n inv�lida, ingrese un n�mero de 1 a 4";
		FinSegun
	FinMientras
FinProceso
