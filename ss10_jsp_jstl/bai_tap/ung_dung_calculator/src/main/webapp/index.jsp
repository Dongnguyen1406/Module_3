<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1>Simple Calculator</h1>
<form action="/calculate" method="post">
    <fieldset>
        <legend>
            Calculator
        </legend>
        <table>
            <tr>
                <td>First operand: </td>
                <td><input name="first-operand" type="text"/></td>
            </tr>
            <tr>
                <td>Operator</td>
                <td>
                    <select name="operator" id="">
                        <option value="+">Addition</option>
                        <option value="-">Subtraction</option>
                        <option value="*">Multiplication</option>
                        <option value="/">Division</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Second operand: </td>
                <td><input name="second-operand" type="text"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Calculator"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>