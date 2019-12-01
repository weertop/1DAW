package facultad;

public abstract class Empleados extends Personas{
	private int AñoIncorporacion;
	private int NumeroDespacho;

	// Builders
	public Empleados(String Nombre, String Apellidos, String DNI, Estado EstadoCivil,
			int Año, int Despacho) {
		super(Nombre, Apellidos, DNI, EstadoCivil);
		this.AñoIncorporacion = Año;
		this.NumeroDespacho = Despacho;
	}

	// Getters And setters

	public void setDespacho(int Despacho) {
		this.NumeroDespacho = Despacho;
	}

	@Override
	public String toString() {
		return "Empleados [" + super.toString() + "AñoIncorporacion=" + AñoIncorporacion + ", NumeroDespacho="
				+ NumeroDespacho + "]";
	}
}
