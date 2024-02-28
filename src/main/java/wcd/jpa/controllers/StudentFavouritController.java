package wcd.jpa.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import wcd.jpa.entities.Student;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet(value = "/list-favourit")
public class StudentFavouritController extends HttpServlet {
    private SessionFactory sessionFactory;
    @Override
    public void init() throws ServletException {
        try{
            sessionFactory = new Configuration()
                    .configure("hibernate.cfg.xml").buildSessionFactory();
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Student> likedStudents = getAllLikedStudents(req.getSession());

        req.setAttribute("likedStudents", likedStudents);
        req.getRequestDispatcher("student/list_favourit.jsp").forward(req, resp);
    }


    private List<Student> getAllLikedStudents(HttpSession httpSession) {
        return httpSession.getAttribute("likeds") != null
                ? (List<Student>) httpSession.getAttribute("likeds")
                : new ArrayList<>();
    }
}
