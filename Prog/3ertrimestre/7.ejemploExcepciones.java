package excepciones;

public class ejemploExcepciones {
    public static int devuelveNumero(int num) {
        try {
		//lanza una exception general
            if (num % 2 == 0) {
                throw new Exception("Lanzando excepcion");
            }
		//ojo a esta posicion de return
            return 1;
        } catch (Exception ex) {
            return 2;
        } finally {
        	return 3;
        }
    }
    public static void main(String[] args) {
        System.out.println(devuelveNumero(2));
    }
}

		//en su ejecucion normal saltaria la exception el return pasaria a ser 2 pero luego se ejecuta el finally por lo que pasa un 3 como resultado final
		//si probamos con  devuelveNumero(1) no saltara la exception, por lo que se ejecutara el return 1, pero aun asi se ejecuta el finally por lo que el resultado final es 3 otra vez