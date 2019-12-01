package arrays;

import java.util.*;

public class ej6v {
	public static void mostrarArray (int miArray[]) {
		for (int i = 0; i < miArray.length; i++) {
			System.out.print(miArray[i]+" ");
		}
	}
	
	public static int suma(int miArray[]) {
		return miArray[0]+miArray[miArray.length-1];
	}
	public static int producto(int num1,int num2) {
		return num1+num2;
	}
	public static void main(String[] args) {
		
		int aux,vector[] = new int[10];

		for (int i = 0; i < vector.length; i++) {
			vector[i] = (int) (Math.random() * 10 + 1);
			//System.out.print(vector[i]+" ");
		}
		mostrarArray(vector);
		aux=vector[0];
		vector[0]=vector[vector.length-1];
		vector[vector.length-1]=aux;
		System.out.println("");
		mostrarArray(vector);	
		System.out.println("");
		System.out.println("la suma de ultimo y primero es "+suma(vector));
		
	}
}
