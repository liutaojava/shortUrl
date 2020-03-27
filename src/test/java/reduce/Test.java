package reduce;

public class Test {

	public static void main(String[] args) {
		System.out.println(isWhirled("阿呆阿呆"));
	}

	private static boolean isWhirled(String content) {
		return content.equals(new StringBuilder(content).reverse().toString());
	}
}
