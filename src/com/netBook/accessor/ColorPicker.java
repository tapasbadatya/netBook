package com.netBook.accessor;

import java.util.Properties;

/**
 * Created by admin on 15-05-2018.
 */
public class ColorPicker {
    private static Properties properties;
    static {
        properties = new Properties();
        try {
            properties.load(ColorPicker.class.getClassLoader().getResourceAsStream("com/netBook/files/color.properties"));
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }
    private String value;
    public static String getColor(String key){
        String value=null;
        value = properties.getProperty(key);
        return value;

    }


}
