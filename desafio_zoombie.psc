Algoritmo desafio_zoombie
	
	Definir matriz Como Caracter
	definir i, j, m como entero
	definir secuencia como cadena
	definir resultado Como Logico
//	Hacer
//		
//		Escribir "Ingrese la secuencia a analizar "
//		leer secuencia
//		si Longitud(secuencia) <>9 y Longitud(secuencia) <> 16 y Longitud(secuencia) <>1369
//			Escribir "La secuencia ingresada no es valida, ingresela nuevamente "
//			Leer secuencia
//		FinSi
//		
//		
//	Mientras Que Longitud(secuencia) <>9 y Longitud(secuencia) <> 16 y Longitud(secuencia) <>1369
	//	
	secuencia= "ACCDBBADDDCCBACABDCBDCBADBDACBBBBDAABBCCBAACCABDBDCDDABDBDADAAACBBBBCDDDCBBBDDCDABBDDABDBDBBACADCDAAADACDDDACCDCACDDABACDCCCAABDDCCACDADDBCBAACCDBCBCDDDCAACCBAADCBBBCDCBBACBDCCDDADBABCAABBACABDCAACCBDADDCAAACCDBDBBCDDDDDACBCDDADDDDCBADADBDCADDABBCDAACBCCDDDADDADADAACCACDCDDABCCCADABBACDACCAADDBCBCCDADBCCADAAABDDDAABBABCADDCCAADDCDDCDCACBADADACADDAADCBDBCDBDDACDCBCDCCABBDCBACDDACCCDADBCADCACAAABBBCADDDDBCBACDBDAAADDDACCDACBBBADACCCDCACCBACDADBCBBDADACABAACBCCADDCCCCACCCCADBCCDAADCAABBABAADDBDADDABABCCABBCDDACCADAAADBBCCDBADCADCBBDADACCDDBCAAABBBDCAAAACBAADBABBABACDDBBCBDCDCADABABBDADCBADAACDBCBDABADBCBADCACADAABCDDCABACDDBDCBCBDCAAACBDABBCACBACCCBACACDCADBDCDCDDCAACDBDCBACDBBDAABDBBCBAAADBABDBAACAAACDCDAAABABDDDBCACADCBBAADCCDABCCCBBCACCBAABDAADDDCDACDDDBCDCCBABDABACCDCDCDABAABCABBADADCBDDACDDCDDCDACDADADCACBCDABABDDCCDBCCDABACDBDAABDBDDDBADDBACABDCDDBACDDBBDDBBACBCCAACABBDADDBCAACCBCCDADDBCAADDADCCCBAAABABBBBBCABAACADBCBBABACCABCDAABADCCCCDCCADDDCCABBDDDAAADDADACBBBCBDAADACABABBAACCCADADDABDBCADDDCCDBBCCBCDCDBDDDDCACDACDBBBDDBADDACADDADDABCACDCBBADDABBBDCBBDCDAABADDDDDBCACCCCAAACBCBCDBACCCDACCCDBCBDCBADBCDDACCDBDBDBCAAACDDCBAABDBCAADCADDBABABDCBCBCBBBCACBCADDCAAAAAACBBACBBCCACBDCDDDDADCAAACBABDDBDADBAADCBABDDBCDBABDBAADDDBACBBBCCCDBDDBDDAADBBADADDDCBCACBABCDBBABAADABCABCDBACBBBCDBADADDBDCBDABBDDDCDDCCACDCBDCADABAABCDCAACCDDBADBDBCDACAAACBCADCCCBAC"
	m= rc(Longitud(secuencia))
	Dimension matriz(m,m)
	
	
	llenarMatriz(matriz, i, j, m, secuencia)
	imprimirMatriz(matriz, m, i, j, secuencia)
	resultado = determinarGen(matriz, i, j, m)
	
	si resultado == Verdadero
		Escribir "La matriz tiene el gen Z"
	SiNo
		Escribir "La matriz no tiene el gen Z"
	FinSi
	

	
FinAlgoritmo

SubProceso llenarMatriz(matriz Por Referencia, i Por Referencia, j Por Referencia, m Por Referencia, secuencia Por Referencia)
	
	Definir cont Como Entero
	cont = 0
	para i=0 Hasta m-1
		para j=0 Hasta m-1
			matriz[i,j]=Subcadena(secuencia,cont,cont)
			cont = cont+1
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso
	
	SubProceso imprimirMatriz(matriz Por Referencia, m Por Referencia, i Por Referencia, j Por Referencia, secuencia Por Referencia)
		
		
		para i=0 Hasta m-1
			para j=0 Hasta m-1
				Escribir Sin Saltar matriz[i,j] " | "
			FinPara
			Escribir ""
		FinPara
		
		
		
		
FinSubProceso
		
		
Funcion gen <- determinarGen(matriz Por Referencia, i Por Referencia, j Por Referencia, m Por Referencia)
	Definir gen, igualdiag1, igualdiag2 Como Logico
	definir diagoprin, diagsecun Como Cadena
	definir cont Como Entero
	
	diagoprin = ""
	diagsecun = ""
	igualdiag1 = Verdadero
	igualdiag2 = Verdadero
	
	cont = 0
	
	Para i <- 0 Hasta m-1 Hacer
		
		diagoprin = diagoprin + matriz[i,i]
		diagsecun = diagsecun + matriz[i, ((m-1) - i)]
			
			
//	Escribir "prin" diagoprin
//	Escribir "sec " diagsecun		
//	
		
	FinPara
	
	
	Mientras igualdiag1 y cont < Longitud(diagoprin) Hacer
		
		si Subcadena(diagoprin,cont,cont) <> Subcadena(diagoprin, cont+1, cont+1) y Subcadena(diagoprin, cont+1, cont+1) <> "" y Subcadena(diagoprin, cont+1, cont+1) <> " "
			igualdiag1 = falso
		FinSi
		cont = cont+1
	FinMientras
	cont = 0
	Mientras igualdiag2 y cont < Longitud(diagsecun) Hacer
		
		si Subcadena(diagsecun,cont,cont) <> Subcadena(diagsecun, cont+1, cont+1) y Subcadena(diagsecun, cont+1, cont+1) <> "" y Subcadena(diagsecun, cont+1, cont+1) <> " "
			igualdiag2 = falso
		FinSi
		cont = cont +1
	FinMientras
	
	
	si igualdiag1 == Verdadero y igualdiag2 == Verdadero
		gen = Verdadero
	SiNo
		gen = Falso
	FinSi
FinFuncion
		

	

