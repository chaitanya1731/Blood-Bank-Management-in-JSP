import java.io.IOException;  
import java.io.PrintWriter;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  


public class SendMail extends HttpServlet {  
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request,  
			HttpServletResponse response)  
					throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  

		String subject = request.getParameter("subject");
		String name = request.getParameter("name");
		String messageBody = name + ": " + request.getParameter("message");

		String emailTo = request.getParameter("email");


		Mailer.send(emailTo, subject, messageBody);  
		out.print("message has been sent successfully");  
		out.close();  
	}  

}