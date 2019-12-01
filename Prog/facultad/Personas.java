package facultad;

public abstract class Personas {
	private String Nombre;
	private String Apellidos;
	private String DNI;
	private Estado EstadoCivil;

	// Builders
	public Personas(String nb, String ap, String DNI, Estado Estadocivil) {
		this.Nombre = nb;
		this.Apellidos = ap;
		this.DNI = DNI;
		this.EstadoCivil = Estadocivil;
	}

	// Getters and Setters.

	public void setEstadoCivil(Estado EstadoCivil) {
		this.EstadoCivil = EstadoCivil;
	}

	@Override
	public String toString() {
		return "Personas [Nombre=" + Nombre + ", Apellidos=" + Apellidos + ", DNI=" + DNI + ", EstadoCivil="
				+ EstadoCivil + "]";
	}

}
