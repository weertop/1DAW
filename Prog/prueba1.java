package arrays;
import java.util.*;
public class prueba1 {
	public static void instrucciones() {
		System.out.println("introduce un dato por teclado entero ");
		System.out.println("para terminar pon 666 ");
		System.out.println("y despues pulsa intro ");
	}
	public static int suma(int n1,int n2) {
		return n1+n2;
	}
	public static int suma2() {
		int n1=4;
		int n2=7;
		return n1+n2;
	}
	public static void main(String[] args) {
		Scanner teclado=new Scanner(System.in);
		int var1,cont=0,acum=0;
		System.out.println("invoco a suma2 "+suma2());
	
		for (int i=0;;i++) {
			instrucciones();
			var1=teclado.nextInt();
			if (var1==666) {
				break;
			}
			else {
			acum=suma(acum,var1);
			cont++;
			}	
		}
		System.out.println("con for metiste "+cont+" datos que suman "+acum);
		do {
			instrucciones();
			var1=teclado.nextInt();
			if (var1!=666) {
			acum+=var1;
			cont++;
			}
			
		}while (var1!=666);
		System.out.println("con do while añadiate valores  que suman "+acum);
	}

}
