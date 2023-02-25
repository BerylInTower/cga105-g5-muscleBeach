package com.musclebeach.mem.controller;

import com.musclebeach.common.util.ApplicationContextUtil;
import com.musclebeach.mem.model.MemService;
import org.springframework.context.ApplicationContext;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ActiveServlet")
public class ActiveServlet extends HttpServlet {

    private final ApplicationContext context = ApplicationContextUtil.getContext();
    private final MemService memService = context.getBean(MemService.class);

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String account = request.getParameter("active").trim();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        memService.updateStatusByMail(account);
        String memName = memService.getAccount(account).getMemName();
        PrintWriter out = response.getWriter();
        out.println("<h2>");
        out.println("親愛的會員 " + memName + " 您好, 您已成功驗證您的信箱！Muscle Beach 歡迎您的加入🚩");
        out.println("</h2>");
        out.println("將於 <span id=\"countdown\">5</span> 秒後重導至首頁...");

        // Add the redirect code after 5 seconds
        out.println("<script>");
        out.println("var countdown = 5;\r\n"
                + "  var intervalId = setInterval(function() {\r\n"
                + "    countdown--;\r\n"
                + "    document.getElementById(\"countdown\").innerHTML = countdown;\r\n"
                + "    if (countdown === 0) {\r\n"
                + "      clearInterval(intervalId);\r\n"
                + "      window.location.href = \"http://localhost:8080/cga105_g5_war_exploded/front-end/index.html\";\r\n"
                + "    }\r\n"
                + "  }, 1000);");
        out.println("</script>");
    }
}
