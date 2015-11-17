
  <!Doctype html>
<!--Purpose:
	Author: Chris Molloy
	Date: 2014 03 25
--> 
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,200,300,700,900" rel="stylesheet" type="text/css">

	<link rel="shortcut icon" href="http://www.iconj.com/ico/0/t/0tlh8rrhe5.ico" type="image/x-icon" />	
    
<link href='http://fonts.googleapis.com/css?family=Anton' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Rock+Salt' rel='stylesheet' type='text/css'>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

<script type="text/javascript">
</script>
	<style>
.button {
  

   border: 0px solid #050e14;
   background: #18006e;
   background: -webkit-gradient(linear, left top, left bottom, from(#18006e), to(#18006e));
   background: -webkit-linear-gradient(top, #18006e, #18006e);
   background: -moz-linear-gradient(top, #18006e, #18006e);
   background: -ms-linear-gradient(top, #18006e, #18006e);
   background: -o-linear-gradient(top, #18006e, #18006e);
   background-image: -ms-linear-gradient(top, #18006e 0%, #18006e 100%);
   padding: 8.5px 17px;
   -webkit-border-radius: 11px;
   -moz-border-radius: 11px;
   border-radius: 11px;
   -webkit-box-shadow: rgba(255,255,255,0.4) 0 0px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   -moz-box-shadow: rgba(255,255,255,0.4) 0 0px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   box-shadow: rgba(255,255,255,0.4) 0 0px 0, inset rgba(255,255,255,0.4) 0 1px 0;
   text-shadow: #040608 0 1px 0;
   color: #ffffff;
   font-size: 15px;
   font-family: helvetica, serif;
   text-decoration: none;
   vertical-align: middle;
   }
.button:hover {
   border: 0px solid #0a3c59;
   text-shadow: #1e4158 0 1px 0;
   background: #2c59de;
   background: -webkit-gradient(linear, left top, left bottom, from(#180066), to(#2c59de));
   background: -webkit-linear-gradient(top, #180066, #2c59de);
   background: -moz-linear-gradient(top, #180066, #2c59de);
   background: -ms-linear-gradient(top, #180066, #2c59de);
   background: -o-linear-gradient(top, #180066, #2c59de);
   background-image: -ms-linear-gradient(top, #180066 0%, #2c59de 100%);
   color: #20e099;
   }
.button:active {
   text-shadow: #1e4158 0 1px 0;
   border: 0px solid #0a3c59;
   background: #65a9d7;
   background: -webkit-gradient(linear, left top, left bottom, from(#18006e), to(#2c59de));
   background: -webkit-linear-gradient(top, #18006e, #65a9d7);
   background: -moz-linear-gradient(top, #18006e, #65a9d7);
   background: -ms-linear-gradient(top, #18006e, #65a9d7);
   background: -o-linear-gradient(top, #18006e, #65a9d7);
   background-image: -ms-linear-gradient(top, #18006e 0%, #65a9d7 100%);
   color: #20e099;
   }
   body {
            

font-family:"Source Sans Pro";

}

#home{
	            
font-size: 20pt; 
font-family:"Source Sans Pro";

}

h1{		
		font-family:"Source Sans Pro";
		font-weight:200;
	    background-color: #17006e; 
		color:white;
		margin:-0.2em;
		padding-left:0.4em;
		height:1.55em;
		vertical-align:middle;
}







#top{
     background-color: #17006e; 
      
      margin-right:-600px;
      margin-top: -25px;
            word-spacing: 130px;
            width:100%;
}
  
img{
    margin-left:-25px;
}




h1{
height:1.6em;
font-weight:200;
  padding-top: 20px;
  padding-bottom: 20px;
  
}

h2{
color:#000;
font-weight: bold;
}
  

h1{
		font-weight:200;
	    background-color: #17006e; 
		color:white;
		margin:-0.2em;
		padding-left:0.4em;
		height:1.6em;
		line-height:100%;
		font-size:53.3333px;
}





    body {
            
            
            font-family: "Trebuchet MS", Helvetica, sans-serif;



        }
      
     
       
    






#about{

    
    opacity:0.8;
    width: 300px;
    height: 160px;
   
    vertical-align: bottom;
    text-align: center;
   vertical-align: left;
    margin: auto;



  position:absolute;
  top:50%;
  left:50%;
  margin-top:-80px; /* this is half the height of your div*/  
  margin-left:-170.5px; /*this is half of width of your div*/



 border-radius: 25px;
    background: white;
    padding: 20px; 
  

text-align: left;



}

#username{
	background-color:rgba(0, 0, 0, 1);
	opacity: 1;
  vertical-align: center;
  background-color: #ffffff;

}

#password{
	background-color:rgba(0, 0, 0, 1);
	opacity:1;
  vertical-align: center;
  background-color: #fff;

}

  


  
   
   
   
   
  
	</style>


	</head>
	<body>
	   <div id="top">
<h1><span style="line-height:150%;">RSGC</span><strong>Attendance Register</strong></h1>


</div>
<img src="http://i.imgur.com/JZnv2cb.jpg">
 


	<div id="wrapper">


<div id="about">
<br><br>
  <form action="registerHandler.php" method="post">
    Select a Username:
    <input type="text" name="username" value=""><br/>
    Select a Password:&nbsp;
    <input type="password" name="password" value=""><br/>
    <br>
    <input  class="button" type="submit" value="Submit">
  </form>


</div>
</div></body>
</html>
  
 
