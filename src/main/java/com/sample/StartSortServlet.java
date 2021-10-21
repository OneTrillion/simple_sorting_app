package com.sample;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(
        name = "startsortservlet",
        urlPatterns = "/sticksAfter"
)
public class StartSortServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ProgramLogic programLogic = new ProgramLogic();
        programLogic.sortStick();

        List<Integer> stickSize = new ArrayList<>();
        for (int stick : programLogic.getStickSize()) {
            stickSize.add(stick);
        }

        req.setAttribute("StickArray2", stickSize);
        RequestDispatcher view = req.getRequestDispatcher("sticksAfter.jsp");

        view.forward(req, resp);


    }

}
