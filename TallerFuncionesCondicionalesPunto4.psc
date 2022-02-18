//Punto 4 condicionales usando funciones, alquiler de pel�culas a los usuarios del barrio el Porvenir
SubProceso opcion <- Menu ()
	Definir opcion Como Entero;
	Escribir "*** Usuario registrado ***";
	Escribir "";
	Escribir "Elija una opci�n:";
	Escribir "1. Alquilar pel�cula";
	Escribir "2. Consultar pel�culas disponibles";
	Escribir "3. Recibir pel�cula";
	leer opcion;
FinSubProceso

SubProceso VerificarPelicula (p1, p2, p3)
	Definir peliculaAlquilar Como Caracter;
	Escribir "Qu� pel�cula desea alquilar?";
	Leer peliculaAlquilar;
	Si peliculaAlquilar = p1 | peliculaAlquilar = p2 | peliculaAlquilar = p3 Entonces
		Escribir "La pel�cula se encuentra disponible!";
		Escribir "La pel�cula ", peliculaAlquilar, " ha sido alquilada por ", usuario, "!";
	SiNo
		Escribir "La pel�cula ", peliculaAlquilar, " no se encuentra disponible!";
	FinSi
FinSubProceso

SubProceso ListarPeliculas ( p1, p2, p3 )
	Escribir "Pel�culas disponibles:";
	Escribir p1;
	Escribir p2;
	Escribir p3;
FinSubProceso

SubProceso OpcionNota ()
	Definir opc, nota Como Caracter;
	Escribir "Pel�cula recibida!";
	Escribir "�Desea realizar anotaciones sobre la pel�cula recibida? (S/N)";
	leer opc;
	Si opc = "S" | opc = "s" Entonces
		Escribir "Ingresar nota sobre la pel�cula:";
		leer nota;
	SiNo
		Escribir "La pel�cula est� en buenas condiciones";
	FinSi
FinSubProceso

Proceso TallerFuncionesCondicionalesPunto4
	//Definici�n de variables
	Definir nombreUsuario1, nombreUsuario2, nombreUsuario3 Como Caracter;
	Definir pelicula1, pelicula2, pelicula3 Como Caracter;
	Definir usuario, nuevoUsuario Como Caracter;
	Definir opcion Como Entero;
	
	//La video tienda solo tiene 3 usuarios registrados
	nombreUsuario1 <- "Gabriel Osorio";
	nombreUsuario2 <- "Javier Olaya";
	nombreUsuario3 <- "Manuela Ortiz";
	
	//La video tienda solo tiene 3 pel�culas disponibles
	pelicula1 <- "Avatar";
	pelicula2 <- "Avengers";
	pelicula3 <- "Forrest Gump";
	
	Escribir "Bienvenido a la video tienda el Porvenir, favor indicarme su nombre para registarar el alquiler de sus pel�culas: ";
	Leer usuario;
	
	Limpiar Pantalla;
	
	//Si el usuario est� regitrado
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
				Escribir "Opci�n incorrecta";

		FinSegun
	SiNo
		//Si el usuario no est� registrado, no puede hacer la reserva de la pel�cula
		Escribir "*** El usuario no est� registrado ***";
		Escribir "*** Favor registrese a la Tienda el Porvenir para poder alquilar pel�culas ***";
	FinSi
	
	Escribir "Muchas gracias por haber usado el software de alquiler de pel�culas en la Tienda el Porvenir, fel�z d�a!!!";
	
FinProceso


