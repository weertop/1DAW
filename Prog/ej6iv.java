package arrays;

import java.util.*;

public class ej6iv {

	public static void main(String[] args) {
		Scanner teclado = new Scanner(System.in);
		int veces=0,j = 0, dato, vector[] = new int[10];

		for (int i = 0; i < vector.length; i++) {
			vector[i] = (int) (Math.random() * 100 + 1);
			System.out.println("dato " + i + " es " + vector[i]);
		}
		do {
			System.out.println("dame valor entre 1 y 100");
			dato = teclado.nextInt();
		} while (dato > 100 || dato < 1);
		System.out.println("dato que buscamos es " + dato);
		for (j=0;j<vector.length;j++) {
			if (vector[j] == dato) {
				veces++;
				System.out.println("dato  " + dato+" estaba en posicion "+j);
			}
		}
		if (veces==0) {
			System.out.println("dato  " + dato+" no estaba ");
		}
			
		
	}
}
