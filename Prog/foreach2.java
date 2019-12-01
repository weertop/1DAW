package arrays;

public class foreach2 {

	public static void main(String[] args) {
		//obtener nota media del alumno y la media del curso	
		double notas[][]= {{5,7,6.0},{4,5,4,7,5},{10,6}};
		double notaMediaAlumno[]=new double[notas.length];
		double notaMediaTotal=0;
		double notaal;
		int alu;
		for (int al=0;al<notas.length;al++) {
			for (int nta=0;nta<notas[al].length;nta++) {
				notaMediaAlumno[al]+=notas[al][nta];
			}
			notaMediaAlumno[al]/=notas[al].length;
	System.out.println("la nota media del alumno "+al+" es "+notaMediaAlumno[al]);
			notaMediaTotal+=notaMediaAlumno[al];
		}
		notaMediaTotal/=notas.length;
		System.out.println("la nota media global  es "+notaMediaTotal);
		notaMediaTotal=0;//para el siguiente calculo la vuelvo a iniciar
		System.out.println(" con foreach ");
		alu=0;
		for (double alumno[]:notas) {
			notaal=0;
			for (double nta:alumno) {
				notaal+=nta;
			}
			
			notaal/=notas[alu].length;
			notaMediaAlumno[alu]=notaal;
			notaMediaTotal+=notaMediaAlumno[alu];
			alu++;
		}
		notaMediaTotal/=notas.length;
		System.out.println("la nota media global  es "+(notaMediaTotal));

	}

}
