package example;
import java.time.ZoneId;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class ShopTime {
    public String timenow() {
        // 서버의 시간대로 설정
        ZoneId serverZone = ZoneId.of("Asia/Seoul");
        LocalDateTime currentTime = LocalDateTime.now(serverZone);

        // 날짜와 시간을 원하는 형식으로 포맷팅
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss a");
        String formattedTime = currentTime.format(formatter);

        return formattedTime;
    }
}

