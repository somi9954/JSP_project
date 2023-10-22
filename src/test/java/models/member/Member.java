package models.member;

import lombok.Builder;
import lombok.Data;

@Builder @Data
public class Member {
    private String userId;
    private String userPw;
    private  String conformUserPw;
    private String userNm;
    private String email;
    private boolean agree; //약관 동의
}
