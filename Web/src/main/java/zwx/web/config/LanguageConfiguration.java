package zwx.web.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.core.env.Environment;

import javax.inject.Inject;
import java.nio.charset.StandardCharsets;

public class LanguageConfiguration {
    @Inject
    private Environment env; //在@Value不能获取到值的时候可以使用手动的方式 env.getProperty("spring.language.CacheValue")
    @Value("${spring.language.CacheValue}")
    private int cacheValue;

    /*
     * 多语言资源配置
     * */
    @Bean
    public MessageSource messageSource() {
        ReloadableResourceBundleMessageSource messageSource =
                new ReloadableResourceBundleMessageSource();
        messageSource.setCacheSeconds(cacheValue);
        messageSource.setDefaultEncoding(StandardCharsets.UTF_8.name());
        messageSource.setBasenames("/WEB-INF/i18n/messages","/WEB-INF/i18n/validation");
        messageSource.setUseCodeAsDefaultMessage(true);
        return messageSource;
    }
}
