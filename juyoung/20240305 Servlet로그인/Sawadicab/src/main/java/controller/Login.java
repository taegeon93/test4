package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter pw = response.getWriter();
		// 자바(servlet) 코드 변경 시 톰캣 서버 재시작 필요!
		// + 콘솔창에 컨텍스트가 로드된 경우 재시작이 필요 없음
		
		// Get 방식으로 요청 시 doGet 메소드가 자동으로 호출됨
		System.out.println("Get 요청이 들어옴!");
		System.out.println(request.getParameter("id"));
		System.out.println(request.getParameter("password"));
		String id = request.getParameter("id");
		String pwd = request.getParameter("password");
		if(id.equals("team4")) {
			if(pwd.equals("aaa1234")) {
				pw.println( id + "님 환영합니다.");
			}
			pw.close();
		
		}else {
			pw.println("잘못 입력하셨습니다. 다시입력해주세요");
			pw.close();
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
