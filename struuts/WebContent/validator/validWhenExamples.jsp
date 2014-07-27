<%@ page contentType="text/html;charset=UTF-8" language="java" %><%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %><%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %><%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %><%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested" %>
<html:html>
  <head>
    <title><bean:message key="validWhenExamples.title" /></title>
    <html:base />
  </head>
  <body bgcolor="white">

    <h2><bean:message key="validWhenExamples.description"/></h2>
    <p><i><bean:message key="file.location" arg0="validation.xml" arg1="/webapps/struts-examples/WEB-INF/validator"/></i></h2>

    <html:form action="validateValidWhenExamples">
      <table border="0">
        
      <!-- Simple Validation -->
      <p><strong><font color="blue"><bean:message key="validWhenForm.example.simple"/></font></strong>
                 <bean:message key="validWhenForm.example.simple.desc"/></p> 
      <table border="0">
        <tr>
          <td align="right"><b><bean:message key="validWhenForm.firstName" /></b></td>
          <td align="left"><b><html:text property="firstName" size="20" maxlength="50" /></b></td>
          <td align="right"><b><bean:message key="validWhenForm.lastName" /></b></td>
          <td align="left"><b><html:text property="lastName" size="20" maxlength="50" /></b></td>
          <td align="left"><font color="red"><html:errors property="lastName" header="empty"/></font>&nbsp;</td>
        </tr>
      </table>

      <!-- Both Fields -->
      <p><strong><font color="blue"><bean:message key="validWhenForm.example.both"/></font></strong>
                 <bean:message key="validWhenForm.example.both.desc"/></p> 
      <table border="0">
        <tr>
          <td align="left"><b><html:text property="fieldA" size="10" maxlength="10" /></b></td>
          <td align="left"><b><html:text property="fieldB" size="10" maxlength="10" /></b></td>
          <td align="left"><font color="red"><html:errors property="fieldA" header="empty"/></font>&nbsp;</td>
        </tr>
      </table>
        
      <!-- Numeric Compare Validation -->
      <p><strong><font color="blue"><bean:message key="validWhenForm.example.numeric"/></font></strong>
                 <bean:message key="validWhenForm.example.numeric.desc"/></p> 
      <table border="0">
        <tr>
          <td align="right"><b><bean:message key="validWhenForm.min" /></b></td>
          <td align="left"><b><html:text property="min" size="10" maxlength="10" /></b></td>
          <td align="right"><b><bean:message key="validWhenForm.max" /></b></td>
          <td align="left"><b><html:text property="max" size="10" maxlength="10" /></b></td>
          <td align="left"><font color="red"><html:errors property="max" header="empty"/></font>&nbsp;</td>
        </tr>
      </table>
        
      <!-- Address Validation -->
      <p><strong><font color="blue"><bean:message key="validWhenForm.example.address"/></font></strong>
                 <bean:message key="validWhenForm.example.address.desc"/></p> 
      <table border="0">
        <tr>
          <td align="right"><b><bean:message key="validWhenForm.address1" /></b></td>
          <td align="left"><b><html:text property="address1" size="20" maxlength="50" /></b></td>
          <td align="left"><font color="red"><html:errors property="address1" header="empty"/></font>&nbsp;</td>
        </tr>
        <tr>
          <td align="right"><b><bean:message key="validWhenForm.address2" /></b></td>
          <td align="left"><b><html:text property="address2" size="20" maxlength="50" /></b></td>
          <td align="left"><font color="red"><html:errors property="address2" header="empty"/></font>&nbsp;</td>
        </tr>
        <tr>
          <td align="right"><b><bean:message key="validWhenForm.city" /></b></td>
          <td align="left"><b><html:text property="city" size="20" maxlength="50" /></b></td>
          <td align="left"><font color="red"><html:errors property="city" header="empty"/></font>&nbsp;</td>
        </tr>
        <tr>
          <td align="right"><b><bean:message key="validWhenForm.zip" /></b></td>
          <td align="left"><b><html:text property="zip" size="20" maxlength="50" /></b></td>
          <td align="left"><font color="red"><html:errors property="zip" header="empty"/></font>&nbsp;</td>
        </tr>
      </table>

      <!-- Buttons -->
      <table border="0">
        <tr>
          <td><html:submit><bean:message key="button.save" /></html:submit></td>
          <td><html:reset><bean:message key="button.reset" /></html:reset></td>
          <td><html:cancel><bean:message key="button.cancel" /></html:cancel></td>
        </tr>
      </table>
    </html:form>

    <hr />
    <br />
    <p><strong><bean:message key="validWhenExamples.notes.heading"/></strong></p>
    <ul>
        <li><bean:message key="validWhenExamples.notes1"/></li>
        <li><bean:message key="validWhenExamples.notes2"/></li>
        <li><bean:message key="validWhenExamples.notes3"/></li>
        <li><bean:message key="validWhenExamples.notes4"/></li>
    </ul>

    <br />
    <p><strong><bean:message key="validWhenExamples.problems.heading"/></strong></p>
    <ul>
        <li><bean:message key="validWhenExamples.problems1"/></li>
        <li><bean:message key="validWhenExamples.problems2"/></li>
        <li><bean:message key="validWhenExamples.problems3"/></li>
        <li><bean:message key="validWhenExamples.problems4"/></li>
        <li><bean:message key="validWhenExamples.problems5"/></li>
    </ul>

  </body>
</html:html>
