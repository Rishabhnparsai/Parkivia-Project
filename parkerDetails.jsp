<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
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
  /* justify-content: center;
  align-items: center; */
  padding: 10px;
  
      background-size: 100%;
    background-repeat: no-repeat center center fixed;
}
.container{
  max-width: 700px;
  width: 100%;
  margin-left: 5%;
 background: linear-gradient(rgba(0,0,0,1));
  padding: 25px 30px;
  border-radius: 10px;
  box-shadow: 7px 7px 60px rgba(0,0,0,0.15);
  margin-top: 12%;
  
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
  width: 100%;
  position: relative;
  margin-bottom: 4%;
  margin-top: 4%;
  
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
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
  margin-bottom: 18px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
  color:#0c0c0c;
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
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}
img {
      max-height: 700px;
      max-width: 700px;
      margin-top: 50%;
      margin-left: 25%;
    }
</style>
</head>
<body>
<div class="container1">

<main>
    <div class="container">
      <div class="title">User Details</div>
      <div class="content">
       <form action="parkerCtrl" method="post">
          <div class="user-details">
            <div class="input-box">
              <span class="details">First Name</span>
              <input type="text" placeholder="Enter your first name" name="fname" required>
            </div>
            <div class="input-box">
              <span class="details">Last Name</span>
              <input type="text" placeholder="Enter your last name" name="lname" required>
            </div>
           
            <div class="input-box">
              <span class="details">Phone Number</span>
              <input type="text" placeholder="Enter your number" name="phone" required>
            </div>
           
              <div class="input-box">
              <span class="details">Email</span>
              <input type="text" placeholder="Enter your email" name="email" required>
            </div>
            <div class="title">Vehicle Information</div>
           
         <div class="input-box">
                <span class="details">Vehicle Type</span>
                <div id="cid_9" class="input-box" data-layout="half">
                  <select class="select-box" name="vehicleType" style="width:300px" data-component="dropdown"
                    aria-label="Vehicle Type" onclick="showMe(this.value);">
                    <option value="select">Please Select</option>
                    <option value="Bicycle">Bicycle</option>
                    <option value="Motorbike">Motorbike</option>
                    <option value="Hatchback">Hatchback</option>
                    <option value="Sedan">Sedan</option>
                    <option value="Compact Sedan">Compact Sedan</option>
                    <option value="Coupe">Coupe</option>
                    <option value="4-Door Coupe">4-Door Coupe</option>
                    <option value="Station Wagon">Station Wagon</option>
                    <option value="Crossover Hatchback">Crossover Hatchback</option>
                    <option value="Convertible">Convertible</option>
                    <option value="MPV">MPV</option>
                    <option value="SUV">SUV</option>
                    <option value="Crossover SUV">Crossover SUV</option>
                    <option value="Coupe SUV">Coupe SUV</option>
                    <option value="Compact SUV">Compact SUV</option>
                    <option value="Pick-up Truck">Pick-up Truck</option>
                  </select>
                </div>
             
			</div>
            <div class="input-box">
              <span class="details">License Plate Number </span>
              <input type="text" placeholder="License Plate Number" name="plate" required>
            </div>
             <div class="input-box">
              <span class="details">Model</span>
              <input type="text" placeholder="Enter your vehicle's Model" name="model" required>
            </div>
            <div class="input-box">
              <span class="details">Color</span>
              <input type="text" placeholder="Vehicle color" name="color" required>
            </div>
            <div class="title">Parking Details</div>
            <div class="input-box">
              <span class="details">Date</span>
              <input type="date" placeholder="Enter your first name" name="date" required>
            </div>
            <div class="input-box">
              <span class="details">Parking needed for (Hours)</span>
              <input type="text" placeholder="--Hours--" name="hrs" required>
            </div>
            <div class="input-box">
              <span class="details">From (Time)</span>
              <input type="time" placeholder="Enter your last name" name="enter" required>
            </div>
            <div class="input-box">
              <span class="details">Till (Time)</span>
              <input type="time" placeholder="Enter your number" name="exit" required>
            </div>
          </div>
          <div class="button">
            <input type="submit" value="Submit">
          </div>
        </form>
      </div>
    </div>
  
 

</main>
</div>
<div class="image-container">
    <div id="0">
       <img src="images/speedmeter.jpg" >
    </div>
    <div id="1" style="display: none;">
       <img src="images/vehicles/bike.png">
    </div>

    <div id="2" style="display: none;">
      <img src="images/standard_bike.png">
    </div>
    <div id="3" style="display: none;">
      <img src="images/vehicles/hatchback.png">
    </div>
    <div id="4" style="display: none;">
      <img src="images/vehicles/sedan.png">
    </div>
    <div id="5" style="display: none;">
      <img src="images/vehicles/">
    </div>
    <div id="6" style="display: none;">
      <img src="images/vehicles/coupe.png">
    </div>
    <div id="7" style="display: none;">
      <img src="images/vehicles/coupe 4-door.png">
    </div>
    <div id="8" style="display: none;">
      <img src="images/vehicles/station wagon.png">
    </div>
    <div id="9" style="display: none;">
      <img src="images/vehicles/">
    </div>
    <div id="10" style="display: none;">
      <img src="images/vehicles/convertible.png">
    </div>
    <div id="11" style="display: none;">
      <img src="images/vehicles/MUV.png">
    </div>
    <div id="12" style="display: none;">
      <img src="images/vehicles/suv.png">
    </div>
    <div id="13" style="display: none;">
      <img src="images/vehicles/crossSUV.png">
    </div>
    <div id="14" style="display: none;">
      <img src="images/vehicles/coupe suv.png">
    </div>
    <div id="15" style="display: none;">
      <img src="images/vehicles/compact suv.png">
    </div>
    <div id="16" style="display: none;">
      <img src="images/vehicles/pickup.png">
    </div>



  </div>
</body>
<script>
  function showMe(value) {
    switch (value) {
      case "select":
        document.getElementById('0').style.display = "block";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";

        break;
      case "Bicycle":
        document.getElementById('1').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Motorbike":
        document.getElementById('2').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Hatchback":
        document.getElementById('3').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Sedan":
        document.getElementById('4').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Compact":
        document.getElementById('5').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Coupe":
        document.getElementById('6').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "4-Door Coupe":
        document.getElementById('7').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Station Wagon":
        document.getElementById('8').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Crossover Hatchback":
        document.getElementById('9').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Convertible":
        document.getElementById('10').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "MPV":
        document.getElementById('11').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "SUV":
        document.getElementById('12').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Crossover SUV":
        document.getElementById('13').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Coupe SUV":
        document.getElementById('14').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Compact SUV":
        document.getElementById('15').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
      case "Pick-up Truck":
        document.getElementById('16').style.display = "block";
        document.getElementById('0').style.display = "none";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";

        break;

      default:
        document.getElementById('0').style.display = "block";
        document.getElementById('1').style.display = "none";
        document.getElementById('2').style.display = "none";
        document.getElementById('3').style.display = "none";
        document.getElementById('4').style.display = "none";
        document.getElementById('5').style.display = "none";
        document.getElementById('6').style.display = "none";
        document.getElementById('7').style.display = "none";
        document.getElementById('8').style.display = "none";
        document.getElementById('9').style.display = "none";
        document.getElementById('10').style.display = "none";
        document.getElementById('11').style.display = "none";
        document.getElementById('12').style.display = "none";
        document.getElementById('13').style.display = "none";
        document.getElementById('14').style.display = "none";
        document.getElementById('15').style.display = "none";
        document.getElementById('16').style.display = "none";
        break;
    }

  }
</script>
</html>