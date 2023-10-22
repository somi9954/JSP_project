package tests;

import models.member.JoinService;
import models.member.Member;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

@DisplayName("회원가입 기능 단위 테스트")
public class JoinServiceTest {

    private JoinService joinService;
    @BeforeEach
    void init() {
        joinService = new JoinService();
    }

    private Member getMember() {
        return Member.builder()
                .userid("user" + System.currentTimeMillis())
                .userPw("12345678")
                .conformUserPw("12345678")
                .userNm("사용자01")
                .email("user@test.org")
                .agree(true)
                .build();
    }
    @Test
    @DisplayName("회원가입 성공시 예외 발생 하지 않음")
    void joinSuccess() {
        assertDoesNotThrow(() -> {
            joinService.join(getMember());
        });
    }
}
