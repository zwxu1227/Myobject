package zwx.web.config;

import org.springframework.context.annotation.*;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.stereotype.Controller;

@Configuration
@ComponentScan(
        basePackages = {
                "zwx.service.implement",
                "zwx.dal.jpa"},
        excludeFilters = @ComponentScan.Filter(Controller.class)
)
@PropertySource({"classpath:MyProject.properties","classpath:database.properties"})//导入资源配置文件
@Import({
        ScheduleConfiguration.class,
        LanguageConfiguration.class,
        DataBaseConfiguration.class,
        ValidateConfiguration.class,
        JPAConfiguration.class
})//导入class配置
//@ImportResource("classpath:1.xml")//导入xml配置
public class RootContextConfiguration {
    /*
     * 先加载资源
     * */
    @Bean
    public static PropertySourcesPlaceholderConfigurer propertyConfigurer() {
        return new PropertySourcesPlaceholderConfigurer();
    }
}
