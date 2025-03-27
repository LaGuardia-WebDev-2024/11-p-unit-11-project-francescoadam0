var snowX = [100, 120, 160, 200];
var snowY = [50, 70, 40, 20];

var sandX = [];
var sandY = [];

setup = function() {
   size(600, 450); 
   background(164, 212, 255);
  
   textSize(40);
   for(var i = 0; i < snowX.length; i++){
     text("☁️", snowX[i], snowY[i]);
   }
   
   var mySeasons =["☀️", "☀️","🏖️"];
   
  text (mySeasons [1],30,130);
  text (mySeasons [2],250,180);
  
  
   
   // fill arrays with 100 random values each 
  for (var i = 0; i < 4000; i++){
  sandX.push(random(800,-200));
   sandY.push(random(300,410));
  }
  
  fill(194,178,128);
  for ( var i = 0; i < sandX.length; i++){
  ellipse(sandX[i], sandY[i], 5,5);
  }
   
   /*
   fill(255,255,255);
   rect(-10, 300, 610, 150);
*/
}


