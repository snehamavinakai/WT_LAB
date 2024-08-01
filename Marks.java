

import java.io.IOException;
import java.io.PrintWriter; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Marks
 */
@WebServlet("/Marks")
public class Marks extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Marks() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try {
		int num1 = Integer.parseInt(request.getParameter("sub1"));
		int num2 = Integer.parseInt(request.getParameter("sub2"));
		int num3 = Integer.parseInt(request.getParameter("sub3"));
		int num4 = Integer.parseInt(request.getParameter("sub4"));
		int num5 = Integer.parseInt(request.getParameter("sub5"));
		int num6 = Integer.parseInt(request.getParameter("par1"));
		int num7 = Integer.parseInt(request.getParameter("par2"));
		
		int Result = num1+num2+num3+num4+num5+num6+num7;
		
		float percent = Result/7;
		
		out.println("<table border=1>");
		out.println("<tr><td colspan = '7'>");
		out.println("\nName : "+request.getParameter("name")+"</td></tr>");
		out.println("<tr>");
		out.println("<td>"+"\nSubject 1 Marks: "+num1+"</td>");
		out.println("<td>"+"\n\nSubject 2 Marks: "+num2+"</td>");
		out.println("<td>"+"\nSubject 3 Marks: "+num3+"</td>");
		out.println("<td>"+"\nSubject 4 Marks: "+num4+"</td>");
		out.println("<td>"+"\nSubject 5 Marks: "+num5+"</td>");
		out.println("<td>"+"\nPractical 1 Marks: "+num6+"</td>");
		out.println("<td>"+"\nPractical 2 Marks: "+num7 +"</td>");
		out.println("</tr>");
		out.println("<tr><td colspan = '7'>");
		out.println("Sum of marks : "+Result+"</td></tr>");
		out.println("<tr><td colspan = '7'>");
		out.println("Percentage : "+percent+"%"+"</td></tr>");
        out.println("</table>");
		}
		catch(Exception e)
		{
			out.println("Number format Exception");
		}
	}

}
