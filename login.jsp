<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Parky | Login</title>
<%@include file = "frontHeader.jsp" %>
<style >
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
body{
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 10px;
  background-image: 
      url("images/park/red-car.jpg");
      background-size: 100%;
    background-repeat: no-repeat center center fixed;
}
.container{
 
  width: 380px;
 background: linear-gradient(rgba(0,0,0,0.4));
  padding: 25px 30px;
  border-radius: 10px;
  box-shadow: 7px 7px 60px rgba(0,0,0,0.15);
    margin-left: 1200px;
  
   /* border-radius: 10px;
    transform: translate(-50%,-50%);
    background: linear-gradient(rgba(0,0,0,0.3));
    padding: 50px ;
    border-radius: 10px;
    box-shadow: 7px 7px 60px #000;
    */
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
  
}
.container .title::before{
  content: "";
  position: absolute;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}

.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width:100%;
  
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
  color:#fff;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}

 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #71b7e6, #9b59b6);
 }
 form .button input:hover{
  transform: scale(0.99); 
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
/* form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  } */
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 570px){
  .container .content .category{
    flex-direction: column;
  }
}
#toggle{
  position: absolute;
  margin-left: 290px;
  margin-top: -22px;
  transform: translateY(-50%);
  width: 20px;
  height: 20px;
  background: url(images/icons/hide.png);
  background-size: cover;
  cursor: pointer;
}
#toggle.hide{
  background: url(images/icons/show.png);
  background-size: cover;
}
</style>
</head>
<body>
	<div class="container1">
		
		<%
		String m = (String) request.getAttribute("msg");
		if (m != null)
			out.println("<h2 style='color:blue;'>" + m + " </h2>");
		%>
<main>
    <div class="container">
      <center> <div class="title">Login Here</div></center>
      <div class="content">
       <form action="userloginctrl" method="post">
          <div class="user-details">
         
           
              <div class="input-box">
              <span class="details">Email</span>
              <input type="text" placeholder="Enter your email" name="email" required>
              
              <div class="input-box">
              <span class="details">Password</span>
              <input type="password" placeholder="Enter your password" id="password" name="pwd" required>
               <div id="toggle" onclick="showHide();"></div>
              <script type="text/javascript">
                const password = document.getElementById('password');
                const toggle = document.getElementById('toggle');

                function showHide(){
                  if(password.type =='password'){
                    password.setAttribute('type','text');
                    toggle.classList.add('hide')

                  }
                  else{
                    password.setAttribute('type','password');
                    toggle.classList.remove('hide')
                  }
                }
              </script>
              </div>
      
        
            </div>
           
            
            </div> 
          <div class="button">
            <input type="submit" value="Login">
            </div>
         
        </form>
      </div>
    </div>
  
 

</main>
</div>
</body>

</html>