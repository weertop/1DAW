package facultad;

public class Profesores extends Empleados {
	private String Departamento;

	// Builders
	public Profesores(String Nombre, String Apellidos, String DNI,
			Estado EstadoCivil, int Año, int Despacho,
			String Dept) {
		super(Nombre, Apellidos, DNI, EstadoCivil, Año, Despacho);
		this.Departamento = Dept;
	}

	// Getters and Setters

	public void setDept(String Dept) {
		this.Departamento = Dept;
	}

	@Override
	public String toString() {
		return "Profesores [" + super.toString() + " Departamento=" + Departamento + "]";
	}
}
