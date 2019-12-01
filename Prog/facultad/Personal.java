package facultad;

public class Personal extends Empleados{
	private String Seccion;

	// Builder
	public Personal(String Nombre, String Apellidos, String DNI, Estado EstadoCivil,
			int Año, int Despacho,
			String Secc) {
		super(Nombre, Apellidos, DNI, EstadoCivil, Año, Despacho);
		this.Seccion = Secc;
	}

	// Getters and Setters
	public void setSeccion(String Secc) {
		this.Seccion = Secc;
	}

	@Override
	public String toString() {
		return "Personal [ " + super.toString() + "Seccion=" + Seccion + ", ]";
	} 
}
