import static spark.Spark.*;
import com.google.gson.Gson;

class Number {
	int a;
	int b;

	public Number() {
	}

	int getA() {
		return this.a;
	}
	int getB() {
		return this.b;
	}

	@Override
	public String toString() {
		return "Number{" +
				"A=" + a +
				", B=" + b +
				'}';
	}
}

class Difference {
	int diff;

	public Difference() { }

	int getDiff() {
		return this.diff;
	}
	void setDiff(int d) {
		this.diff = d;
	}
}

public class Main {
    public static void main(String[] args) {
	post("/subtract", (request, response) -> {
   	    Number n = new Gson().fromJson(request.body(), Number.class);
		Difference diff = new Difference();
	    diff.setDiff(n.getA() - n.getB());

	    response.status(200);
		response.type("application/json");
//		response.body(new Gson().toJson(diff));
		return new Gson().toJson(diff);
	});
    }
}
