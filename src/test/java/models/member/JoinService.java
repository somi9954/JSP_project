package models.member;

import commons.BadRequestException;
import commons.Validator;

public class JoinService {

    private Validator validator;
    private MemberDao memberDao;

    public JoinService(MemberDao memberDao, Validator validator) {
        this.memberDao = memberDao;
        this.validator = validator;
    }

    public void join(Member member) {

        validator.check(member);

        memberDao.register(member);
    }
}
