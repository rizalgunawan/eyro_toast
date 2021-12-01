package com.eyrotoast.eyro_toast;

import android.widget.Toast;
import java.util.Map;

class EyroToastData {
    private String text;
    private int duration;

    EyroToastData(String text, int duration) {
        this.text = text;
        this.duration = duration;
    }

    static EyroToastData fromObject(Object arg) {
        if (arg instanceof Map) {
            Map map = (Map) arg;
            String text = "";
            if (map.get("text") instanceof String) {
                text = (String) map.get("text");
            }

            int duration = 0;
            if (map.get("duration") instanceof Integer) {
                duration = (int) map.get("duration");
            }
            return new EyroToastData(
                    text,
                    duration);
        }

        return null;
    }

    String getText() {
        return text;
    }

    int getDuration() {
        if (duration == 0) {
            return Toast.LENGTH_SHORT;
        }
        return Toast.LENGTH_LONG;
    }
}
