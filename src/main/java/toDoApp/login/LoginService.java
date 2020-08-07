package toDoApp.login;

public class LoginService {

    public boolean isUserValid(String user, String password){
        if (user.equals("sasindu") && password.equals("123"))
            return true;

        return false;
    }
}
