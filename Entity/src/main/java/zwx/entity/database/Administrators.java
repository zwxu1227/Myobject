package zwx.entity.database;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "Administrators")
public class Administrators   {

    private long id;
    @NotNull(message = "{administrator.create.userName.required.msg}")
    @Size(min = 1,max = 20,message ="{administrator.create.userName.size.msg}" )
    private String userName;
    @Size(min = 1,max = 20,message ="{administrator.create.name.size.msg}" )
    @NotNull(message = "{administrator.create.name.required.msg}")
    private String name;
    @Size(min = 1,max = 20,message ="{administrator.create.pwd.size.msg}" )
    @NotNull(message = "{administrator.create.pwd.required.msg}")
    private String pwd;
    @Size(min = 1,max = 20,message ="{administrator.create.email.size.msg}" )
    @NotNull(message = "{administrator.create.email.required.msg}")
    @Email(message = "{administrator.create.email.error.msg}")
    private String email;
    @Size(min = 1,max = 20,message ="{administrator.create.phone.size.msg}" )
    @NotNull(message = "{administrator.create.phone.required.msg}")
    @Pattern(message ="{administrator.create.phone.error.msg}",regexp = "^1[0-9]{10}$")
    private String phone;
    private String code;
    private long state;
    private String imagePath;
    private java.sql.Timestamp regTime;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }


    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }


    public long getState() {
        return state;
    }

    public void setState(long state) {
        this.state = state;
    }


    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }


    public java.sql.Timestamp getRegTime() {
        return regTime;
    }

    public void setRegTime(java.sql.Timestamp regTime) {
        this.regTime = regTime;
    }

}
