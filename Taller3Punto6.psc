SubProceso i <- Buscar (contactoi)
	Definir i Como Entero;
	i <- Longitud(contactoi);
FinSubProceso 

SubProceso contacto <- Registro ()
	Definir contacto Como Caracter;
	Escribir "Ingrese el nombre, teléfono y organización, separados por coma (,) y sin espacios:";
	Escribir "Por ejemplo: Gabriel,3345687,ICONTEC";
	Leer contacto;
FinSubProceso

//Prototipo para almacenar contactos telefónicos
Proceso Taller3Punto6
	//Definición de variables
	Definir control Como Logico;
	Definir contacto1 Como Caracter;
	Definir contacto2 Como Caracter;
	Definir contacto3 Como Caracter;
	Definir opcion Como Entero;
	Definir buscarContacto Como Caracter;
	Definir punteroContacto Como Entero;
	Definir i Como Entero;
	
	//Inicialización de variables
	contacto1 <- "";
	contacto2 <- "";
	contacto3 <- "";
	punteroContacto <- 1;
	control <- Verdadero;
	
	//MENU
	Escribir "Bienvenido al prototipo de aplicación para registro de contactos telefónicos";
	Mientras control = Verdadero Hacer
		Escribir "";
		Escribir "*** Menú de usuario ***";
		Escribir "1. Añadir contacto";
		Escribir "2. Buscar contacto";
		Escribir "3. Eliminar contacto";
		Escribir "4. Salir de la aplicación";
		Leer opcion;
		Segun opcion Hacer
			1: //Añadir contacto
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
							punteroContacto <- 4;
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
					De Otro Modo:
						Escribir "No puede registrar más de 3 contactos";
				FinSegun
			2: //Buscar contacto
				Escribir "Ingrese el nombre del contacto que desea buscar:";
				Leer buscarContacto;
				i <- Buscar(buscarContacto);
				Si buscarContacto = Subcadena(contacto1,0,i-1) Entonces
					Escribir "El contacto se encuentra en el dispositivo!!!";
					Escribir "Datos del contacto [nombre,teléfono,organización] = : ", contacto1;
				SiNo
					Si buscarContacto = Subcadena(contacto2,0,i-1) Entonces
						Escribir "El contacto se encuentra en el dispositivo!!!";
						Escribir "Datos del contacto [nombre,teléfono,organización] = : ", contacto2;
					SiNo
						Si buscarContacto = Subcadena(contacto3,0,i-1) Entonces
							Escribir "El contacto se encuentra en el dispositivo!!!";
							Escribir "Datos del contacto [nombre,teléfono,organización] = : ", contacto3;
						SiNo
							Escribir "El contacto no se encuentra en el dispositivo!";
						FinSi
					FinSi
				FinSi
			3: //Elimminar contacto
				Escribir "Ingrese el nombre del contacto que desea eliminar:";
				Leer buscarContacto;
				i <- Buscar(buscarContacto);
				Si buscarContacto = Subcadena(contacto1,0,i-1) Entonces
					contacto1 <- "";
					Escribir "El contacto ", buscarContacto, " ha sido eliminado del dispositivo";
				SiNo
					Si buscarContacto = Subcadena(contacto2,0,i-1) Entonces
						contacto2 <- "";
						Escribir "El contacto ", buscarContacto, " ha sido eliminado del dispositivo";
					SiNo
						Si buscarContacto = Subcadena(contacto3,0,i-1) Entonces
							contacto3 <- "";
							Escribir "El contacto ", buscarContacto, " ha sido eliminado del dispositivo";
						SiNo
							Escribir "El contacto no se puede eliminar, porque no se encuentra en el dispositivo!";
						FinSi
					FinSi
				FinSi
			4: //Salir de la aplicación
				control <- Falso;
				Escribir "Muchas gracias por usar el prototipo, vuelva pronto";
			De Otro Modo:
				Limpiar Pantalla;
				Escribir "Opción inválida, ingrese un número de 1 a 4";
		FinSegun
	FinMientras
FinProceso
