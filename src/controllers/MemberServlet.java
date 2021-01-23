package controllers;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Member;
import utils.DBUtil;
import validators.MemberValidator;

/**
 * Servlet implementation class MemberServlet
 */
@WebServlet("/member")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name = request.getParameter("namae");
		String color = request.getParameter("color");

		EntityManager em = DBUtil.createEntityManager();

		Member m = new Member();
		m.setName(name);
		m.setColor(color);

		List<String> error = MemberValidator.validate(m);
        if(error.size() > 0) {
        	em.close();
            request.setAttribute("errors", error);
            request.setAttribute("showFlg", "1");
        }else {
			em.getTransaction().begin();
	        em.persist(m);
	        em.getTransaction().commit();
	        em.close();
	        request.setAttribute("flush", "メンバー登録が完了しました。");
        }

        RequestDispatcher disp = request.getRequestDispatcher("/WEB-INF/jsp/index.jsp");
		disp.forward(request, response);
	}

}
