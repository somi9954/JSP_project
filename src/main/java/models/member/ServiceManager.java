package models.member;

import commons.Validator;
import jakarta.servlet.http.HttpServletRequest;


public class ServiceManager {

    private static ServiceManager instance;

    private ServiceManager() {}

    public static ServiceManager getInstance() {
        if (instance == null) {
            instance = new ServiceManager();
        }

        return instance;
    }

    public MemberDao memberDao() {
        return new MemberDao();
    }

    public JoinValidator joinValidator() {
        JoinValidator validator = new JoinValidator();
        validator.setMemberDao(memberDao());

        return validator;
    }

    public JoinService joinService() {
        return new JoinService(joinValidator(),memberDao());
    }
    public MobileValidator mobileValidator() {
        MobileValidator validator = new MobileValidator();
        validator.setMemberDao(memberDao());
        return validator;
    }

    public LoginValidator loginValidator() {

        return new LoginValidator(memberDao());
    }

    public LoginService loginService() {
        return new LoginService(loginValidator(), memberDao());
    }

}
