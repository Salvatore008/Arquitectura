# Cach� #
### Acceso por Correspondencia Directa, Asociativa por Conjuntos y Completamente Asociativa ###
	
	Use tres procedimientos para simular las tres politicas de correspondencia de una memoria cache, 
	estos procedimientos son: correspDirecta, correspAsocConjuntos y correspAsociativa

### correspDirecta: ### 
	Este procedimiento implementa la pol�tica de correspondencia directa. 
	Recibe como entrada una direcci�n de archivo, un vector de bloques bloques y una referencia a un objeto ofstream llamado log para escribir el registro de resultados.

	Crea un vector llamado cache con 4 elementos, inicializados a -1. Este vector representa la cach�.
	Lee las direcciones de memoria del archivo direccion y las procesa una por una.
	Calcula el n�mero de bloque utilizando el operador de m�dulo (%).
	Comprueba si la direcci�n de bloque est� en la cach�. Si est� presente, es un acierto. Si no est� presente, es un fallo.
	Actualiza la cach� con la direcci�n de bloque actual.
	Imprime y registra los resultados del acceso, el n�mero de bloque y el contenido del bloque.
	
### correspAsocConjuntos: ### 
	Este procedimiento implementa la pol�tica de correspondencia asociativa por conjuntos. Recibe los mismos par�metros que correspDirecta.
	Crea una matriz bidimensional llamada cache con 2 conjuntos y 2 bloques por conjunto, inicializados a -1. Esta matriz representa la cach�.
	Lee las direcciones de memoria del archivo direccion y las procesa una por una.
	Calcula el n�mero de conjunto utilizando el operador de m�dulo (%).
	Busca la direcci�n de bloque en el conjunto correspondiente de la cach�. Si est� presente, es un acierto. Si no est� presente, es un fallo.
	Si es un fallo, busca un espacio disponible en el conjunto para almacenar la direcci�n de bloque actual. Si no hay espacio disponible, reemplaza un bloque aleatoriamente.
	Actualiza la cach� con la direcci�n de bloque actual.
	Imprime y registra los resultados del acceso, el n�mero de conjunto, el n�mero de bloque y el contenido del bloque.
	
### correspAsociativa: ### 
	Este procedimiento implementa la pol�tica de correspondencia completamente asociativa. Recibe los mismos par�metros que correspDirecta.
	Crea un vector llamado cache con 4 bloques, inicializados a -1. Este vector representa la cach�.
	Lee las direcciones de memoria del archivo direccion y las procesa una por una.
	Busca la direcci�n de bloque en la cach�. Si est� presente, es un acierto. Si no est� presente, es un fallo.
	Si es un fallo, busca un espacio disponible en la cach� para almacenar la direcci�n de bloque actual. Si no hay espacio disponible, reemplaza un bloque aleatoriamente.
	Actualiza la cach� con la direcci�n de bloque actual.
	Imprime y registra los resultados del acceso, el n�mero de bloque y el contenido del bloque.
	
Despu�s de definir estos procedimientos, el c�digo principal se encuentra en la funci�n main. Aqu� se realiza lo siguiente:
Se define el nombre del archivo de direcciones y un vector de bloques.
Se crea un objeto ofstream llamado log para escribir el registro de resultados, y se abre en modo de adjuntar (ios::app).
Se llama a cada uno de los procedimientos correspDirecta, correspAsocConjuntos y correspAsociativa, pasando los par�metros correspondientes.
Se cierra el archivo log y termina el programa.