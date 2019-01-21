package zwx.web.config;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Validator;
import org.springframework.validation.beanvalidation.SpringValidatorAdapter;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.RequestToViewNameTranslator;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.i18n.CookieLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.view.DefaultRequestToViewNameTranslator;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;
import zwx.web.config.filter.LoginInterceptor;

import javax.inject.Inject;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Locale;


@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "zwx.web.controller",
        useDefaultFilters = false,
        includeFilters = @ComponentScan.Filter(Controller.class)
)
public class ServletContextConfiguration implements WebMvcConfigurer {
    private static final Logger log = LogManager.getLogger();

    @Inject
    SpringValidatorAdapter validator;

    /*
 * 添加拦截器
 * */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor()).excludePathPatterns("/static/*", "/", "/home", "/home/index");
        registry.addInterceptor(new LocaleChangeInterceptor());
    }
    /*
    验证需要（ValidateConfiguration）
    **/
    @Override
    public Validator getValidator() {
        return this.validator;
    }

    /*
    *设置为utf-8编码
    * */
    @Override
    public void extendMessageConverters(List <HttpMessageConverter <?>> converters) {
        StringHttpMessageConverter stringConverter = new StringHttpMessageConverter(Charset.forName("UTF-8"));
        converters.add(0, stringConverter);
    }

    /*
    * 设置locale存储方式为cookie
    * */
    @Bean
    public LocaleResolver localeResolver() {
        CookieLocaleResolver cookieLocaleResolver = new CookieLocaleResolver();
        cookieLocaleResolver.setDefaultLocale(Locale.CHINA);
        cookieLocaleResolver.setCookieName("my_project_language_country");
        cookieLocaleResolver.setCookieHttpOnly(true);
        cookieLocaleResolver.setCookieMaxAge(60 * 60 * 24 * 30);//过期时间30天
        cookieLocaleResolver.setCookiePath("/");
        return cookieLocaleResolver;
    }

    /*
   * 视图信息配置
   * */
    @Bean
    public ViewResolver viewResolver() {
        InternalResourceViewResolver resolver =
                new InternalResourceViewResolver();
        resolver.setViewClass(JstlView.class);
        resolver.setPrefix("/WEB-INF/jsp/");
        resolver.setSuffix(".jsp");
        return resolver;
    }

    /*
     * 默认视图名称转换
     * */
    @Bean
    public RequestToViewNameTranslator viewNameTranslator() {
        return new DefaultRequestToViewNameTranslator();
    }

    /*
    * 当前上下文全局异常处理
    * */
    @Bean
    public MyExceptionHandler myExceptionHandler() {
        MyExceptionHandler myExceptionHandler = new MyExceptionHandler();
        return myExceptionHandler;
    }
}
