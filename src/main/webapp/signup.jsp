<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>SIGNUP</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
        <style>
          body{
    		background-image: url("background.jpg");
    		background-color: #cccccc;
    		background-repeat: no-repeat;
    		background-size: cover;
    }
    .container{
        position:relative;
        display:flex;
        justify-content:center;
        align-items:center;
        margin-top: 100px;
    }
    .container .drop{
        position: relative;
        width: 600px;
        height: 600px;
        background: #cee2c9;
        box-shadow: inset 20px 20px 20px rgba(0, 0, 0, 0.05), 25px 35px 20px rgba(0, 0, 0, 0.05), 25px 30px 30px rgba(0, 0, 0, 0.05), inset -20px -20px 25px rgba(255, 255, 255, 0.9);
        transition: 0.5s;
        display: flex;
        justify-content: center;
        align-items: center;
        border-radius: 70% 30% 31% 69% / 50% 30% 70% 50%;}
    .container .drop:hover
    {
        border-radius:50%;
    }
    .container .drop .content
    {
        position:relative;
        display: block;
    }
    #icon{
        font-size: 70px;
        color: #3a5311;
        margin-top: 14px;
        margin-left: 18px;
    }
    .icon{
        background-color: #ffff;
        width: 100px;
        height: 100px;
        border-radius: 100%;
        margin-left: 90px;
        margin-top: -30px;
    }
    #signup{
        margin-left: 110px;
    }
    .input_group{
        font-size: 1.25rem;
        border: 0.25em solid transparent;
        display: grid;
    }
    
    input{
        border-style: none;
        width: 300px;
        height:40px;
        font-size: 18px;;
        border-radius: 30px;
        margin-bottom: 15px;
        padding-left:15px;
    }
    .input_group{
        position: relative;
    }
    .input_label{
        position: absolute;
    }
    .input_label{
        text-transform: uppercase;
        font-size: 15px;
        letter-spacing: 0.1em;
        color: rgb(12 11 11);
        cursor: pointer;
        top: -6px;
        justify-self: right;
        right: 20px;
        font-weight: 1000;
        background-color: #cee2c9;
        border-radius: 150px;
    }
    a{
        text-decoration: none;
    }
    .button_group input{
        color: #ffff;
        background-color: black;
        width: 80px;
        height: 30px;
        font-size: 20px;
        border-radius: 40px;
        justify-content: center;
        display: flex;
        align-items: center;
        margin-left: 110px;
        padding: inherit;
    }
    .button_group input:hover{
        color: #080808;
        background-color: #3a5311;
        width: 80px;
        height: 30px;
        font-size: 20px;
        border-radius: 40px;
        justify-content: center;
        display: flex;
        align-items: center;
        margin-left: 113px;
    }
    .signup{
    margin-left: 40px;
    }
    .signup a{
        margin-left: 15px;
        color:brown;
    }
    .signup a:hover{
        margin-left: 15px;
        color:rgb(3, 32, 13);
    }
    @media (max-width: 768px) {
        .container {
            margin-top: 50px;
        }
    
        .container .drop {
            width: 80%;
            padding: 30px;
        }
    
        #signup {
            font-size: 20px;
        }
    
        .input_group input {
            font-size: 16px;
        }
    
        .button_group {
            width: 90px;
            height: 35px;
            font-size: 16px;
        }
    }
    
    @media (max-width: 480px) {
        .container {
            margin-top: 20px;
        }
    
        .container .drop {
            width: 100%;
            padding: 20px;
        }
    
        #signup {
            font-size: 18px;
        }
    
        .input_group input {
            font-size: 14px;
        }
    
        .button_group {
            width: 80px;
            height: 30px;
            font-size: 14px;
        }
    
        #icon {
            font-size: 40px;
        }
    }

        </style>
    </head>
    <body>
        <div class="container">
            <div class="drop">
                <div class="content">
                    <div class="login_form_container">
                        <div class="login_form">
                          <div class="icon">
                            <i id="icon" class="fa-solid fa-user"></i>
                          </div>
                          <h2 id="signup">SignUp</h2>
                          <form action="SignupServlet" method="post">
                          	<div class="input_group">
                            	<label class="input_label" for="myInput">Username</label>
                            	<input type="text" class="input_text"  autocomplete="off" name="txtName"/>
                          	</div>
                          	<div class="input_group">
                            	<label class="input_label" for="myInput">Email</label>
                            	<input type="email" class="input_text" autocomplete="off" name="txtEmail"/>
                          	</div>
                          	<div class="input_group">
                            	<label class="input_label" for="myInput">Password 
                              	<span><i id="toggler"class="far fa-eye"></i></span></label>
                            	<input type="password" class="input_text" autocomplete="off" name="txtPassword"/>
                          	</div>
                          	<div class="input_group">
                            	<label class="input_label" for="myInput">Confirm_Password
                               <span><i id="toggler"class="far fa-eye"></i></span></label>
                            	<input type="password" class="input_text" autocomplete="off" name="txtCpwd"/>
                          	</div>
                          	<div class="button_group" id="signup_button">
                          		<input type="submit" value="SignUp">
                            	
                          </div>
                          </form>
                          <div class="signup">
                            <h3>Already have an account? <a href="login.jsp">Login...</a></h3>
                          </div>
                        </div>
                      </div>
                
                </div>
            </div>
        </div>
        <script>
          function myFunction() {
            var x = document.getElementById("toggler");
            if (x.type === "password") {
              x.type = "text";
            } else {
              x.type = "password";
            }
          }
          </script>
    </body>
</html>