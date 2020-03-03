import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;

public class AreaCheckServlet extends HttpServlet {
    private JustBean justBean;

    @Override
    public void init() throws ServletException {
        justBean = new JustBean();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/controller");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        boolean flagX = false;
        boolean flagY = false;
        boolean flagR = false;
        double x =0;
        double r =0;
        double y =0;
        boolean inArea = false;
        try{
            out.println("<!DOCTYPE html>" +
                    "<html>" +
                    "<head>" +
                    "<title>Response</title>" +
                    "<meta charset='utf-8'>" +
                    "<link rel='stylesheet' type='text/css' href='table.css'>" +
                    "</head>" +
                    "<body>" +
                    "<div class = 'messages'>");

            try {
                x = Double.parseDouble(request.getParameter("selectX").replace(',','.').trim());
                if ( x<-4 || x>4){
                    out.println("\"X\" is out of range</br>");
                }else
                    flagX = true;
            }catch (NumberFormatException e){
                out.println("\"X\" is not a number</br>");
            }

            try {
                y = Double.parseDouble(request.getParameter("texty").replace(',','.').trim());
                if ( y<-3 || y>3){
                    out.println("\"Y\" is out of range</br>");
                }else
                    flagY = true;
            }catch (NumberFormatException e){
                out.println("\"Y\" is not a number</br>");
            }

            try {
                r = Double.parseDouble(request.getParameter("r").replace(',','.').trim());
                if ( r<1 || r>5){
                    out.println("\"R\" is out of range</br>");
                }else
                    flagR = true;
            }catch (NumberFormatException e){
                out.println("\"R\" is not a number</br>");
            }
            System.out.println("X=" + x + flagX+" Y="+y+flagY+" R="+r + flagR + " Hit: " + new AreaCheckServlet.Point(x,y,r).isInArea);
            out.println("</div>");
            out.println("<table  align='center' id='result_count'>" +
                    "<tr id = 'header' class='contik'>" +
                    "<th><h5> X </h5></th>" +
                    "<th><h5> Y </h5></th>" +
                    "<th><h5> R </h5></th>" +
                    "<th><h5> Hit </h5></th>" +
                    "</tr>");
            AreaCheckServlet.Point point = new AreaCheckServlet.Point(x,y,r);

            if (flagX && flagY && flagR){
                justBean.setPoints(point);
            }
            else
                out.println("<p>Incorrect input</p>");
            LinkedList<AreaCheckServlet.Point> points = justBean.getPoints();
            Collections.reverse(points);
            Iterator<AreaCheckServlet.Point> iterator = points.iterator();
            while (iterator.hasNext()){
                AreaCheckServlet.Point p = iterator.next();
                out.println("<tr class='contik'>" +
                        "<td>" + p.getX() + "</td>" +
                        "<td>" + p.getY() + "</td>" +
                        "<td>" + p.getR() + "</td>" +
                        "<td>" + p.isInArea() + "</td>" +
                        "</tr>");
            }
            out.println("</table>");
        }finally {
            out.close();
        }
    }

    public class Point{

        private double x;
        private double y;
        private double r;
        private boolean isInArea;

        public Point(double x, double y, double r){
            this.x = x;
            this.y = y;
            this.r = r;
            isInArea = setInArea(x,y,r);
        }

        public double getX() {
            return x;
        }

        public double getY() {
            return y;
        }

        public double getR() {
            return r;
        }

        public boolean isInArea() {
            return isInArea;
        }

        public boolean setInArea(double x, double y, double r) {
            boolean inArea = false;
            if (x == 0 && y >=r/2 && y <= r ){
                inArea = true;
                return inArea;
            }
            if(x > 0 && y>0){
                inArea = false;
                return inArea;
            }
            if(x>=0 && y<=0){
                if (x<=r/2 && -y<=r){
                    inArea = true;
                }else inArea = false;
                return inArea;
            }
            if(x<=0 && y<0){
                if (Math.sqrt((x*x) + (y*y)) <=r/2){
                    inArea = true;
                }
                else inArea = false;
                return inArea;
            }
            if(x<0 && y>=0){
                inArea = -y >= -x-r;
                return inArea;
            }
            inArea = false;
            return inArea;
        }
    }
}
