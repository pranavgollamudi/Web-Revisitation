import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.*;
import org.jsoup.select.Elements;
import org.jsoup.select.*;
import org.jsoup.*;

import java.util.*; 

import java.io.*; 


public class  GetHeadings
{
	public static void main(String[] args) throws Exception
	{
		Document doc = Jsoup.connect("https://en.wikipedia.org/wiki/Wikipedia").get();
 Elements elements = doc.select("h1,h2,h3,h4,h5");
  for (Element element : elements) {
     StringBuilder sb = new StringBuilder(element.toString());

     Element next = element.nextElementSibling();
     while (next != null && !next.tagName().startsWith("<h")) {
        sb.append(next.toString()).append("\n");
        next = next.nextElementSibling();
     }
     System.out.println(sb);

  }

	}
}
