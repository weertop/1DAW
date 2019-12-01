public class StringArgs {
    public static void main(String args[]) {
    	int num,suma=0;
    	String cadena;
        System.out.println("There are " + args.length
                + " command-line arguments.");
        System.out.println("They are: ");
        for (int i = 0; i < args.length; i++) {
            System.out.println("arg[" + i + "]: " + args[i]);
            //miInteger.valueOf (miString)
            cadena=args[i];
            //coversion de cadena a numero
            num=Integer.parseInt(cadena);
           suma+=num;
         
        }
        System.out.println("la suma es : "+suma); 
    }
}