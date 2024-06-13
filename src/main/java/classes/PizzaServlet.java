package classes;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class PizzaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/pizza.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html;charset=UTF-8");
        String pizza = request.getParameter("pizza");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");

        String[] toppings = request.getParameterValues("toppings");
        StringBuilder toppingsList = new StringBuilder();
        if (toppings != null && toppings.length > 0) {
            for (String topping : toppings) {
                toppingsList.append(topping).append(", ");
            }
        }
        if (pizza == null || pizza.trim().isEmpty() ||
                name == null || name.trim().isEmpty() ||
                phone == null || phone.trim().isEmpty() ||
                email == null || email.trim().isEmpty() ||
                address == null || address.trim().isEmpty()) {
            response.getWriter().println("<h1>Please fill in all the fields.</h1>");
            return;
        }
        if (!isValidAddress(address)) {
            response.getWriter().println("<h1>Sorry, we do not deliver to your address.</h1>");
            return;
        }
        PrintWriter out = response.getWriter();
        out.println("<h1>Thanks for your order, " + name + "!</h1>");
        out.println("<p>Your order: " + pizza + "</p>");
        if (toppingsList.length() > 0) {
            out.println("<p>Toppings: " + toppingsList.toString().substring(0, toppingsList.length() - 2) + "</p>");
        }
        out.println("<p>We will contact you by phone " + phone + "</p>");
    }
    private boolean isValidAddress(String address) {
        String[] validAreas = {
                "Republic Avenue",
                "Kenesary street",
                "Abay street",
                "Saken Seifullin street",
                "Mukhtar Auezov street"
        };
        for (String area : validAreas) {
            if (address.contains(area)) {
                return true;
            }
        }
        return false;
    }
}
