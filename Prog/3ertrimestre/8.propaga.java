package excepciones;

class propaga {
	public static int metodo(String numero) {
		int valor=0 ;

		try {
			//si no funciona se da el number format exception
			valor =  Integer.parseInt(numero);
			
			//esto no se ejecuta en el ejemplo va al catch
			System.out.println("Valor al final del try : " + valor);
		} catch (NumberFormatException e) {
			//intenta otra vez hacerlo pero lanza otra vez la excepcion y no la encuentra y lo lanza al main a ver si la puede tratar, el sysout de abajo no se ejecuta tampoco
			valor =  Integer.parseInt(numero);
			System.out.println("Valor al final del catch : " + valor);
		} finally {
			//el finally siempre se ejecuta, no realizo la asignacion el valor es 0, lo de debajo del finally no se ejecuta porque corresponde al flujo normal 
			System.out.println("Valor al final de finally : " + valor);
		}
		//no se ejecuta porque no siguio el flujo normal 
		System.out.println("Valor antes del return : " + valor);
		return valor;
	}

	public static void main(String[] args) {
		//caso con un valor imposible de convertir a int
		String numero="42i";
		try {
			System.out.println(metodo(numero));
		} catch (Exception e) {
			//esta la captura por se de tipo mas grande(contiene a la numberformatexception), finalmente no se consigue asignar un valor
			System.out.println("Excepcion en metodo ( ) ");
			System.out.println("el dato "+numero +" no se pudo convertir en numero");
		}
	}
}

		//si se prueba con un valor posible int (1492) se ejecutaran todos los sysout que antes se salto.
