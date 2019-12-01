package iterativas;

public class pruebaPrimosG {

	public static void main(String[] args) {
		 long TInicio, TFin, tiempo; //Variables para determinar el tiempo de ejecución
		  TInicio = System.currentTimeMillis();
		for (int j=1001;j<100000;j++) {
		  if(	esPrimoG(j)) {
			  System.out.println(j+" es primo");
		  }
		  
		}
		TFin = System.currentTimeMillis(); //Tomamos la hora en que finalizó el algoritmo 
		tiempo = TFin - TInicio; //Calculamos los milisegundos de diferencia
		  System.out.println("Tiempo de ejecución en milisegundos: " + tiempo); 
	}
 private static boolean esPrimoG(int x) {
	 boolean sw=true;
	 int i;
	 double r;
	 if (x % 6 != 1 && x % 6 != 5)
			sw = false;
		r = Math.sqrt(x);
		i = 1;
		while (6 * i - 1 <= r) {
			if (x % (6 * i - 1) == 0)
				sw = false;
			if (x % (6 * i + 1) == 0)
				sw = false;
			i++;
		}
		return sw;
 }
}
