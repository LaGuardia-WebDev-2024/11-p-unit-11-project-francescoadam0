var snowX = [100, 120, 160, 200];
var snowY = [50, 70, 40, 20];

var sandX = [];
var sandY = [];

var ChillImage = loadImage("https://cdn.glitch.global/edf70b46-91a0-4f66-a7b9-29272d6a5872/dbee6aaf-ea93-4ab1-a097-d73c1ff85968.beach-chair.gif?v=1743170005278");

setup = function() {
   size(600, 450); 
   background(164, 212, 255,0);
  
   textSize(40);
   for(var i = 0; i < snowX.length; i++){
     text("☁️", snowX[i], snowY[i]);
   }
   
   var mySeasons =["☀️", "🌞","🏖️",""];
   
  text (mySeasons [1],0,100);
  text (mySeasons [2],250,330);
  
  //Example Function Call
drawShark(100, 120);

//Example Function Call
drawTropicalFish(4, 190);

   
   // fill arrays with 100 random values each 
  for (var i = 0; i < 4000; i++){
  sandX.push(random(800,-300));
   sandY.push(random(350,450));
  }
  
  noStroke();
  fill(194,178,128);
  for ( var i = 0; i < sandX.length; i++){
  ellipse(sandX[i], sandY[i], 5,5);
  }
   
   /*
   fill(255,255,255);
   rect(-10, 300, 610, 150);
*/
}

//Function Definition
var drawShark = function(sharkX, sharkY){
  fill(150, 176, 176);
  noStroke();
  ellipse(sharkX + 315, sharkY + 146, 200, 60);
  triangle(sharkX + 290, sharkY + 121, sharkX + 338, sharkY + 89, sharkX + 343, sharkY + 117);
  triangle(sharkX + 390, sharkY + 144, sharkX + 445, sharkY + 144, sharkX + 473, sharkY + 114);
  triangle(sharkX + 390, sharkY + 144, sharkX + 445, sharkY + 144, sharkX + 473, sharkY + 174);
  triangle(sharkX + 250, sharkY + 163, sharkX + 290, sharkY + 169, sharkX + 290, sharkY + 190);
  triangle(sharkX + 378, sharkY + 163, sharkX + 400, sharkY + 168, sharkX + 390, sharkY + 175);
  fill(200, 200, 200);
  ellipse(sharkX + 315, sharkY + 159, 175, 30);
  strokeWeight(10);
  stroke(0, 0, 0);
  point(sharkX + 234, sharkY + 142);
  stroke(120, 120, 120);
  strokeWeight(4);
  line(sharkX + 275, sharkY + 165, sharkX + 279, sharkY + 146);
  line(sharkX + 267, sharkY + 161, sharkX + 273, sharkY + 144);
  line(sharkX + 260, sharkY + 157, sharkX + 266, sharkY + 145)
  };
  
  //Function Definition
var drawTropicalFish = function(fishX, fishY){
translate(fishX, fishY)
scale(.5)
noStroke()

// body
fill(131, 140, 227 )
ellipse(260,180,230,230)

// lower fin
ellipse(137,260,60,70)

// lower fin
triangle(143,190,112,240,163,240)
triangle(146,294,205,283,163,240)

// top fin 
ellipse(126,67,78,85)
triangle(90,86,139,170,255,64)
quad(136,26,295,50,327,85,123,83)

// snout 
fill(231, 230, 237)
quad(371,195,454,201,460,207,382,210)
quad(377,225,453,222,455,213,380,212)
triangle(434,203,429,216,379,212)
triangle(366,139,360,193,391,196)
triangle(372,186,405,205,376,216)

//tail
fill(50, 62, 239 )
triangle(80,225,75,130,174,180)
fill(164, 172, 232 )
quad(124,155,124,203,147,202,149,152)
quad(129,96,157,102,158,202)

// bottom fins 
fill(238, 247, 154 )
quad(184,270,229,291,302,266,240,259)
quad(236,289,307,266,280,300,238,333)

// eye 
fill(112, 112, 247  )
ellipse(345,216,73,80)

// stripes 
fill( 223, 202, 51 )
quad(140,182,153,182,123,81,109,83)
quad(144,191,158,204,146,271,123,244)
ellipse(144,258,50,46)
ellipse(130,69,50,50)
quad(134,45,190,48,190,109,127,91)
triangle(159,89,173,175,191,83) 
quad(147,233,185,257,184,271,144,276)
quad(241,94,231,193,257,195,257,88)
quad(199,49,231,51,256,87,241,105)
fill(2, 17, 100)
quad(288,92,280,265,299,264,315,106)
quad(334,233,352,242,350,116,334,95)
fill(82, 95, 166)
quad(287,93,314,106,294,51,275,46)

// orange stripes
fill(211, 144, 80 )
quad(171,183,161,240,185,260,194,82)
quad(190,60,153,95,157,164,167,219)
quad(230,196,240,258,253,259,258,196)
quad(291,94,306,103,291,49,276,47)
quad(335,233,346,237,343,117,336,102)
fill(232, 190, 79)
quad(279,264,298,266,307,104,290,95)

// circles
fill(2, 119, 250 )
ellipse(176,102,40,45)
fill(4, 27, 53 )
ellipse(176,102,30,35)
fill(105, 72, 230 )

//eye 
fill(205, 193, 232)
ellipse(342,180,30,34)
fill(127, 118, 236)
ellipse(342,180,25,30)
fill(240, 217, 198 )
ellipse(342,180,20,20)
fill(19, 19, 20 )
ellipse(342,180,18,18)

scale(2)
translate(-1*fishX, -1*fishY)

};

draw = function(){
image(ChillImage,30,320,120,120);
}


