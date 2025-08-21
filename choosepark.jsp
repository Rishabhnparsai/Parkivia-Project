<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <style>
.card {
 width: 250px;
 height: 350px;
 margin-top: 15%;
 margin-left: 27%;
 border-radius: 20px;
 /* background: #f5f5f5;  */
 position: relative;
 padding: 1.8rem;
 border: 2px solid #c3c6ce;
 transition: 0.5s ease-out;
 overflow: visible;

}
.card2 {
 width: 250px;
 height: 350px;
 margin-top: -24.4%;
 margin-left: 55%;
 border-radius: 20px;
 /* background: #f5f5f5; */
 position: relative;
 padding: 1.8rem;
 border: 2px solid #c3c6ce;
 transition: 0.5s ease-out;
 overflow: visible;
}
.card-details2 {
 color: black;
 height: 100%;
 gap: .5em;
 display: grid;
 place-content: center;
}

.card-button2 {
 transform: translate(-50%, 125%);
 width: 60%;
 border-radius: 1rem;
 border: none;
 background-color: #008bf8;
 color: #fff; 
 font-size: 1rem;
 padding: .5rem 1rem;
 position: absolute;
 left: 50%;
 bottom: 0;
 opacity: 0;
 transition: 0.3s ease-out;
}

.text-body2 {
 color: rgb(134, 134, 134);
}

/*Text*/
.text-title2 {
 font-size: 1.5em;
 font-weight: bold;
}

/*Hover*/
.card2:hover {
 border-color: #008bf8;
 box-shadow: 0 4px 18px 0 rgba(0, 0, 0, 0.25);
}

.card2:hover .card-button2 {
 transform: translate(-50%, 50%);
 opacity: 1;
}
.card-details {
 color: black;
 height: 100%;
 gap: .5em;
 display: grid;
 place-content: center;
}

.card-button {
 transform: translate(-50%, 125%);
 width: 60%;
 border-radius: 1rem;
 border: none;
 background-color: #008bf8;
 color: #fff;
 font-size: 1rem;
 padding: .5rem 1rem;
 position: absolute;
 left: 50%;
 bottom: 0;
 opacity: 0;
 transition: 0.3s ease-out;
}

.text-body {
 color: rgb(134, 134, 134);
}

/*Text*/
.text-title {
 font-size: 1.5em;
 font-weight: bold;
}

/*Hover*/
.card:hover {
 border-color: #008bf8;
 box-shadow: 0 4px 18px 0 rgba(0, 0, 0, 0.25);
}

.card:hover .card-button {
 transform: translate(-50%, 50%);
 opacity: 1;
}
a{
    text-decoration: none;
}


    </style>
</head>
<body>
    <div class="card">
        <a href="parkerDetails.jsp">
        <div class="card-details">
            <img src="images/park/park2.jpg" alt="Vector" style="width:100%">
          <p class="text-title">Find a place to Park</p>
          <p class="text-body"></p>
        </div>
        <button class="card-button">More info</button>
    </a>
      </div>

      
      <div class="card2">
        <a href="placeDetails.jsp">
       	 <div class="card-details2">
            <img src="images/park/park3.jpg" alt="Vector" style="width:100%">
          <p class="text-title2">Have place for Parking</p>
          <p class="text-body2"></p>
        </div>
        <button class="card-button2" >More info</button>
    </a>
      </div>
</body>
</html>