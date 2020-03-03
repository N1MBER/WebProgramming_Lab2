

import javax.annotation.ManagedBean;
import javax.ejb.Stateful;
import java.util.ArrayList;
import java.util.LinkedList;

//@Stateful
public class JustBean {
    private LinkedList<AreaCheckServlet.Point> points = new LinkedList<>();

    public JustBean(){
    }

    public JustBean(AreaCheckServlet.Point point){
        points.add(point);
    }

    public void setPoints(AreaCheckServlet.Point points) {
        this.points.add(points);
    }

    public LinkedList<AreaCheckServlet.Point> getPoints() {
        return points;
    }

}
