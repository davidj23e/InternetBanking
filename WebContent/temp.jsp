<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <style type="text/css">
  .dropdown-content{  
                      position:relative;
                      box-shadow:0px 8px 16px 0px;
                      z-index:1;
                     }
       
  </style>
  <script type="application/javascript">
    function check()
      {
        var pas=document.getElementById('p1').value;
        var cpas=document.getElementById('p2').value;
        if(pas==cpas)
        {  
           document.getElementById('t1').innerHTML="<span text-align:center style='color:green;'>Password Matched</span>";
          
        }
        else
        {  document.getElementById('t1').innerHTML="<span text-align:center style='color:red;'>Password Mismatch</span>";
        }
      }
      function validate()
      {
          var x=document.signupform.uname.value;
          return true;
          
      }
  </script>

    
<title>email_verify</title>
</head>
<body style=" background-color:rgba(0,0,255,0.09);" >
    <form action="PreRegdData" method='POST' name='PreRegdData' onsubmit="return validate()">
      <div align="center" style=" background-color:white;">
        <table align="center"width=720 height=100 >
        <tr>
            <td  width=250 ><img src="C:\Users\Asus\Desktop\logo.jpg" width="250" height="100"></td>
          <td  width=470 bgcolor=white ><img src="C:\Users\Asus\Desktop\logo3.jpg" align="left" width="353" height="61"></td>
            </tr>
        </table></div>
        <table class="dropdown-content" align="center" width=720 height=400>
            <tr align="center"bgcolor="skyblue">
                <td align="center" width=720 height=400>
                    <table align="center" width=720 height=400>

                     <h1>
                     <font  color="white" style=" color:darkblue; font-family:Consolas">Welcome to Friendly Bank Pre Registration Portal</font></h1>
                     <p align=center>Already Signed Up?Then <a href="SignIn.html">SignIn</a></p>
                     <tr align="center">
                   <td align="right"><font  color="darkblue" style="font-family:Consolas">EMAIL-ID  :</font></td>
                   <td align="left"colspan=2><input class="p" type="email" name="email" required></td>
                    </tr>
                    <tr align="center">
                    <td align="right"><font  color="darkblue" style="font-family:Consolas">PASSWORD :</font></td>
                    <td align="left"colspan=2><input class="p" id="p1" type="password" name="pass" required></td>
                    </tr>
                    <tr align="center">
                    <td align="right"><font  color="darkblue" style="font-family:Consolas">CONF PWD :</font></td>
                    <td align="left">
                      <table ><tr><td>
                      <input class="p" id="p2" type="password" name="ucpass" oninput="check()" required></td>
                        <td id="t1" align="right"></td></tr></table></td>
                    </tr>
                    <tr>
                    <td colspan=3><font  color="darkblue" style="font-family:Consolas">A verification link will be send to your Email Id.PLease click on Send Button to receive the Verification link</font></td>
                  </tr>
                <tr>
                 <td  align="right"><button  type="reset" style="font-family:Consolas;text-align:center;background-color:skyblue;"><font size="3" color="white">Reset</font></button></td>
                 <td  align="left"><button  type="submit" style="font-family:Consolas;text-align:center;background-color:darkblue;"><font size="3" color="white">Send</font></button></td>
                 <td align="left"></td>
                </tr>
                </table>
            </tr>
        </table>

</form>
</body>
</html>