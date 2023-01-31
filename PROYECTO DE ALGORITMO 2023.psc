// funciones o SubAlgoritmo  del proyecto
// SubAlgoritmo menus del proyecto
Funcion opcion=presentarMenu(titulo,menu,lim)
	Definir opcion Como Caracter
	Definir pos Como Entero
	Borrar Pantalla
	Escribir titulo
	Para pos=0 Hasta lim-1 Con Paso 1 Hacer
		Escribir menu[pos]
	Fin Para
	Escribir "       Elija opción[1..",lim,"] "  Sin Saltar
	leer opcion
FinFuncion
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
// EJERCICIO 1 NUMEROS
// SubAlgoritmo mayorDosNumeros()
// esta funcion pide dos numeros, los compara y presenta el mayor de los dos
Funcion mayorDosNumeros()
	Definir num1,num2 Como Entero
	Escribir "Ingrese numero 1"
	leer num1
	Escribir "Ingrese numero 2"
	leer num2
	Si num1 > num2 Entonces
		Escribir num1," Es mayor que ",num2
	SiNo
		Si num1 < num2 Entonces
			Escribir num1," Es menor que ",num2
		SiNo
			Escribir num1," Es igual a ",num2
		Fin Si
	Fin Si
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

// EJERCICIO 2 NUMEROS
//SubAlgoritmo DividirPorRestas()
//esta funcion pide dos numeros y los divide y muestra el Proceso de la operación
Funcion DividirPorRestas()
	Definir dividendo,divisor,resta,cont Como Real
	Escribir "Ingrese un número (dividendo)"
	leer dividendo
	Escribir "Ingrese un número (divisor)"
	leer divisor
	cont=0
	resta=dividendo
	Mientras resta-divisor>=0 Hacer
		resta=resta-divisor
		Escribir (resta+divisor),"-",divisor,"=",resta
		cont=cont+1
	Fin Mientras
	Escribir "LA DIVISIÓN ENTRE: ",dividendo,"/", divisor,"=", cont
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

// EJERCICIO 3 NUMEROS
// SubAlgoritmo MultiplicarPorSumas()
//esta funcion pide dos numeros y los multiplica y muestra el Proceso de la operacion
Funcion MultiplicarPorSumas()
	Definir num1,num2,suma,x Como Real
	Escribir "Ingrese un número"
	leer num1
	Escribir "Ingrese un número"
	leer num2
	suma=0
	Para x=1 Hasta num2 Con Paso 1 Hacer
		suma=suma+num1
		Escribir suma-num1 "+",num1, "=", suma
	Fin Para
	Escribir "LA MULTIPLICACIÓN DE " num1 "*",num2, "=", suma
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

// EJERCICIO 4 NUMEROS
//SubAlgoritmo suma_pares_producto_multiplo_5() 
//esta funcion pide inggresar un serie de numeros y se muestra la salida, la suma de los numeros pares, y la multiplicacion de los multiplos de 5 
Funcion suma_pares_producto_multiplo_5() 
	definir num,secu,suma,multi,x Como Real
	suma=0
	multi=1
	Escribir "Ingrese la cantidad de numeros que tendrá la secuencia"
	Leer secu
	num=0
	Para x<-1 Hasta secu Con Paso 1 Hacer
		escribir "Ingrese numero"
		leer num
		Si num mod 2=0 Entonces
			suma=suma+num
		Fin Si
		Si num mod 5=0 Entonces
			multi=multi*num
		Fin Si
	Fin Para
	escribir "La suma de los pares es: ", suma
	escribir "El producto de la suma de los multiplos de 5 es:  ", multi
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

// EJERCICIO 5 NUMEROS
//SubAlgoritmo cantidad_digitos_secuencia()
//esta funcion pide una serie de nueros y muestra la cantidad de diigitos de la serie inggresada
Funcion  cantidad_digitos_secuencia()
	definir num,cont Como Entero
	cont=0
	Escribir "secuencia de numeros"
	leer num
	Repetir
		Mientras num>=1 Hacer
			num=trunc(num/10)
			cont=cont+1
		Fin Mientras
		Escribir "secuencia de numeros"
		leer num
	Hasta Que num=0
	Escribir "El numero tiene ",cont, " digitos"
	Escribir " "
	Escribir "<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

// EJERCICIO 6 NUMEROS
//SubAlgoritmo Descuento_producto()
// datos de entrada: num=2
// proceso: 
// PrecioTraje1 = 120   descuento = precioTraje1 * 0.10 = 12    iva = (120 - 12) * 0.12  pago = precioTraje1 - descuento + iva = $120,96
// PrecioTraje2 = 50    descuento = precioTraje1 * 0.05 = 2.50  iva = (50 - 12) * 0.12  pago = precioTraje2 - descuento + iva = $53,20
// salida: se muesta el valor del traje, el descuento, el valor del iva y el total a pagar de cada traje.
Funcion  Descuento_producto()
	Definir precio,cantidad,total,cont,num,i  Como Entero
	Definir IVA,vtotal,descuento Como Real
	total=0;vtotal=0;descuento=0;cont=0;IVA=0.12;cantidad=0;i=0;IVA=0.12;i=0
	Escribir "Ingrese la cantidad de trajes a llevar"
	leer num
	Para i<-1 Hasta num Con Paso 1 Hacer
		cont=cont+1
		Escribir "Ingrese el precio del traje " cont
		leer precio
		Si precio>=100 Entonces
			descuento= precio * 0.10
			IVA=(precio-descuento)*0.12
			vtotal=precio-descuento+IVA
			Escribir "El valor del traje ", cont, " es: $", precio
			Escribir "El descuento del traje ", cont, " es: $", descuento
			Escribir "El valor del traje ", cont, " con IVA es: $", IVA
			Escribir "El valor total a pagar del traje ", cont, " es: $", vtotal
			Escribir "------------------------------------------------------------ "
			Escribir " "
		Fin Si
		Si precio<100 Entonces
			descuento=precio * 0.05	
			IVA=(precio-descuento)*0.12
			vtotal=precio-descuento+IVA
			Escribir "El valor del traje ", cont, "es: $", precio
			Escribir "El descuento del traje ", cont, " es: $", descuento
			Escribir "El valor del traje ", cont, " con IVA es: $", IVA
			Escribir "El valor total a pagar del traje ", cont, " es: $", vtotal
			Escribir "------------------------------------------------------------ "
			Escribir " "
		Fin Si
	Fin Para
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 7 NUMEROS
//SubAlgoritmo indicar_si_segundo_numero_es_mayor()
//ENTRADA: datos ingresados num1,num2,num3
//							12 - 34 - 19
//PROCESO: se analiza si el segundo numero (34), es mayor a los demas valores ingresados
//				12 es menor que (34)
//				(34) es mayor que 19
// el segundo valor ingresado es mayor que el resto de valores
//SALIDA: se muesta un mensaje diciendo que el 34 es mayor; caso contrario dira que el segundo valor
//ingresado es menor al resto de valores
Funcion  indicar_si_segundo_numero_es_mayor()
	Definir num1,num2,num3 como entero
	Escribir "Ingrese primer número " Sin Saltar
	leer num1
	Escribir "Ingrese segundo número " Sin Saltar
	leer num2
	Escribir "Ingrese tercer número " Sin Saltar
	leer num3
	Si num1<num2 y num3<num2 Entonces
		Escribir "El segundo numero ingresado: " "(",num2,")" "," " es mayor"
	SiNo
		Escribir "El segundo numero ingresado: " "(",num2,")" "," " es menor"
	Fin Si
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 8 NUMEROS
//SubAlgoritmo promedio_de_secuencia_de_numeros()
//ENTRADA: se ingresa un secuencia de numero pedidos por el usuario hasta que se inquese un numero negativo...
//			10, 9, 8, -5
//PROCESO: se suman los valores ingresados a ecepcion del valo negativo, luego se saca el promedio de los mismos...
//			10, 9, 8, -5   = 27
//			27 / 3 = 9
//SALIDA:se presenta el promedio de la secuencia ingresada por el usuario...
//	el promedio es: 9...
Funcion  promedio_de_secuencia_de_numeros()
	Definir cont,suma,num,i Como entero
	Definir promedio Como real
	promedio=0
	cont=0
	suma=1
	Escribir "Ingrese la secuencia de numeros " 
	Escribir "  " Sin Saltar 
	leer num
	Mientras num>=0 Hacer 
		Escribir "  " Sin Saltar 
		leer num
		Si num>1 Entonces
			suma=suma+num
			cont=cont+1	
		Fin Si	
	Fin Mientras
	promedio=suma/cont
	si cont>0 Entonces
		Escribir "El prmedio de la secuencia es: " suma/cont
	FinSi
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 9 NUMEROS
//SubAlgoritmo Numeros_amigos()
//ENTRADA: el usuario ingresan dos números...
//			6, 25 
//PROCESO: se sacan los divisores de los dos numeros y se suman; si la suma de los divisores son iguales,
//los numeros ingresados son amigos; caso con trario no lo son...
//			6 = 1 - 2 - 3      (1+2+3) = 6 
//			25 = 1 - 5           (1+5) = 6
//SALIDA:se presenta un mensaje diciendo si son amigos o no, los numeros ingresados...
//	los numeros 6 y 25 son amigos...
Funcion  Numeros_amigos()
	Definir num1,num2,cont,suma Como Entero
	Escribir "Ingresa 2 números"
	leer num1,num2
	cont = 1
	suma = 0
	Mientras cont <> num1 Hacer
		si num1 mod cont = 0 Entonces
			suma = suma + cont
		FinSi
		cont = cont + 1
	FinMientras
	si suma < num2 Entonces
		Escribir "Los números ",num1, " y ", num2, " son amigos"
	Sino
		Escribir "Los números ",num1, " y ", num2, " no son amigos"
	FinSi
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 10 NUMEROS
//SubAlgoritmo Primos_gemelos()
//ENTRADA: el usuario ingresa dos numeros
//			num1 = 5		num2 = 7
//PROCESO: se determina si los valores ingresados son numeros prrimos o no
//			num1 = 5 (es un numero primo)		num2 = 7 (es un numero primo)
//ambos valores ingresados son nummeros primos
//SALIDA: se muestra un mensaje diciendo si los numeros son primos gemelos, caso contrario, no son primos gemelos
Funcion  Primos_gemelos()
	Definir num1,num2,cont1,cont2,i1,i2 Como Entero
	Escribir "Ingrese los valores"
	leer num1,num2
	cont1=0
	cont2=0
	Para i1<-1 Hasta num1 Con Paso 1 Hacer
		Si num1%i1=0 Entonces
			cont1=cont1+1
		Fin Si
	Fin Para
	Para i2<-1 Hasta num2 Con Paso 1 Hacer
		Si num2%i2=0 Entonces
			cont2=cont2+1
		Fin Si
	Fin Para
	Si cont1=2 Entonces
		Escribir num1 , " y " , num2, " son primos gemelos"
	SiNo
		Escribir num1 , " y " , num2, " no son primos gemelos"
	Fin Si
	Escribir " "
	Escribir " <<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//EJERCICIO 1 CADENA
//SubAlgoritmo Nombre_por_caracter()
//ENTRADA: se ingresa un nombre
// 			nombre = ALEXANDER
//PROCESO: se procede a Definir el limite de caracteres de la palabra
//		A  L  E  X  A  N  D  E  R 
//		1  2  3  4  5  6  7  8  9
//SALIDA: se escribe el nombre ingresado, caracter por caracter
// 	A
//	L
//	...
//	R
Funcion  Nombre_por_caracter()
	Definir nombre,letras,cadena Como Caracter
	Definir tamaño,i,j Como Entero
	Escribir "Ingrese un nombre"
	leer nombre
	tamaño =Longitud(nombre)
	Dimension letras[tamaño]		//Almacena las letras 
	Para i<-0 Hasta tamaño-1 Con Paso 1 Hacer
		letras[i] = Subcadena(nombre,i,i)
	Fin Para
	//Escribe las letras almacenadas en el Proceso anterior
	Para j<-0 Hasta tamaño-1 Con Paso 1 Hacer
		Escribir  letras[j]
	Fin Para
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 2 CADENA
//SubAlgoritmo Primero_medio_ultimo_caracter_frase()
//ENTRADA: El usuario ingresa una frase (hola que tal)
//PROCESO: el algoritmo se encarga de contar cuantos caracteres hai y lo almacena en la variable (cont) = 12
//ademas determina la longitud de la frase y la almacena en la variable (longitud) = 11
//SALIDA: muesta un mensaje con el (primer caracter: h   -   medio caracter = u    -   ultimo caracter = l)
Funcion Primero_medio_ultimo_caracter_frase()
	Definir frase,primer,medio,ultimo Como cadena
	Definir cont Como Entero
	Escribir "Ingrese frase"
	leer frase					//el usuario ingresa una frase:(hola que tal) el contador inicia desde 1
	cont=longitud (frase)		//se guarda el numero 12
	//		contador:	h  o  l  a  _  q  u  e  _  t   a  l 	longitud:	h  o  l  a  _  q  u  e  _  t   a   l 
	//					1  2  3  4  5  6  7  8  9  10 11 12					0  1  2  3  4  5  6  7  8  9  10  11
	primer=subcadena(frase,0,0)	//las posiciones inician desde cero (0)
	Escribir "El primer caracter de la frase es: ", primer
	medio=Subcadena(frase,cont/2,cont/2)
	Escribir "El caracter del medio de la frase es: " medio
	ultimo=subcadena(frase,cont-1,cont-1)
	Escribir "El último caracter de la frase es: ", ultimo
	Escribir " "
	Escribir "<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 3 CADENA
//SubAlgoritmo Nombres_iguales()
//ENTRADA: el usuario ingresa dos nombres 
//	nombre1 = alexis		nombre2 = alexis
//PROCESO: el Algoritmo define si ambos nombres ingresados son iguales o no...
//	nombre1 = nombre2		alexis = alexis
//SALIDA: muesta un mensaje de pantalla diciendo si son o no iguales los nombres ingresados.
Funcion Nombres_iguales()
	Definir nombre1,nombre2 como cadena
	Escribir "Escribe un nombre"
	leer nombre1
	Escribir "Escribe un nombre"
	leer nombre2
	Si nombre1=nombre2 Entonces
		Escribir "Los nombres ingresados ","(",nombre1,")" " y " "(",nombre2,")"," son iguales"
	SiNo
		Escribir "Los nombres ingresados ","(",nombre1,")" " y " "(",nombre2,")"," no son iguales"
	Fin Si
	Escribir " "
	Escribir "<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 4 CADENA
//SubAlgoritmo frase_mayor_longitud()
//ENTRADA: el susuario ingresa dos faces al sistema...
//PROCESO: el sistema se encarga de ver cual es la longitud de las dos frases...
//	frase1 = 	h o l a   _   q u e   _    t  a  l      longitud = 12 caracteres
//				1 2 3 4   5   6 7 8   9   10 11 12
//	frase2 = 	h o l a   _   q u e						longitud = 8  caracteres
//				1 2 3 4   5   6 7 8
//SALIDA: mustra un mensaje diciendo que frase tiene la mayor longitud de caracteres...
Funcion  frase_mayor_longitud()
	definir frase1,frase2 como cadena
	definir cont1,cont2 Como Entero
	Escribir "Ingrese una frase"
	leer frase1
	cont1=Longitud(frase1)
	Escribir "Ingrese una frase"
	leer frase2
	cont2=Longitud(frase2)	
	Si cont1>cont2 Entonces
		Escribir"La frase con mayor longitud es: " "(",frase1,")" " con " "(", cont1,")" " caracteres."
	Fin Si
	Si cont1<cont2 Entonces
		Escribir"La frase con mayor longitud es: " "(",frase2,")" " con " "(", cont2,")" " caracteres."
	Fin Si
	Si cont1=cont2 Entonces
		Escribir "Ambas frases tienen la misma longitud"
	Fin Si
	Escribir " "
	Escribir "<<<< GRACIAS POR USASR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 5 DE CADENA
//SubAlgoritmo signos_de_puntuacion()
//Indicar cuantas , , ; : hay en una cadena
//Entrada: Ingresar una frase
// frase= "Hola, que tal; como te va; Bien: y tu, como estas."
//Proceso: con una subcadena contar el numero de , . ; : que existan en la frase
// subcadena(frase,pos,pos)="," / subcadena(frase,pos,pos)="." 
// subcadena(frase,pos,pos)=";" / subcadena(frase,pos,pos)=":"
//Salida: mensaje que presente la cantidad de ,.;: que tenga la frase
// ,=3  .=1  ;=1 :1 
Funcion signos_de_puntuacion()
	Definir conta1,conta2, conta3, conta4,pos Como Entero;
	Definir frase, car como Texto;
	Definir n Como Entero;
	Escribir "Ingrese frase :";
	Leer frase;
	conta1=0;  
	conta2=0;  
	conta3=0;  
	conta4=0;  
	n=Longitud(frase);
	Para pos=0 hasta n-1 con paso  1 Hacer
		car=subcadena(frase,pos,pos);
		Si car="," Entonces
			conta1=conta1+1;
		FinSi
		Si car="." Entonces
			conta2=conta2+1;
		FinSi
		Si car=";" Entonces
		    conta3=conta3+1;
	    FinSi	
		Si car=":" Entonces
			conta4=conta4+1;
		FinSi
	FinPara
	Escribir "*** RESULTADO ***";
	Escribir ",=",conta1;
    Escribir ".=",conta2;
    Escribir ";=",conta3;
    Escribir ":=",conta4;	
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 6 DE CADENA
//SubAlgoritmo vocales_consonantes_y_digitos()
//Dado una cadena indicar cuantas vocales, consonantes y digitos hay
//ENTRADA: Ingrese una frase
//    frase=Juan tiene 20 dolares
//PROCESO: contar las vocales, consonantes y digitos
// vocales=8   consonantes=11    digitos=2
//SALIDA: mensaje que indique la cantidad de vocales, consonantes y digitos
// mensaje=  la frase tiene 8 vocales, 11 consonantes y 2 digitos.
Funcion vocales_consonantes_y_digitos()
	Definir frase Como Caracter
	Definir n,c,v,d,pos Como Entero
	Escribir "Ingrese una frase"
	leer frase
	n= Longitud(frase)
	pos=1
	v=0
	c=0
	d=0
	Mientras pos <= n Hacer
		Segun Subcadena(frase,pos,pos) Hacer
			"a"o"A":
				v=v+1
			"e"o"E":
				v=v+1
			"i"o"I":
				v=v+1	
			"o"o"O":
				v=v+1
			"u"o"U":
				v=v+1
			De Otro Modo:
				c=c+1
		Fin Segun
		pos=pos+1
		si Subcadena(frase,pos,pos) >= "0" & Subcadena(frase,pos,pos) <= "9" Entonces
			d=d+1
		FinSi
	Fin Mientras
	Escribir "La frase " ,"(" ,frase, ")", " tiene " ,v, " vocales, ",c, " consonates y " ,d, " digitos." 
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 7 DE CADENA
//SubAlgoritmo Palabras_en_una_frase()
//Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
//ENTRADA: pedir al usuario que ingrese una frase
// frase= hola  que tal
//PROCESO: contar cuantas palabras tiene la frase asumiendo que tiene 1 o mas espacios
//  hola   que  tal= tiene 3 palabras sin importar el espacio
//SALIDA:presentar un mensaje que indique cuantas palabras tiene la frase
//   la frase (Hola que tal) tiene 3 palabras
Funcion Palabras_en_una_frase()
	Definir frase Como Caracter
	Definir posicion,cont Como Entero
	cont<-0
	posicion<-0
	Escribir Sin Saltar "Escribe una frase:"
	Leer frase
	Mientras Subcadena(frase,posicion,posicion)=" " Hacer
		posicion<-posicion+1
	FinMientras
	Para posicion<-posicion hasta Longitud(frase)-1 Hacer
		Si Subcadena(frase,posicion,posicion)=" " Entonces
			cont<-cont+1
			Mientras Subcadena(frase,posicion,posicion)=" " Y posicion<=Longitud(frase) Hacer
				posicion<-posicion+1
			FinMientras
		FinSi
	FinPara
	Si subcadena(frase,Longitud(frase)-1,Longitud(frase)-1)<>" " Entonces
		cont<-cont+1
	Fin Si
	Escribir "La frase tiene ",cont," palabras."
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 8 DE CADENA
//SubAlgoritmo suma_numeros_cedula()
//ENTRADA: Pedir al usuario su numero de cedula
//     cedula= 0914192182
//PROCESO: Sumar los numeros de la cedula
//  cedula="0914192182"= 37   
//SALIDA: mensaje presentando el resultado de la suma
// la suma de los digitos de su cedula es: 37
Funcion suma_numeros_cedula()
	Definir cdl, suma Como Entero
	Escribir "Escriba el numero de su cedula"
	Leer cdl
	suma=0
	Mientras cdl>0 Hacer
		suma=suma+(cdl mod 10)
		cdl=trunc(cdl/10)
	Fin Mientras
	Escribir "La suma de los digitos de su cedula es: ", suma
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 9 CADENA
//SubAlgoritmo Palabra_palindroma()
//ENTRADA:se ingresa cualquier tipo de palabras
//ejemplo: palabra = arenera
//PROCESO: el programa se encarga de sacar la longitud de la palabra, la cual se
//guarda en la variable ( long ). 
//se procede a leer la palabra de ( derecha a izquierda ) y la accion se la guarda
//en la variable ( inversa ).
//si la palabra ingresada es igual a la palabra guardada en la variable ( inversa ).
//Entonces la palabra es palindroma,caso contrario no es palindroma.
//SALIDA: se muesta un mensaje por pantalla, diciendo si la palabra ingresada
//es o no palindroma.
Funcion  Palabra_palindroma()
	definir palabra como cadena
	Definir inversa Como Caracter
	Definir long,i Como Entero
	Escribir "Escribir una palabra "
	leer palabra
	long=Longitud(palabra)	//longitud de la palabra arenera = 7
	inversa = ""
	Para i<-long Hasta 0  Con Paso -1 Hacer
		inversa=inversa+Subcadena(palabra,i,i )	//se almacena la palabra leida alrevez
	Fin Para
	Si palabra=inversa Entonces	
		Escribir "La palabra ","(",palabra,")", " es palíndromo "
	SiNo
		Escribir "La palabra ","(",palabra,")", " no es un palíndromo "
	Fin Si
	Escribir " "
	Escribir " <<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 10 CADENA
//SubAlgoritmo Encontrar_letras()
//ENTRADA: se ingresa una palabra, y se la almacena en la variable vcadena
//ejemplo: vcadena = (aves)
//PROCESO: se recorre la cadena de inicio a fin para revisar en que posicion se encuentra la letra indicada
//por el usuasrio...
//ejemplo:		a	v	e	s
//				1	2	3	4	
//SALIDA: se muestra un mensaje por pantalla diciendo la posicion en que se encuenta la letar a buscar
//la letra (a) se encuenta en la posicion 1.
Funcion  Encontrar_letras()
	Definir vcadena, vletra,s Como Caracter
	definir i , vindice Como entero 
	Definir vencontrado Como Logico
	definir vresp Como Caracter
	escribir "Ingrese la palabra : "
	leer vcadena		//se almacena la palbra ingresada por el usuario
	Escribir "Digite la letra que quiera buscar : "
	leer vletra
	i=0 
	vencontrado = falso
	Mientras (i <= Longitud(vcadena)) y no vencontrado Hacer	//se recorre la cadena para encontrar la letra deseada.
		si (Subcadena(vcadena,i,i)=vletra) Entonces
			vencontrado = Verdadero
			vindice= i+1
		FinSi
		i= i + 1
	FinMientras
	Si no  vencontrado entonces 
		Escribir "Letra no encontrada "
		vresp= "N"
	SiNo
		Escribir " La letra fue encontrada en " "(", vindice,")" " posición"
	FinSi
	Escribir " "
	Escribir " <<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//EJERCICIO 1 ARREGLO
//SubAlgoritmo Presentar_arreglo()
//ENTRADA: se ingresan valores al sistema, ya sean numeros o palabras
//ejemplo:	[1,2,4,6,8,0,jose,alex,0,10]
//PROCESO: el sistema los almacena y guarda en la variable (num)
//	num = 1,2,4,6,8,0,jose,alex,0,10]
//SALIDA:se muestra un mensaje por pantalla con los valores del arreglo
//	1 - 2 - 4 - 6 - 8 - 0 - jose - alex - 0 - 10
Funcion Presentar_arreglo()
	Definir num Como Entero
	definir lon Como Caracter
	dimension lon[11]	//cantidad de valores que se ingresa al sistema como máximo
	Escribir "Ingrese 10 valores"
	Para num=1 Hasta 10 Con Paso 1 Hacer
		Escribir "Ingrese el valor # " , num " " Sin Saltar //se ingresan 10 valores, y se almacenan en (num)
		leer lon(num)
	Fin Para
	Escribir " "
	Escribir "Los valores ingresados en el arreglo son: "
	Para num=1 Hasta 10 Con Paso 1 Hacer
		Escribir lon(num), " - " Sin Saltar //se imprimen los valores del arreglo
	Fin Para
	Escribir " "
	Escribir " "
	Escribir " <<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 2 ARREGLO
//SubAlgoritmo numeros_pares_de_un_arreglo()
//ENTRADA:se ingresa la cantidad de numeros del arreglo...
//ejemplo: n=10		(3,5,10)
//PROCESO:el algoritmo se encargará se seleccionar los numeros pares de la secuencia
//ingresada...
//(3,5,10) = (10)
//SALIDA:se muestra un mensaje diciendo que si es par o no el numero seleccionado
//n=3     (10,3,5) = 10 es numero par
Funcion numeros_pares_de_un_arreglo()
	definir a,i,arr como entero
	escribir "Ingrese la dimensión";
	leer a
	dimension arr(a)
	Para i=1 Hasta a Con Paso 1 Hacer
		Escribir "Ingrese los valores " Sin Saltar
		leer arr(i-1)
	Fin Para
	Escribir " "
	Escribir "Los números pares de la secuencia son: "
	Para i=1 Hasta a Con Paso 1 Hacer
		Si arr(i-1) mod 2 = 0 Entonces
			Escribir "El numero ",arr(i-1)," es par"
		Fin Si
	Fin Para
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 3 DE ARREGLO
//SubAlgoritmo Numeros_negativos_en_arreglo()
//ENTRADA: se ingresa la dimension que tendrá el arreglo
//ejemplo:	n:3    (3;-6,5)
//PROCESO: el algoritmo se encargará de seleccionar solo los valores negativos del arreglo
//n:3    (3;-6,5)	=	(-6)
//SALIDA: muestra un mensaje por pantalla, mostrando los numeros negativos del arreglo
//n:3   = (3;-6,5)  =  (-6 es numero negativo)
Funcion Numeros_negativos_en_arreglo()
	definir a,b,au,i,arr,arr1 como entero 
	escribir "Ingrese la dimension";
	leer a
	au=1
	b=0
	Dimension arr(a)
	Para i=1 Hasta a Con Paso 1 Hacer
		escribir "Ingrese los numero";
		leer arr(i-1)
		Si arr(i-1)<0 Entonces
			b=b+1
		Fin Si
	Fin Para
	Dimension arr1(b)
	Para i=1 Hasta a Con Paso 1 Hacer
        Si arr(i-1)<0 Entonces
			arr1(au-1)=arr(i-1)
			au=au+1
		Fin Si
	Fin Para
	Para i=1 Hasta b Con Paso 1 Hacer
		escribir "numero negativos :",arr1(i-1),"";
	Fin Para
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 4 DE ARREGLO
//SubAlgoritmo primera_letra()
//ENTRADA: se ingresa la cantidad de nombres que se desea trabajar
//ejemplo: 	n=2     (jeremy,jonathan) =  j=jeremy , j=jhonathan
//PROCESO: el algoritmo recorrerá todo el arreglo de inicio a fin, para
//seleccionar la primera letra de la palabra y la almacena en la variable (pri)
//SALIDA:se muestra un mensaje por pantalla mostrando la primera letra de la palabra
//n=2     (jeremy,jonathan) =  j=jeremy , j=jhonathan
Funcion primera_letra()
	Definir cant,i,num como entero;
	Definir pri,pala,arr como caracter ;
	Escribir  "Ingrese la dimension del arreglo";
	Leer cant;
	Dimension arr(cant);
	Para i<-1 Hasta cant Con Paso 1 Hacer
		Escribir  "Ingrese la nombre: #",i," "; sin saltar
		leer arr(i-1);
	FinPara
	Escribir " "
	Para i<-1 Hasta cant Con Paso 1 Hacer
		pri<-Subcadena(arr(i-1),0,0);
		Escribir " "; Escribir "",pri," : ",arr(i-1),""; sin saltar
	FinPara
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 5 ARREGLO
//SubAlgoritmo Total_cantidad_promedio_arreglo()
//ENTRADA:se ingresa la cantidad de valores a trabajar
//ejemplo:	n=5		(1,2,3,4,5)
//PROCESO: se obtiene la suma total de los valores ingresados
//	n=5		(1,2,3,4,5)		=		15
//luego se obtiene el promedio de la suma de los valores
//15 % 5 = 3
//SALIDA:se muestra un mensaje por pantalla, en el cual se muestra la cantidad
//de valores ingresados, la suma total, promedio...
//n=5		valores ingresados = (1,2,3,4,5) = 5
//			suma de los valores =(1,2,3,4,5) = 15
//			promedio de la suma =(1,2,3,4,5) = 15/5=3
Funcion Total_cantidad_promedio_arreglo()
	definir num, acu, pro, n, arreglo, m Como Real
	definir i Como Entero
	acu=0
	escribir "¿De cuantos números desea hacer su arreglo?" 
	Leer num
	Dimension arreglo[num]
	para i<-0 Hasta num-1 Con Paso 1 Hacer
		Escribir "ingrese un número " Sin Saltar
		Leer n
		arreglo[i]<-n
	FinPara
	Escribir " "
	para m<-0 hasta num-1 con paso 1 Hacer
		acu=acu+arreglo[m]
	FinPara
	pro=acu/num
	Escribir "* la suma total de los números del arreglo es igual a: ", acu
	Escribir "* La cantidad de digitos ingresados es: ", num
	Escribir "* El promedio del arreglo es igual a: ", pro
	Escribir " "
	escribir "<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 6 ARREGLO
//SubAlgoritmo multiplos_5_al_reves()
//ENTRADA: el usuario ingresa la dimension que tendrá el arreglo...
//ejemplo: num=5		(5,15,24,2,25)
//PROCESO: el algoritmo se encargará de seleccionar solo los valores
//múltiplos de 5 y los almacena en la variable i, y los presenta de fin a inicio
//num=5		(5,15,24,2,25)			i=(5,15,25)
//									i=(25,15,5)
//SALIDA:muestra un mensaje por pantalla presentando los valores al reves.
//			(25,15,5)
Funcion multiplos_5_al_reves()
	Definir num,cont,i,arreglo Como Entero
	Escribir "Ingrese la dimensión del arreglo"
	leer num
	Dimension arreglo[num]	
	Para i=1 Hasta num Con Paso 1 Hacer
		Escribir "Ingrese los valores " Sin Saltar
		leer arreglo(i-1)
	Fin Para
	Escribir " "
	Escribir "Los números múltiplos de 5 en la secuencia son: "
	Para i=num Hasta 1 Con Paso -1 Hacer
		Si arreglo(i-1) mod 5 = 0 Entonces
			//Escribir "* El numero ","(",arreglo(i-1),")"," es múltiplo de 5"
			Escribir arreglo(i-1); sin saltar 
			escribir " - " Sin Saltar
		Fin Si
	Fin Para
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 7 ARREGLO
//SubAlgoritmo Primer_medio_último_elemento_arreglo()
//ENTRADA:El ususrio ingresa 11 valores.
//num=11	(1,2,3,4,5,3,7,9,0,10,12)
//PROCESO: El algoritmo se encarga de sacar el valor del medio y el ultimo valor
//num=11	(1,2,3,4,5,3,7,9,0,10,12)
//num=11		primer valor = 1
//num=11		primer valor = 3
//num=11		primer valor = 12
//SALIDA:
Funcion Primer_medio_último_elemento_arreglo()
	definir num, m, n,i,arreglo  Como Entero
	dimension arreglo[11] 
	para i=0 hasta 10 Con Paso 1 Hacer
		Escribir "ingresa un número " Sin Saltar
		Leer arreglo[i]
	FinPara
	Escribir " "
	escribir"El primer, el medio, y el ultimo elemento del arreglo fueron:"	
	Escribir "El primer valor ingresado es: ";Escribir arreglo[0] Sin Saltar
	Escribir "El primer valor ingresado es: ";Escribir arreglo[5] Sin Saltar
	Escribir "El primer valor ingresado es: ";Escribir arreglo[10] Sin Saltar
	Escribir " "
	Escribir "<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 8 DE ARREGLO
//SubAlgoritmo copiar_arreglo_y_precentarlo()
//ENTRADA: el usuario ingresa la cantidad de valores a presentar y los agrega...
//ejemplo:	(n=3)		=		n=3		n=6		=9
//PROCESO: el algoritmo se encarga de copiar y presentar en otro arreglo los valores
//ingresados por el usuario
//arreglo1=[3,6,9]		arreglo2=[3,6,9]
//SALIDA: muestra en la pantalla el arreglo 2.
Funcion copiar_arreglo_y_precentarlo()
	Definir n,num,arreglo1, arreglo2,pos,cont,i Como Entero
	Escribir "Cantidad de elemetos "Sin Saltar;
	Leer n
	Dimension arreglo1[n] 
	Dimension arreglo2[n] 
	pos=0
	cont=0
	Mientras cont<n Hacer
		Escribir "Ingrese numero " Sin Saltar;
		Leer num
		arreglo1[pos]=num
		pos=pos+1
		cont=cont+1
	FinMientras
	para i=0 Hasta n-1 Con Paso 1
		arreglo2[i]=arreglo1[i]
		Escribir "Areglo 1 = ",arreglo1[i]," ; ","Areglo 2 = ",arreglo2[i]
	finpara
	Escribir "Arreglo 2"
	para i=0 Hasta n-1 Con Paso 1
		Escribir " [",i,"]=",arreglo2[i] Sin Saltar
	finpara
	Escribir " "
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 9 ARREGLO
//SubAlgoritmo suma_de_dos_arreglos()
//ENTRADA:se ingren la cantidad de elemtos, i se ingresan los valores de cada arreglo..
//ejemplo:		n=5  	arreglo1=[8,20,7,5,4]
//     					arreglo2=[2,1,3,5,6] 
//PROCESO: el Algoritmo se encargará de sumar cada valor, y el resultado lo presenta en otro arreglo...
//				n=5  	arreglo1	=	[8		20		7		5		4]
//     					arreglo2	=	[2		1		3		5		6]
//						arreglo3	=	[10		21		10		10		10] 
//SALIDA:se presenta la suma de los valores en el arreglo3...
//arreglo3	=	[10		21		10		10		10] 
Funcion suma_de_dos_arreglos()
	Definir n,cont,num,num1,pos,pos1,arreglo1,arreglo2,arreglo3,cont1,i Como Entero
	Escribir "cantidad de elementos"
	leer  n
	Dimension arreglo1[n]
	Dimension arreglo2[n]
	Dimension arreglo3[n]
	cont=1; pos=0
	cont1=1; pos1=0
	Mientras cont<=n Hacer
		escribir "Arreglo 1 Ingresar numero ",  cont Sin Saltar
		leer num
		arreglo1[pos]=num
		pos=pos+1
		cont=cont+1
	Fin Mientras
	Escribir " "
	mientras cont1<=n
		escribir "Arreglo 2 Ingresar numero ",  cont1 Sin Saltar
		leer num1
		arreglo2[pos1]=num1
		pos1=pos1+1
		cont1=cont1+1
	FinMientras
	Escribir " "
	Escribir "La suma del arreglos es: " 
	para i=0 Hasta n-1 Con Paso 1
		arreglo3[i]=arreglo1[i]+arreglo2[i]
		Escribir arreglo1[i]," + " arreglo2[i]," = ",arreglo3[i]
	finpara
	Escribir "Arreglo 3 "
	para i=0 Hasta n-1 Con Paso 1
		Escribir " [",i,"]=",arreglo3[i] Sin Saltar
	finpara
	Escribir " "
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//EJERCICIO 10 ARREGLO
//SubAlgoritmo guarda_arreglo_factoriales()
//ENTRADA: se ingresa la cantidad de numeros que tendra el arreglo
//Ejemplo:	n=5  3,2,1,5,4 
//PROCESO: el sistema calcula el factorial de cada valor ingresado....
//n=5  	3! = 3x2x1= 6
//		2! = 2x1= 2
//		1! = 1
//		5! = 5x4x3x2x1 = 120
//		4! = 4x3x2x1 = 24
//n=5  3,2,1,5,4  arregloFactorial [6,2,1,120,24] 
//SALIDA: se muestra por pantalla con los factoriales del arreglo ingresado
//arregloFactorial [6,2,1,120,24]
Funcion guarda_arreglo_factoriales()
	Definir cont,cont2,fact,Fact1,limite,n,pos,i como real
	pos=0
	cont=1
	Escribir "Ingresa el limite de la serie"
	Leer limite
	Dimension Fact1[limite]
	mientras cont<=limite
		Escribir "Ingresa el ",cont, " de la serie"
		Leer n
		si n=0 o n=1  Entonces
			Escribir n " = ",1
			Escribir "No tiene factoriales"
		SiNo
			si n<0
				Escribir "No tiene factoriales"
			SiNo
				cont2=1;Fact=1
				Mientras cont2<=n
					Fact=Fact*cont2
					Fact1[pos]=fact
					cont2=cont2+1
				FinMientras
				pos=pos+1
			FinSi
		FinSi
		cont=cont+1
	FinMientras
	para i=0 Hasta pos-1 Con Paso 1 Hacer
		Escribir "los factoriales de la serie son: ",Fact1[i]
	finpara
	para i=0 Hasta pos-1 Con Paso 1 Hacer 
		Escribir "  [",i,"]=",Fact1[i] Sin Saltar
	finpara
	Escribir " "
	Escribir " "
	Escribir "<<<<< GRACIAS POR USAR EL SISTEMA >>>>"
FinFuncion

//    ALGORITMO  PRINCIPAL

// Algoritmo principal del proyecto
Algoritmo Proyecto
	Definir menuPrincipal,menuNumeros,menuCadenas,menuArreglos,titulo,titulo2,opc,opcn,opcc,opca Como Caracter
	Definir pos,lim Como Entero
	Dimension menuPrincipal[4],menuNumeros[11],menuCadenas[11],menuArreglos[11]
	// arreglo menu principal
	menuPrincipal[0] = "  1)Ejercicios con Numeros"
	menuPrincipal[1] = "  2)Ejercicios con Cadenas"
	menuPrincipal[2] = "  3)Ejercicios con Arreglos"
	menuPrincipal[3] = "  4)Salir"
	// arreglo submenu numeros
	menuNumeros[0] = "  1) Mayor de 2 Numeros"
	menuNumeros[1] = "  2) Dividir dos numeros por restas"
	menuNumeros[2] = "  3) Multiplicar dos numeros por sumas"
	menuNumeros[3] = "  4) Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
	menuNumeros[4] = "  5) Presentar cantidad de digitos de cada numero de una secuencia hasta 0"
	menuNumeros[5] = "  6) Mostrar El valor, descuento, iva y pago de n trajes"
	menuNumeros[6] = "  7) Dado tres numeros indicar si el segundo es el mayor"
	menuNumeros[7] = "  8) Dado una secuencia de numeros presentar su promedio"
	menuNumeros[8] = "  9) Numeros amigos "
	menuNumeros[9] = "  10) Primos gemelos"
	menuNumeros[10] = "  11) Salir"
	
	// arreglos submenu cadenas
	menuCadenas[0] = "  1) Presentar un nombre por caracter"
	menuCadenas[1] = "  2) Presentar el primero, el medio y el ultimo caracter de una frase"
	menuCadenas[2] = "  3) Dado dos nombres indicar si son iguales"
	menuCadenas[3] = "  4) Dadas dos frase indicar la de mayor longitud"
	menuCadenas[4] = "  5) Indicar cuantas ,.;: hay en una cadena"
	menuCadenas[5] = "  6) Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
	menuCadenas[6] = "  7) Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
	menuCadenas[7] = "  8) Presentar la suma de los digitos de una cédula"
	menuCadenas[8] = "  9) Indicar si una palabra es palindroma"
	menuCadenas[9] = "  10) Presenta la posicion de un caracter cualquiera dentro de una cadena"
	menuCadenas[10] = "  11) Salir"
	
	// arreglo submenu arreglos
	menuArreglos[0] = "  1) Dado un arreglo cualquiera presentarlo"
	menuArreglos[1] = "  2) Presentar los numeros pares de un arreglo"
	menuArreglos[2] = "  3) Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
	menuArreglos[3] = "  4) Dado un arreglo de nombres presentar el primer caracter de cada nombre"
	menuArreglos[4] = "  5) Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
	menuArreglos[5] = "  6) Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
	menuArreglos[6] = "  7) Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
	menuArreglos[7] = "  8) Dado un arreglo copiarlo en otro y presentarlo"
	menuArreglos[8] = "  9) Dado 2 arreglos copiar en un otroarreglo la suma de cada elemento de los 2 arreglos"
	menuArreglos[9] = "  10) Dado una serie de numeros guarda en un arreglo los factoriales"
	menuArreglos[10] = "  11) Salir"
	opc=""
	
    Mientras opc <> "4" Hacer
		opc=presentarMenu("Menu Principal",menuPrincipal,4)
		Segun opc Hacer
			"1":
				opcn=""
				Mientras opcn <> "11" Hacer         
					opcn=presentarMenu("Menu Numeros",menuNumeros,11)
					Segun opcn Hacer
						"1":
							Escribir "Mayor de dos Numeros"
							mayorDosNumeros()
							Esperar 5 Segundos
						"2":
							Escribir "Dividir dos números por restas"
							DividirPorRestas()
							Esperar 5 Segundos
						"3":
							Escribir "Multiplicar dos números por sumas"
							MultiplicarPorSumas()
							Esperar 5 Segundos
						"4":
							Escribir "Suma Pares y Productos multiplos de 5 de una secuencia de numeros"
							suma_pares_producto_multiplo_5() 
							Esperar 5 Segundos
						"5":
							Escribir "Presentar cantidad de digitos de cada numero de una secuencia hasta 0"
							cantidad_digitos_secuencia()
							Esperar 5 Segundos
						"6":
							Escribir "Mostrar El valor, descuento, iva y pago de n trajes del Almacén SomosMas"
							Descuento_producto()
							Esperar 5 Segundos
						"7":
							Escribir "Dado tres numeros indicar si el segundo es el mayor"
							indicar_si_segundo_numero_es_mayor()
							Esperar 5 Segundos
						"8":
							Escribir "Dado una secuencia de numeros presentar su promedio"
							promedio_de_secuencia_de_numeros()
							Esperar 5 Segundos
						"9":
							Escribir "Numeros amigos "
							Numeros_amigos()
							Esperar 5 Segundos
						"10":
							Escribir "Primos gemelos"
							Primos_gemelos()
							Esperar 5 Segundos
						"11":
							Escribir " "
							Escribir "  Regresando al Menu Principal" Sin Saltar
							Esperar 1 Segundos 
							Escribir "." Sin Saltar
							Esperar 1 Segundos
							Escribir "." Sin Saltar
							Esperar 1 Segundos
							Escribir "." Sin Saltar
							Esperar 1 Segundos
							
						De Otro Modo:
							Escribir "Opcion invalidad..."
							Esperar 3 Segundos
					Fin Segun
				FinMientras
				
			"2":
				opcc=""
				Mientras opcc <> "11" Hacer         
					opcc=presentarMenu("Menu Cadenas",menuCadenas,11)
					Segun opcc Hacer
						"1":
							Escribir "Presentar un nombre por caracter"
							Nombre_por_caracter()
							Esperar 5 Segundos
						"2":
							Escribir "Presentar el primero, el medio y el ultimo caracter de una frase"
							Primero_medio_ultimo_caracter_frase()
							Esperar 5 Segundos
						"3":
							Escribir "Dado dos nombres indicar si son iguales"
							Nombres_iguales()
							Esperar 5 Segundos
						"4":
							Escribir "Dadas dos frase indicar la de mayor longitud"
							frase_mayor_longitud()
							Esperar 5 Segundos
						"5":
							Escribir "Indicar cuantas ,.;: hay en una cadena"
							signos_de_puntuacion()
							Esperar 5 Segundos
						"6":
							Escribir "Dado una cadena indicar cuantas vocales, consonantes y digitos hay"
							vocales_consonantes_y_digitos()
							Esperar 5 Segundos
						"7":
							Escribir "Indicar cuantas palabras hay en una frase asumiendo 1 o varios espacios entre palabras"
							Palabras_en_una_frase()
							Esperar 5 Segundos
						"8":
							Escribir "Presentar la suma de los digitos de una cédula"
							suma_numeros_cedula()
							Esperar 5 Segundos
						"9":
							Escribir "Indicar si una palabra es palindroma"
							Palabra_palindroma()
							Esperar 5 Segundos
						"10":
							Escribir "Presenta la posicion de un caracter cualquiera dentro de una cadena"
							Encontrar_letras()
							Esperar 5 Segundos
						"11":
							Escribir " "
							Escribir "  Regresando al Menu Principal" Sin Saltar
							Esperar 1 Segundos 
							Escribir "." Sin Saltar
							Esperar 1 Segundos
							Escribir "." Sin Saltar
							Esperar 1 Segundos
							Escribir "." Sin Saltar
							Esperar 1 Segundos
							
						De Otro Modo:
							Escribir "Opcion invalidad..."
							Esperar 3 Segundos
					Fin Segun
				FinMientras
			"3":
				opca=""
				Mientras opca <> "11" Hacer         
					opca=presentarMenu("Menu Arreglos",menuArreglos,11)
					Segun opca Hacer
						"1":
							Escribir "Dado un arreglo cualquiera presentarlo"
							Presentar_arreglo()
							Esperar 5 Segundos
						"2":
							Escribir "Presentar los numeros pares de un arreglo"
							numeros_pares_de_un_arreglo()
							Esperar 5 Segundos
						"3":
							Escribir "Dado una serie de numeros guardar en un arreglo solo los numeros negativos"
							Numeros_negativos_en_arreglo()
							Esperar 5 Segundos
						"4":
							Escribir "Dado un arreglo de nombres presentar el primer caracter de cada nombre"
							primera_letra()
							Esperar 5 Segundos
						"5":
							Escribir "Dado un arreglo de numeros presentar el total, la cantidad y el promedio del arreglo"
							Total_cantidad_promedio_arreglo()
							Esperar 5 Segundos
						"6":
							Escribir "Dado un arreglo presentarlo al revez solo los numeros multiplos de 5"
							multiplos_5_al_reves()
							Esperar 5 Segundos
						"7":
							Escribir "Dado un arreglo presentar el primero,el medio y el ultimo elemento del arreglo"
							Primer_medio_último_elemento_arreglo()
							Esperar 5 Segundos
						"8":
							Escribir "Dado un arreglo copiarlo en otro y presentarlo"
							copiar_arreglo_y_precentarlo()
							Esperar 5 Segundos
						"9":
							Escribir "Dado 2 arreglos copiar en otro arreglo la suma de cada elemento de los 2 arreglos"
							suma_de_dos_arreglos()
							Esperar 5 Segundos
						"10":
							Escribir "Dado una serie de numeros guarda en un arreglo los factoriales" 
							guarda_arreglo_factoriales()
							Esperar 5 Segundos
						"11":
							Escribir " "
							Escribir "  Regresando al Menu Principal " Sin Saltar
							Esperar 1 Segundos 
							Escribir "." Sin Saltar
							Esperar 1 Segundos
							Escribir "." Sin Saltar
							Esperar 1 Segundos
							Escribir "." Sin Saltar
							Esperar 1 Segundos
							
						De Otro Modo:
							Escribir "Opcion invalidad..."
							Esperar 3 Segundos
					Fin Segun
				FinMientras
			"4":
				Escribir " "
				Escribir "<<<< GRACIAS POR USAR EL SISTEMA >>>>"
				Esperar 3 Segundos
		Fin Segun
    Fin Mientras
FinAlgoritmo