package tw.alex;

public class AlexAPI {
		public static boolean ckPasswd(String src, String cpasswd) {
			boolean isRight = false;
			if(cpasswd.startsWith("$2a$")) {
				isRight = BCrypt.checkpw(src,  cpasswd);
			}
			return isRight;
		}

}
