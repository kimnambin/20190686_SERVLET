package example;
import java.time.ZoneId;
import java.time.LocalTime; // 현재 시간 정보 얻기

public class ShopTime {
    public String timenow() {
        // 시스템의 기본 타임존을 사용하여 현재 시간을 얻습니다.
        ZoneId systemZone = ZoneId.systemDefault();
        LocalTime currentTime = LocalTime.now(systemZone);

        int hour = currentTime.getHour();
        int minute = currentTime.getMinute();
        int second = currentTime.getSecond();
        
        String am_pm = (hour < 12) ? "AM" : "PM";
        if (hour > 12) {
            hour -= 12;
        }
        
        String CT = String.format("%02d:%02d:%02d %s", hour, minute, second, am_pm);
        return CT;
    }
}



