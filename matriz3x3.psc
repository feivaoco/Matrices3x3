Algoritmo Matriz3x3
	definir i, j, N, op, num, sum  Como Entero;
	definir mtrA, mtrB, mtrC como real;
	N = 3;
	dimension mtrA[N,N];
	dimension mtrB[N,N];
	dimension mtrC[N,N];
	Repetir
		Escribir "    MENÚ MATRICES [3X3]";
		Escribir "1.- Llenar matrices manualmente";
		Escribir "2.- LLenar matrices con numeros al azar del 10 al 30"; 
		Escribir "3.- Imprimir Matriz A o B";
		Escribir "4.- Suma de las dos Matrices";
		Escribir "5.- Resta de las dos Matrices";
		Escribir "6.- Escalar Matriz A o B";
		Escribir "7.- Calcular determinante de la Matriz A o B";
		Escribir "8.- Salir";
		Leer op;
		Segun op
			1:
				//Leer numeros para llenar matrices 
				Escribir "Elige la Matriz";
				Escribir "1.- A";
				Escribir "2.- B";
				leer op;
				Si op = 1
					para i = 0 Hasta  N-1 Con paso 1
						para j = 0 hasta n-1 con paso 1
							Escribir "Matriz A";
							Escribir "Introduce el numero para: ";
							Escribir "Vector ", "[",i,",",j,"]";
							Leer num;
							mtrA[i,j] = num;
						finpara
					finpara
					Escribir "Se llenó la Matriz A";
				SiNo
					para i = 0 Hasta  N-1 Con paso 1
						para j = 0 hasta n-1 con paso 1
							Escribir "Matriz B";
							Escribir "Introduce el numero para: ";
							Escribir "Vector ", "[",i,",",j,"]";
							Leer num;
							mtrB[i,j] = num;
						finpara
					finpara
					Escribir "Se llenó la Matriz A";
				finsi	
			2:
				//Usar num como numero al azar para llenar Matriz [A] y [B]
				Escribir "Elige la Matriz";
				Escribir "1.- A";
				Escribir "2.- B";
				leer op;
				Si op = 1
					para i = 0 Hasta  N-1 Con paso 1
						para j = 0 hasta n-1 con paso 1
							num = azar(31)+10;
							mtrA[i,j] = num;
						finpara
					finpara
					Escribir "Se llenó la Matriz A";
				SiNo
					para i = 0 Hasta  N-1 Con paso 1
						para j = 0 hasta n-1 con paso 1
							num = azar(31)+10;
							mtrB[i,j] = num;
						finpara
					finpara
					Escribir "Se llenó la Matriz B";
				finsi	
			3:	
				//Imprimir [Matriz A o B]				
				Escribir "Elige la Matriz";
				Escribir "1.- A";
				Escribir "2.- B";
				leer op;
				Si op = 1
					Escribir "Matriz A";
					para i = 0 hasta N-1 con paso 1
						Escribir "[",mtrA[i,0],"]","[",mtrA[i,1],"]","[",mtrA[i,2],"]";
					FinPara
				sino
					Escribir "Matriz B";
					para i = 0 hasta N-1 con paso 1
						Escribir "[",mtrB[i,0],"]","[",mtrB[i,1],"]","[",mtrB[i,2],"]";
					FinPara
				finsi	
				
			4:
				//Sumar Matriz A + B 
				Escribir "La suma de:";
				Escribir "Matriz A";
				para i = 0 hasta N-1 con paso 1
					Escribir "[",mtrA[i,0],"]","[",mtrA[i,1],"]","[",mtrA[i,2],"]";
				FinPara
				Escribir "      +";
				Escribir "Matriz B";
				para i = 0 hasta N-1 con paso 1
					Escribir "[",mtrB[i,0],"]","[",mtrB[i,1],"]","[",mtrB[i,2],"]";
				FinPara
				Escribir "      =";
				para i = 0 Hasta  N-1 Con paso 1
					para j = 0 hasta n-1 con paso 1
						mtrC[i,j] = mtrA[i,j]+mtrB[i,j] ;
					finpara
				finpara
				Escribir "Matriz C";
				para i = 0 hasta N-1 con paso 1
					Escribir "[",mtrC[i,0],"]","[",mtrC[i,1],"]","[",mtrC[i,2],"]";
				FinPara
				
			5:
				//Restar Matriz A - B o B - A
				Escribir "Elige la forma de la resta";
				Escribir "1.- A - B";
				Escribir "2.- B - A";
				Leer op;
				Escribir "La resta de:";
				si op = 1
					para i = 0 Hasta  N-1 Con paso 1
						para j = 0 hasta n-1 con paso 1
						mtrC[i,j] = mtrA[i,j]-mtrB[i,j] ;
						finpara
					finpara
					Escribir "Matriz A";
					para i = 0 hasta N-1 con paso 1
						Escribir "[",mtrA[i,0],"]","[",mtrA[i,1],"]","[",mtrA[i,2],"]";
					FinPara
					Escribir "      -";
					Escribir "Matriz B";
					para i = 0 hasta N-1 con paso 1
						Escribir "[",mtrB[i,0],"]","[",mtrB[i,1],"]","[",mtrB[i,2],"]";
					FinPara
					Escribir "      =";
				sino	
					Escribir "Matriz B";
					para i = 0 hasta N-1 con paso 1
						Escribir "[",mtrB[i,0],"]","[",mtrB[i,1],"]","[",mtrB[i,2],"]";
					FinPara
					Escribir "      -";
					Escribir "Matriz A";
					para i = 0 hasta N-1 con paso 1
						Escribir "[",mtrA[i,0],"]","[",mtrA[i,1],"]","[",mtrA[i,2],"]";
					FinPara
					Escribir "      =";
					para i = 0 Hasta  N-1 Con paso 1
						para j = 0 hasta n-1 con paso 1
							mtrC[i,j] = mtrB[i,j]-mtrA[i,j] ;
						finpara
					finpara
				finsi
				Escribir "Matriz C";
				para i = 0 hasta N-1 con paso 1
					Escribir "[",mtrC[i,0],"]","[",mtrC[i,1],"]","[",mtrC[i,2],"]";
				FinPara
			6:
				//Escalar matriz A o B
				Escribir "Elige la Matriz a escalar";
				Escribir "1.- A";
				escribir "2.- B";
				leer op;
				si op = 1
					Escribir "Matriz A";
					para i = 0 hasta N-1 con paso 1
						Escribir "[",mtrA[i,0],"]","[",mtrA[i,1],"]","[",mtrA[i,2],"]";
					FinPara
					Escribir "Introduce el numero con el cual escalar";
					Leer num;
					para i = 0 Hasta  N-1 Con paso 1
						para j = 0 hasta n-1 con paso 1
							mtrA[i,j] = mtrA[i,j]*num;
						finpara
					finpara
					Escribir "El resultado del escalado es:";
					para i = 0 hasta N-1 con paso 1
						Escribir "[",mtrA[i,0],"]","[",mtrA[i,1],"]","[",mtrA[i,2],"]";
					FinPara
					
				sino	
					Escribir "Matriz B";
					para i = 0 hasta N-1 con paso 1
						Escribir "[",mtrB[i,0],"]","[",mtrB[i,1],"]","[",mtrB[i,2],"]";
					FinPara
					Escribir "Introduce el numero con el cual escalar";
					Leer num;
					para i = 0 Hasta  N-1 Con paso 1
						para j = 0 hasta n-1 con paso 1
							mtrB[i,j] = mtrB[i,j]*num;
						finpara
					finpara
					Escribir "El resultado del escalado es:";
					para i = 0 hasta N-1 con paso 1
						Escribir "[",mtrB[i,0],"]","[",mtrB[i,1],"]","[",mtrB[i,2],"]";
					FinPara
				FinSi
				
			7:
				//calcular [A] o [B] 
				escribir "Elige el determinante a calcular";
				Escribir "1.- [A]";
				escribir "2.- [B]";
				leer op;
				si op = 1
					Escribir "Matriz A";
					para i = 0 hasta N-1 con paso 1
						Escribir "[",mtrA[i,0],"]","[",mtrA[i,1],"]","[",mtrA[i,2],"]";
					FinPara
					mtrC[0,0] = mtrA[0,0]*((mtrA[1,1]*mtrA[2,2])-(mtrA[2,1]*mtrA[1,2]));
					mtrC[1,0] =  -mtrA[0,1]*((mtrA[1,0]*mtrA[2,2])-(mtrA[2,0]*mtrA[1,2]));
					mtrC[2,0] = mtrA[0,2]*((mtrA[1,0]*mtrA[1,1])-(mtrA[2,0]*mtrA[2,1]));
					sum = mtrC[0,0] + mtrC[1,0] + mtrC[2,0] ;
					Escribir "";
					Escribir "[A] = ", sum;
				sino	
					Escribir "Matriz B";
					para i = 0 hasta N-1 con paso 1
						Escribir "[",mtrB[i,0],"]","[",mtrB[i,1],"]","[",mtrB[i,2],"]";
					FinPara
					mtrC[0,0] = mtrB[0,0]*((mtrB[1,1]*mtrB[2,2])-(mtrB[2,1]*mtrB[1,2]));
					mtrC[1,0] =  -mtrB[0,1]*((mtrB[1,0]*mtrB[2,2])-(mtrB[2,0]*mtrB[1,2]));
					mtrC[2,0] = mtrB[0,2]*((mtrB[1,0]*mtrB[1,1])-(mtrB[2,0]*mtrB[2,1]));
					sum = mtrC[0,0] + mtrC[1,0] + mtrC[2,0] ;
					Escribir "";
					Escribir "[B] = ", sum;
				FinSi
		finsegun	
		Escribir "";
		Escribir "Pulsa Enter para continuar";
		Esperar Tecla;
		Limpiar Pantalla;
	hasta que op = 8
FinAlgoritmo
