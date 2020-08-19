

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DataTableServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPOST(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		String json = "{ \"demo\":[[\"John\",\"Sam\",\"Sola\",\"Accun\"],[\"Raj\",\"Raj\",\"Sanjosh\",\"CA\"]]}";
		out.println(json);
	}

}
