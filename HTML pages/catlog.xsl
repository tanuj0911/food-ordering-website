<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 

 <link rel="stylesheet" href="catlog.css" /> 

<body>
  <div class="headmain"> 
    <div class="headleft">
      <img src="logo/logo1.png" height="100px" width="200px">
    </div>
    <div class="headright">
      <br>
      <button class="button button1">Cuisines <i class="fa fa-cutlery" style="font-size:24px"></i></button>
      &nbsp;&nbsp;&nbsp;&nbsp;
      <button class="button button1" id="register">Sign Up <i class="fa fa-user-plus" style="font-size:24px"></i></button>
      &nbsp;&nbsp;&nbsp;&nbsp;
      <button class="button button1" id="login">Login <i class="fa fa-sign-in" style="font-size:24px"></i></button>
      &nbsp;&nbsp;&nbsp;&nbsp;
<!--      <button class="button button1" id="contactus" onclick="switchVisible();">Contact Us <i class="fa fa-phone" style="font-size:24px"></i></button> 


    <input id="Button1" type="button" value="Click" onclick="switchVisible();"/>
  -->
    </div>
  </div>
  <div class="divmarquee">
    <marquee behavior="alternate" scrollamount="16"><p style="font-family: impact; color: red; font-size: 20;">20% off on all deserts</p></marquee>
  </div>
  <div class="divmain"> 
    <div class="divcategory">
      <button class="accordion">Junk</button>
      <div class="panel">
        <p><a href="pizza.html">Pizza</a></p>
        <p><a href="tacco.html">Taccos</a></p>
        <p><a href="burger.html">Burger</a></p>
        <p><a href="frankie.html">Frankie</a></p>
      </div>
      <button class="accordion">Starters</button>
      <div class="panel">
        <p><a href="lollipop.html">Lollipop</a></p>
        <p><a href="kebab.html">Kebabs</a></p>
        <p><a href="roll.html">Rolls</a></p>
      </div>
      <button class="accordion">Main Course</button>
      <div class="panel">
        <p><a href="indian.html">Indian</a></p>
        <p><a href="mexican.html">Maxican</a></p>
        <p><a href="italian.html">Italian</a></p>
      </div>
      <button class="accordion">Chats</button>
      <div class="panel">
        <p><a href="puri.html">Pani Puri</a></p>
        <p><a href="bhel.html">Bhel</a></p>
      </div>
      <button class="accordion">Deserts</button>
      <div class="panel">
        <p><a href="shake.html">Shakes</a></p>
        <p><a href="cake.html">Cakes</a></p>
        <p><a href="brownie.html">Brownie</a></p>
        <p><a href="icecream.html">Icecream</a></p>
      </div>
    </div>
    <div class="divcontent">
      <h2>Food Catalog</h2>
      <table style=""  border="1">
        <tr bgcolor="yellow">
          <th style="text-align:left">Product</th>
          <th style="text-align:left">Price</th>
        </tr>
        <xsl:for-each select="catalog/cd">
        <tr>
          <td><xsl:value-of select="product"/></td>
          <td><xsl:value-of select="price"/></td>
        </tr>
      </xsl:for-each>
      </table>
    </div>

<!--    <div id="ContactUs">
      <form>
         <fieldset>
          <legend><b>First Name</legend>
          <input type="text" id="fname" name="fname"><br><br>
         </fieldset><br>
         <fieldset>
          <legend>Email Address</legend>
          <input type="text" id="fname" name="fname"><br><br>
         </fieldset>
         <fieldset>
          <legend>Mobile No</legend>
          <input type="text" id="fname" name="fname"><br><br>
         </fieldset> 
         <fieldset>
          <legend>Type Text</legend>
         <textarea rows="4" cols="50"></textarea><br><br>
         </fieldset>
      </form>
    </div>

    <script>
      function switchVisible() {
                  if (document.getElementById('divcontent')) {

                      if (document.getElementById('divcontent').style.display == 'none') {
                          document.getElementById('divcontent').style.display = 'block';
                          document.getElementById('ContactUs').style.display = 'none';
                      }
                      else {
                          document.getElementById('divcontent').style.display = 'none';
                          document.getElementById('ContactUs').style.display = 'block';
                      }
                  }
      }
    </script>
 -->

    <!-- The Modal -->
    <div id="myModal" class="modal">

      <!-- Modal content -->
      <div class="modal-content">
        <span class="close">&times;</span>
      <center><img src="logo\logo1.png" width="200px" height="100px"><br>
      <h3><b>Login</b></h3></center>    
        <div class="form-style-5">
        <form method="post">
          <fieldset>
          <input type="text" name="cusername" placeholder="Username">
          <input type="password" name="cpass" placeholder="Password">
          </fieldset>
          <input type="submit" value="Login" />
        </form>
      </div>
      </div>

    <!-- The Modal -->
    <div id="myModal" class="modal">

      <!-- Modal content -->
      <div class="modal-content">
        <span class="close">&times;</span>
      <center><img src="logo\logo1.png" width="200px" height="100px"><br>
      <h3><b>Login</b></h3></center>    
        <div class="form-style-5">
    <form>
    <fieldset>
    <legend><span class="number" style="color: white">1</span> Candidate Info</legend>
    <input type="text" name="cname" placeholder="Your Name *" /required>
    <input type="email" name="cemail" placeholder="Your Email *"/required>
    <input type="number" name="cpho" placeholder="Your Number *" maxlength="9999999999" required>
    <textarea name="cinfo" placeholder="About yourself"/required></textarea>
    </fieldset>
    <fieldset>
    <legend><span class="number" style="color: white">2</span> Additional Info</legend>
    <textarea style="resize: none;" name="cschool" placeholder="About Your School"/required></textarea>
    <textarea style="resize: none;" name="chobby" placeholder="Your Hobby"/required></textarea>
    </fieldset>
    <fieldset>
    <legend><span class="number" style="color: white">3</span> Login Credentials </legend>
    <input type="text" name="cusername" placeholder="Username"/required>
    <input type="password" name="cpass" placeholder="Alphanumeric Password "/required>
    <input type="password" name="cpassconfirm" placeholder="Confirm Password "/required>
    </fieldset>
    <input type="submit" value="Apply" name="buttonl" />
    </form>
      </div>
      </div>
    </div>
  </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>