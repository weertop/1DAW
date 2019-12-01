package facultad;

public class usoPersonas {

	public static void main(String[] args) {
		Estudiantes e1=new Estudiantes ("pepe","perex","3455",Estado.casado,"daw1");
		System.out.println(e1.toString());
		e1.setEstadoCivil(Estado.otro);
		e1.setCurso("daw2");
		System.out.println(e1.toString());
		Profesores p1=new Profesores("mar","marquez","6556",
				Estado.viudo,2000,66,"AI");
		System.out.println(p1.toString());
		p1.setDept("microInf");
		p1.setDespacho(41);
		p1.setEstadoCivil(Estado.soltero);
		System.out.println(p1.toString());
		Personal pe1=new Personal("maria","marquez","16556",
				Estado.viudo,2000,166,"rrhh");
		System.out.println(p1.toString());
		pe1.setSeccion("administracion");
		pe1.setDespacho(141);
		pe1.setEstadoCivil(Estado.otro);
		System.out.println(pe1.toString());
	}
}
