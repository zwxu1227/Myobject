package zwx.web.common;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.Locale;

public class LocaleUntil {
    /*
     * 获取当前场所，用于国际化资源
     * */
    public static Locale getLocale(HttpServletRequest request) {
        String para = request.getParameter("locale");
        Locale currentLocale = getLocaleByStr(para);
        if (currentLocale != null) {
            return currentLocale;
        }
        Cookie[] cookies = request.getCookies();
        if (cookies != null && cookies.length > 0) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("my_project_language_country")) {
                    String locale = cookie.getValue();
                    currentLocale = getLocaleByStr(locale);
                    if (currentLocale != null) {
                        return currentLocale;
                    }
                }
            }
        }
        return Locale.CHINA;
    }

    private static Locale getLocaleByStr(String locale) {
        if (locale != null && locale.split("_").length == 2) {
            String language = locale.split("_")[0];
            String country = locale.split("_")[1];
            return new Locale(language, country);
        }
        return null;
    }
}
