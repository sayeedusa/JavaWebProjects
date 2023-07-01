
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
           *{box-sizing: border-box;}
            .column-left{
                float: left;
                width: 20%;
               padding: 10px;
               height :800px;
          
            @media screen and (max-width:1200px){
                .column-right{
                    float: right;
                    width: 80%;
                   /* height: 800px;*/
                   
                }
            }
            h2{
                align="center";
            }
            iframe{
                position:absoulate;
            }
        </style>
            
    </head>
    <body>
        <h2 align="center">ABC Company</h2>
        <div class="row">
            <div class="column-left"   style="background-color: aqua ">
                <%@include file="Menu.jsp" %> 
            
            </div>
            
            <div class="column-right" style="background-color: blueviolet">
             Following area displays data
             <iframe name="source" allowfullscreen="" height="800" width="700" border="0" > 
          <!-- <iframe name="source" style="position: absolute; height: 100%; width=700; border: 0"> -->
      This is I Frame
      </iframe>
            </div>
        </div>
        </div>
    </body>
</html>

