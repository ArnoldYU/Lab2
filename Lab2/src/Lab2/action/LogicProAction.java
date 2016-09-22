package Lab2.action;

import com.opensymphony.xwork2.Action;

import Lab2.domin.User;
import Lab2.service.UserService;

public class LogicProAction implements Action {

	private User user;
	
	public User getUser() {
		return user; 
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String execute() throws Exception {
		UserService us =new UserService();
		Integer id= us.validateLogic(user);
		if (id>0){
			return SUCCESS; 
		}
		return ERROR;
	}
	public String regist(){
		UserService us=new UserService();
		us.addUser(user);
		return SUCCESS;
	}
}
