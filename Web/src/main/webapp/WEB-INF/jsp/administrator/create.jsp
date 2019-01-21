<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/start.jspf" %>
<%--放置特有的css文件--%>
<%@include file="/WEB-INF/header.jspf" %>
<%--模板的中心区域--%>
<div class="col-md-8 donate-right">
    <div class="donate-top">
        <h3><spring:message code="administrator.create.notice"/></h3>
        <form action="<c:url value="/administrator/create"/>" method="post">
            <div>
                <span><spring:message code="administrator.userName"></spring:message><label>:</label></span>
                <input type="text" name="userName" value="${admin.userName}"/>
                <span style="margin-left: 850px;margin-top: -60px; color: red;width: 200px;">${userName}</span>
            </div>
            <div class="clearfix"></div>
            <div>
                <span><spring:message code="administrator.name"/><label>:</label></span>
                <input type="text" name="name" value="${admin.name}"/>
                <span style="margin-left: 850px;margin-top: -60px; color: red;width: 200px;">${name}</span>
            </div>
            <div class="clearfix"></div>
            <div>
                <span><spring:message code="administrator.pwd"/><label>:</label></span>
                <input type="text" name="pwd" value="${admin.pwd}"/>
                <span style="margin-left: 850px;margin-top: -60px; color: red;width: 200px;">${pwd}</span>
            </div>
            <div class="clearfix"></div>
            <div>
                <span><spring:message code="administrator.email"/><label>:</label></span>
                <input type="text" name="email" value="${admin.email}"/>
                <span style="margin-left: 850px;margin-top: -60px; color: red;width: 200px;">${email}</span>
            </div>
            <div class="clearfix"></div>
            <div>
                <span><spring:message code="administrator.phone"/><label>:</label></span>
                <input type="text" name="phone" value="${admin.phone}"/>
                <span style="margin-left: 850px;margin-top: -60px; color: red;width: 200px;">${phone}</span>
            </div>
            <div class="clearfix"></div>
            <%--<div>--%>
                <%--<span>State<label>:</label></span>--%>
                <%--<select name="city">--%>
                    <%--<option value="select your location"> states</option>--%>
                    <%--<option value="saab">location1</option>--%>
                    <%--<option value="fiat">location2</option>--%>
                    <%--<option value="audi">location3</option>--%>
                <%--</select>--%>
            <%--</div>--%>
            <%--<div class="clearfix"></div>--%>
            <input type="submit" value="<spring:message code="administrator.create"/> ">

        </form>
    </div>
    <div class="clearfix"></div>
</div>
<%@include file="/WEB-INF/footer.jspf" %>
<%--放置特有的js文件--%>
<%@include file="/WEB-INF/end.jspf" %>

