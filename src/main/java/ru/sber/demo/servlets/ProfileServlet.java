package ru.sber.demo.servlets;

import ru.sber.demo.model.user.User;
import ru.sber.demo.repo.user.MemoryUserRepoImpl;
import ru.sber.demo.repo.user.UserRepo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Optional;

@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {
    private UserRepo userRepo;

    @Override
    public void init() throws ServletException {
        userRepo = new MemoryUserRepoImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Optional<User> user = userRepo.findById(id);
        if (user.isPresent()) {
            req.setAttribute("userProfile", user.get());
        }
        req.getServletContext()
                .getRequestDispatcher("/pages/profile.jsp")
                .forward(req, resp);
    }
}
