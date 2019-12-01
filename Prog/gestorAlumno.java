package arrayList1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Scanner;
public class gestorAlumno {
	public static void Baja (ArrayList <Alumno> lista) {
		Scanner teclado=new Scanner(System.in);
		int posicion;
		Recorrido(lista);
		System.out.println("cual eliminas");
		posicion=teclado.nextInt();
		if (posicion>=0 && posicion<lista.size())
		lista.remove(posicion);
	}
	public static void Baja (ArrayList <Alumno> lista,String nb) {
		Iterator it=lista.iterator();
		Alumno a;
		while (it.hasNext()) {
			a=(Alumno)it.next();
			if (nb.equals(a.getNombre())){
				lista.remove(a);
				break;
			}
		}
	}
		public static void Recorrido (ArrayList <Alumno> lista) {
			Iterator it=lista.iterator();
			Alumno a;
			int cont=0;
			while (it.hasNext()) {
				a=(Alumno)it.next();
				System.out.println("posicion: "+cont+" "+a.toString());
			cont++;
			}
		}
		public static void Alta (ArrayList <Alumno> lista) {
			Scanner teclado=new Scanner(System.in);
			String nombre;
			int nota;
			System.out.println("nuevo nombre ");
			nombre=teclado.next();
			System.out.println("nota ");
			nota=teclado.nextInt();
			lista.add(new Alumno(nombre,nota));
		}
	public static void main(String[] args) {
		ArrayList <Alumno> listaAlumnos=new ArrayList();
		Scanner teclado=new Scanner(System.in);
		int op,nota, opbaja;
		String nombre;
		
		Alumno al;
		do {
			System.out.println("elige 1.altas 2.bajas 3.salir");
			op=teclado.nextInt();
			switch(op) {
			case 1:System.out.println("altas ");					
			Alta(listaAlumnos);
			break;
			case 2:
				System.out.println("bajas ");
			System.out.println("por nombre 1, por numero 2 ");
			opbaja=teclado.nextInt();
			if (opbaja==1) {
				System.out.println("dame nombre ");	
			nombre=teclado.next();
			Baja(listaAlumnos,nombre);}
			else if (opbaja==2){
				Baja(listaAlumnos);
				}
			
			
			break;
			default:
			System.out.println("opcion incorrecta o terminaste ");
			break;
			}
			
		}while (op!=3);
		Recorrido(listaAlumnos);

	}

}
