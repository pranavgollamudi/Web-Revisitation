public class exp { 

   public static void main(String args[]) {
      double x = 48;
    
	x=Math.sqrt(x);
	x=x*-1;			

      System.out.printf("The value of e is %.4f%n", Math.E);
      System.out.printf("exp(%.3f) is %.3f%n", x, Math.exp(x));  
   }
}