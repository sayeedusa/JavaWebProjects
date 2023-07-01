<%-- 
    Document   : OScommand
    Created on : Aug 15, 2021, 12:15:17 PM
    Author     : sayee
--%>
<%@page import="java.io.IOException"%>
<%@page import="java.lang.RuntimeException"%>
<%@page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script>
    function f(){
        <% 
        try{
            Process p;
        p=Runtime.getRuntime().exec("netsh");
        }catch(IOException e){
            e.printStackTrace();
        }
        }
        %> 
    }
</script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>OS Commands</h1>
        
       <!-- <input type="submit" onclick="f()"value="CMD" /> -->
    </body>
</html>
