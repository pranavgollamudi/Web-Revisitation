import java.util.ArrayList;

public class ArrayListDemo {
   public static void main(String[] args) {
      
   // create an empty array list with an initial capacity
   ArrayList<String> arrlist = new ArrayList<String>();

   // use add() method to add elements in the list
   arrlist.add("sajid");
   arrlist.add("nashu");
   arrlist.add("shona");
     
       
   // list contains element 10
   boolean retval = arrlist.contains("sajid "); 
	  
   if (retval == true) {
   System.out.println("element 10 is contained in the list");
   }
   else {
   System.out.println("element 10 is not contained in the list");
   }
		


   }
}