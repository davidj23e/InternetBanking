<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<style type="text/css">
       
	</style>
	<script type="application/javascript">
    function check()
      {
        var pas=document.getElementById('p1').value;
        var cpas=document.getElementById('p2').value;
        if(pas==cpas)
        {  
           document.getElementById('t1').innerHTML="<span style='color:green;'>Password Matched</span>";
          
        }
        else
        {  document.getElementById('t1').innerHTML="<span style='color:red;'>Password Mismatch</span>";
        }
      }
      function validate()
      {
          var x=document.signupform.uname.value;
          return true;
          
      }
	</script>

    
<title>Register</title>
</head>
<body bgcolor="white" onload="call()">
    <form action="SignUp" method='POST' name='signupform' onsubmit="return validate()">
        <table width=1520 height=100 >
    		<tr>
    		    <td  width=250 ><img src="C:\Users\Asus\Desktop\logo.jpg" width="250" height="100"></td>
    			<td  width=1270 bgcolor"white" ><img src="C:\Users\Asus\Desktop\logo3.jpg" align="center" width="353" height="61"></td>
            </tr>
        </table>
        <table  align="center" width=1520 height=620>
            <tr align="center"bgcolor="skyblue">
                <td align="left"><img src="C:\Users\Asus\Desktop\logo6.jpg" name='SlideShow' width=350 height=472></td>
                <td align="center" width=720 height=620>
                    <table align="center" width=720 height=620>

                     <h1><font  color="white" style=" color:darkblue; font-family:Consolas">Welcome to Friendly Bank Online Registration</h1>
                    <tr align="center">
                    <td align="right"><font  color="darkblue" style="font-family:Consolas">FIRST NAME:</td>
                    <td align="left"><input class="p" type="text" name="uname" required></td>
                    </tr>
                    <tr align="center">
                    <td align="right"><font  color="darkblue" style="font-family:Consolas">MIDDLE NAME:</td>
                    <td align="left"><input class="p" type="text" name="uname" required></td>
                    </tr>
                    <tr align="center">
                    <td align="right"><font  color="darkblue" style="font-family:Consolas">LAST NAME:</td>
                    <td align="left"><input class="p" type="text" name="uname" required></td>
                    </tr>
                    <tr align="center">
                    <td align="right"><font  color="darkblue" style="font-family:Consolas">PASSWORD :</td>
                    <td align="left"><input class="p" id="p1" type="password" name="upass" required></td>
                    </tr>
                    <tr align="center">
                    <td align="right"><font  color="darkblue" style="font-family:Consolas">CONF PWD  :</td>
                    <td align="left"><input class="p" id="p2" type="password" name="ucpass" oninput="check()" required></td>
                    <td colspan=2 id="t1" align="left" style="color:green;"></td>
                    </tr>
                    
  
                    <tr align="center">
                  <td align="right"><font  color="darkblue" style="font-family:Consolas">EMAIL-ID  :</td>
                  <td id="e1" align="left"><%=request.getParameter("mail") %></td>
                </tr>
                 <tr align="center">
                  <td align="right"><font  color="darkblue" style="font-family:Consolas">ADDRESS :</td>
                  <td align="left"><input class="p" type="textarea" name="uaddr" required></td>
                </tr>
                <tr align="center">
                 <th align="right"><font  color="darkblue" style="font-family:Consolas">GENDER :</th>
                 <td align="left"><input type="radio" name="gen" value=male><font  color="darkblue" style="font-family:Consolas">Male<input type="radio" name="gen" value=female><font  color="darkblue" style="font-family:Consolas">Female</td>
                </tr>
                <tr align="center">
                  <td align="right"><font  color="darkblue" style="font-family:Consolas">MOBILE-NO :</td>
                  <td align="left"><input class="p" type="number" name="umob" required></td>
                </tr>
                <tr>
                 <td align="left"></td>
                 <td  align="left"><button  type="button" style="font-family:Consolas;text-align:center;background-color:darkblue;"><font size="3" color="white">Register</font></button></td>
                </tr>
                <tr>
                    <td align="left"></td>
                    <td  align="left"><button  type="reset" style="font-family:Consolas;text-align:center;background-color:skyblue;"><font size="3" color="white">Reset</font></button></td>
                </tr>
                <tr align="center">
                  <td colspan=2 id=t1 style='text-align:center'></td>
                </tr>
                <p align=center>Already Signed Up?Then <a href="SignIn.html">SignIn</a></p>
                </table>

                </td>
                <td align="right"><img src="C:\Users\Asus\Desktop\download.jpg" name='SlideShow' width=200 height272></td>
            </tr>
        </table>

</form>
</body>
</html>