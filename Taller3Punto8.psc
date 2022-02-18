SubProceso i <- Buscar (contactoi)
	Definir i Como Entero;
	i <- Longitud(contactoi);
FinSubProceso 

SubProceso contacto <- Registro ()
	Definir contacto Como Caracter;
	Escribir "Ingrese el nombre del usuario y resultado del curso, separados por coma (,) y sin espacios:";
	Escribir "Por ejemplo: Gabriel,aprobado o Julián,reprobado"; 
	Leer contacto;
FinSubProceso

//Aplicación para la escuela automovilística El Maetro, la cual permite registrar sus clientes, cursos y aprobaciones
Proceso Taller3Punto8
	//Definición de variables
	Definir control Como Logico;
	Definir contacto1 Como Caracter;
	Definir contacto2 Como Caracter;
	Definir contacto3 Como Caracter;
	Definir contacto4 Como Caracter;
	Definir contacto5 Como Caracter;
	Definir contacto6 Como Caracter;
	Definir contacto7 Como Caracter;
	Definir contacto8 Como Caracter;
	Definir buscarContacto Como Caracter;
	Definir punteroContacto Como Entero;
	Definir opcion Como Entero;
	Definir i Como Entero;
	
	//Iniciación de variables
	contacto1 <- "";
	contacto2 <- "";
	contacto3 <- "";
	contacto4 <- "";
	contacto5 <- "";
	contacto6 <- "";
	contacto7 <- "";
	contacto8 <- "";
	punteroContacto <- 1;
	control <- Verdadero;
	
	Escribir "Bienvenido a la escuela automovilística El Maestro, favor registrar cliente(s)";
	Mientras control = Verdadero Hacer
		Escribir "";
		Escribir "*** Menú de usuario ***";
		Escribir "1. Registro de usuario al curso";
		Escribir "2. Consultar si el usuario ya hizo el curso y su resultado";
		Escribir "3. Salir de la aplicación";
		Leer opcion;
		Segun opcion Hacer
			1: //Registro de usuario al curso
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
									Si contacto6 = "" Entonces
										punteroContacto <- 6;
									SiNo
										Si contacto7 = "" Entonces
											punteroContacto <- 7;
										SiNo
											Si contacto8 = "" Entonces
												punteroContacto <- 8;
											SiNo
												punteroContacto <- 9;
											FinSi
										FinSi
									FinSi
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
					6:
						contacto6 <- Registro();
					7:
						contacto7 <- Registro();
					8:
						contacto8 <- Registro();
					De Otro Modo:
						Escribir "No puede registrar más de 8 usuarios";
				FinSegun
			2:
				Escribir "Ingrese el nombre del usuario:";
				Leer buscarContacto;
				i <- Buscar(buscarContacto);
				Si buscarContacto = Subcadena(contacto1,0,i-1) Entonces
					Escribir "El usuario ya ha presentado el curso y su resultado fue: ", contacto1;
				SiNo
					Si buscarContacto = Subcadena(contacto2,0,i-1) Entonces
						Escribir "El usuario ya ha presentado el curso y su resultado fue: ", contacto2;
					SiNo
						Si buscarContacto = Subcadena(contacto3,0,i-1) Entonces
							Escribir "El usuario ya ha presentado el curso y su resultado fue: ", contacto3;
						SiNo
							Si buscarContacto = Subcadena(contacto4,0,i-1) Entonces
								Escribir "El usuario ya ha presentado el curso y su resultado fue: ", contacto4;
							SiNo
								Si buscarContacto = Subcadena(contacto5,0,i-1) Entonces
									Escribir "El usuario ya ha presentado el curso y su resultado fue: ", contacto5;
								SiNo
									Si buscarContacto = Subcadena(contacto6,0,i-1) Entonces
										Escribir "El usuario ya ha presentado el curso y su resultado fue: ", contacto6;
									SiNo
										Si buscarContacto = Subcadena(contacto7,0,i-1) Entonces
											Escribir "El usuario ya ha presentado el curso y su resultado fue: ", contacto7;
										SiNo
											Si buscarContacto = Subcadena(contacto8,0,i-1) Entonces
												Escribir "El usuario ya ha presentado el curso y su resultado fue: ", contacto8;
											SiNo
												Escribir "El usuario no ha presentado el curso de enseñanza automovilística!";
											FinSi
										FinSi
									FinSi	
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			3:
				control <- Falso;
				Escribir "Muchas gracias por usar la aplicación de la escuela automovilística El Maestro, vuelva pronto";
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "Opción inválida, ingrese un número de 1 a 3";
		FinSegun
	FinMientras
FinProceso
