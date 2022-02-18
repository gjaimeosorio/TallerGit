//Alquiler de películas a los usuarios del barrio el Porvenir
Proceso Taller2Punto4
	//Definición de variables
	Definir nombreUsuario1 Como Caracter;
	Definir nombreUsuario2 Como Caracter;
	Definir nombreUsuario3 Como Caracter;
	Definir pelicula1 Como Caracter;
	Definir pelicula2 Como Caracter;
	Definir pelicula3 Como Caracter;
	Definir usuario Como Caracter;
	Definir peliculaAlquilar Como Caracter;
	Definir nuevoUsuario Como Caracter;
	Definir opcion Como Entero;
	Definir opcionNota Como Caracter;
	Definir nota Como Caracter;
	
	//La video tienda solo tiene 3 usuarios registrados
	nombreUsuario1 <- "Gabriel Osorio";
	nombreUsuario2 <- "Javier Olaya";
	nombreUsuario3 <- "Manuela Ortiz";
	
	//La video tienda solo tiene 3 películas disponibles
	pelicula1 <- "Avatar";
	pelicula2 <- "Avengers";
	pelicula3 <- "Forrest Gump";
	
	Escribir "Bienvenido a la video tienda el Porvenir, favor indicarme su nombre para registarar el alquiler de sus películas: ";
	Leer usuario;
	
	Limpiar Pantalla;
	
	//Si el usuario está regitrado
	Si usuario = nombreUsuario1 | usuario = nombreUsuario2 | usuario = nombreUsuario3 Entonces
		Escribir "*** Usuario registrado ***";
		Escribir "";
		Escribir "Elija una opción:";
		Escribir "1. Alquilar película";
		Escribir "2. Consultar películas disponibles";
		Escribir "3. Recibir película";
		leer opcion;
		Segun opcion Hacer
			1:
				Escribir "Qué película desea alquilar?";
				Leer peliculaAlquilar;
				Si peliculaAlquilar = pelicula1 | peliculaAlquilar = pelicula2 | peliculaAlquilar = pelicula3 Entonces
					Escribir "La película se encuentra disponible!";
					Escribir "La película ", peliculaAlquilar, " ha sido alquilada por ", usuario, "!";
				SiNo
					Escribir "La película ", peliculaAlquilar, " no se encuentra disponible!";
				FinSi
			2:
				Escribir "Películas disponibles:";
				Escribir pelicula1;
				Escribir pelicula2;
				Escribir pelicula3;
			3:
				Escribir "Película recibida!";
				Escribir "¿Desea realizar anotaciones sobre la película recibida? (S/N)";
				leer opcionNota;
				Si opcionNota = "S" Entonces
					Escribir "Ingresar nota sobre la película:";
					leer nota;
				SiNo
					Escribir "La película está en buenas condiciones";
				FinSi
			De Otro Modo:
				Escribir "Opción incorrecta";

		FinSegun
	SiNo
		//Si el usuario no está registrado, no puede hacer la reserva de la película
		Escribir "*** El usuario no está registrado ***";
		Escribir "*** Favor registrese a la Tienda el Porvenir para poder alquilar películas ***";
	FinSi
	
	Escribir "Muchas gracias por haber usado el software de alquiler de películas en la Tienda el Porvenir, felíz día!!!";
	
FinProceso


