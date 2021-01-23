package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.CommonServlet;

/**
 * Servlet implementation class ScheduleServlet
 */
@WebServlet("/schedule")
public class ScheduleServlet extends CommonServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScheduleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		setParam(req, res, "year", "year", "");
		setParam(req, res, "month", "month", "");
		setParam(req, res, "day", "day", "");

		RequestDispatcher disp = req.getRequestDispatcher("/WEB-INF/jsp/schedule.jsp");
		disp.forward(req, res);
	}
}
