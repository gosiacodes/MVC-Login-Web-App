package aPackage;

public class aBean {

	private String userName, mailAdress, password, user;
	
	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
		
	}
	
	public String getMailAdress() {
		return mailAdress;
	}
	
	public void setMailAdress(String mailAdress) {
		this.mailAdress = mailAdress;
		
	}
	
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
		
	}

	protected String[] accountNameList = new String[]{"Gosia","Julia","Kacper","Marcin"};
	protected String[] accountMailList = new String[]{"gosia.pick@gmail.com","julia@gmail.com","kacper@gmail.com","marcin@gmail.com"};
	protected String[] accountPasswordList = new String[]{"admin","julia123","kacper123","marcin123"};
	
	
	public boolean validate() {
		if(userName.contentEquals(accountNameList[0]) && mailAdress.contentEquals(accountMailList[0]) && password.contentEquals(accountPasswordList[0]) ||
				userName.contentEquals(accountNameList[1]) && mailAdress.contentEquals(accountMailList[1]) && password.contentEquals(accountPasswordList[1]) ||
				userName.contentEquals(accountNameList[2]) && mailAdress.contentEquals(accountMailList[2]) && password.contentEquals(accountPasswordList[2]) ||
				userName.contentEquals(accountNameList[3]) && mailAdress.contentEquals(accountMailList[3]) && password.contentEquals(accountPasswordList[3]) ) {
			return true;
		}
		else {
			return false;
		}
		
	}
	
	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
		
	}
	
	public boolean validate2() {
		if(user.contentEquals(accountNameList[0]) || user.contentEquals(accountNameList[1]) || 
				user.contentEquals(accountNameList[2]) || user.contentEquals(accountNameList[3])) {
			return true;
		}
		else {
			return false;
		}
		
	}

}
