package models.member;

import commons.BadRequestException;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EmailValidator {
    private MemberDao memberDao;

    public void setMemberDao(MemberDao memberDao) {
        this.memberDao = memberDao;
    }


    public static boolean emailCheck(String email) {
        if (email == null || email.isEmpty()) {
            return false;
        }else if (!email.contains("@")) {
         return false;
        }
        String pattern="^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*\\.[a-zA-Z]{2,}$";
        Pattern emailPattern = Pattern.compile(pattern);

        // Matcher를 사용하여 패턴과 이메일 주소 비교
        Matcher matcher = emailPattern.matcher(email);

        // 일치하는 경우 true 반환, 그렇지 않으면 false 반환
        return matcher.matches();
    }
}

