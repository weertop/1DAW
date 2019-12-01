package facultad;

public class Estudiantes extends Personas{
	private String Curso;

	// Builders
	public Estudiantes(String Nombre, String Apellidos, String DNI, Estado EstadoCivil,
			String Curso) {
		super(Nombre, Apellidos, DNI, EstadoCivil);
		this.Curso = Curso;
	}

	// Getters and Setters
	public void setCurso(String curso) {
		this.Curso = curso;
	}

	@Override
	public String toString() {
		return "Estudiantes [Curso= " + Curso +  super.toString() + "]";
	}

	
}
