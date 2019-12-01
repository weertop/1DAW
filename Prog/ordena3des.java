package fundamentos;

import java.util.*;

public class ordena3des {

	public static void main(String[] args) {
		Scanner teclado = new Scanner(System.in);
		int a, b, c, mayor,medio,menor;
		System.out.println("introduce numero 1");
		a = teclado.nextInt();
		System.out.println("introduce numero 2");
		b = teclado.nextInt();
		System.out.println("introduce numero 3");
		c = teclado.nextInt();
		if (a>b ) {// a>b
			if (b>c) {// b>c
				System.out.println(a+" "+b+" "+c);
			}
			else {//c>b y a >b
				if (a>c) {
					System.out.println(a+" "+c+" "+b);
				}
				else {
					System.out.println(c+" "+a+" "+b);
				}
			}
		

}
		else {//b>a
			if (b>c) {//b>c
				if (c>a) {//c>a
					System.out.println(b+" "+c+" "+a);
				}
				else {
					System.out.println(b+" "+a+" "+c);	
				}
			}else {//c>b
				System.out.println(c+" "+b+" "+a);	
			}
		}
}
}