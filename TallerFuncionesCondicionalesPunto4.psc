//Punto 4 condicionales usando funciones, alquiler de películas a los usuarios del barrio el Porvenir
SubProceso opcion <- Menu ()
	Definir opcion Como Entero;
	Escribir "*** Usuario registrado ***";
	Escribir "";
	Escribir "Elija una opción:";
	Escribir "1. Alquilar película";
	Escribir "2. Consultar películas disponibles";
	Escribir "3. Recibir película";
	leer opcion;
FinSubProceso

SubProceso VerificarPelicula (p1, p2, p3)
	Definir peliculaAlquilar Como Caracter;
	Escribir "Qué película desea alquilar?";
	Leer peliculaAlquilar;
	Si peliculaAlquilar = p1 | peliculaAlquilar = p2 | peliculaAlquilar = p3 Entonces
		Escribir "La película se encuentra disponible!";
		Escribir "La película ", peliculaAlquilar, " ha sido alquilada por ", usuario, "!";
	SiNo
		Escribir "La película ", peliculaAlquilar, " no se encuentra disponible!";
	FinSi
FinSubProceso

SubProceso ListarPeliculas ( p1, p2, p3 )
	Escribir "Películas disponibles:";
	Escribir p1;
	Escribir p2;
	Escribir p3;
FinSubProceso

SubProceso OpcionNota ()
	Definir opc, nota Como Caracter;
	Escribir "Película recibida!";
	Escribir "¿Desea realizar anotaciones sobre la película recibida? (S/N)";
	leer opc;
	Si opc = "S" | opc = "s" Entonces
		Escribir "Ingresar nota sobre la película:";
		leer nota;
	SiNo
		Escribir "La película está en buenas condiciones";
	FinSi
FinSubProceso

Proceso TallerFuncionesCondicionalesPunto4
	//Definición de variables
	Definir nombreUsuario1, nombreUsuario2, nombreUsuario3 Como Caracter;
	Definir pelicula1, pelicula2, pelicula3 Como Caracter;
	Definir usuario, nuevoUsuario Como Caracter;
	Definir opcion Como Entero;
	
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
		opcion <- Menu();
		Segun opcion Hacer
			1:
				VerificarPelicula(pelicula1, pelicula2, pelicula3);
			2:
				ListarPeliculas(pelicula1, pelicula2, pelicula3);
			3:
				OpcionNota();
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


