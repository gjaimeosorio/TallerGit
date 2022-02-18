//Alquiler de pel�culas a los usuarios del barrio el Porvenir
Proceso Taller2Punto4
	//Definici�n de variables
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
	
	//La video tienda solo tiene 3 pel�culas disponibles
	pelicula1 <- "Avatar";
	pelicula2 <- "Avengers";
	pelicula3 <- "Forrest Gump";
	
	Escribir "Bienvenido a la video tienda el Porvenir, favor indicarme su nombre para registarar el alquiler de sus pel�culas: ";
	Leer usuario;
	
	Limpiar Pantalla;
	
	//Si el usuario est� regitrado
	Si usuario = nombreUsuario1 | usuario = nombreUsuario2 | usuario = nombreUsuario3 Entonces
		Escribir "*** Usuario registrado ***";
		Escribir "";
		Escribir "Elija una opci�n:";
		Escribir "1. Alquilar pel�cula";
		Escribir "2. Consultar pel�culas disponibles";
		Escribir "3. Recibir pel�cula";
		leer opcion;
		Segun opcion Hacer
			1:
				Escribir "Qu� pel�cula desea alquilar?";
				Leer peliculaAlquilar;
				Si peliculaAlquilar = pelicula1 | peliculaAlquilar = pelicula2 | peliculaAlquilar = pelicula3 Entonces
					Escribir "La pel�cula se encuentra disponible!";
					Escribir "La pel�cula ", peliculaAlquilar, " ha sido alquilada por ", usuario, "!";
				SiNo
					Escribir "La pel�cula ", peliculaAlquilar, " no se encuentra disponible!";
				FinSi
			2:
				Escribir "Pel�culas disponibles:";
				Escribir pelicula1;
				Escribir pelicula2;
				Escribir pelicula3;
			3:
				Escribir "Pel�cula recibida!";
				Escribir "�Desea realizar anotaciones sobre la pel�cula recibida? (S/N)";
				leer opcionNota;
				Si opcionNota = "S" Entonces
					Escribir "Ingresar nota sobre la pel�cula:";
					leer nota;
				SiNo
					Escribir "La pel�cula est� en buenas condiciones";
				FinSi
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


