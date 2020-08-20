
PVector[] rectangle = new PVector[8];
String[] command = new String[8];

int index=0;

void setup(){
 fullScreen(2); //1 for display 1, 2 for display 2, etc.
 noCursor();
  for(int i=0; i<rectangle.length; i++){
    rectangle[i] = new PVector(0,0);
  }
  
  command[0] = "TOP LEFT CORNER";
  command[1] = "TOP CENTER";
  command[2] = "TOP RIGHT CORNER";
  command[3] = "RIGHT CENTER";
  command[4] = "BOTTOM RIGHT CORNER";
  command[5] = "BOTTOM CENTER";
  command[6] = "BOTTOM LEFT CORNER";
  command[7] = "LEFT CENTER";
}


void draw(){
  background(0,255,255);
  
  //DRAW RECT//
  fill(255);
  noStroke();
  beginShape();
  vertex(rectangle[0].x, rectangle[0].y);
  vertex(rectangle[1].x, rectangle[1].y);
  vertex(rectangle[2].x, rectangle[2].y);
  vertex(rectangle[3].x, rectangle[3].y);
  vertex(rectangle[4].x, rectangle[4].y);
  vertex(rectangle[5].x, rectangle[5].y);
  vertex(rectangle[6].x, rectangle[6].y);
  vertex(rectangle[7].x, rectangle[7].y);
  vertex(rectangle[0].x, rectangle[0].y);
  endShape();
  
  //DRAW TEXT//
  textAlign(CENTER);
  textSize(30);
  fill(0);
  text(command[index],width/2, height/2);
  
  //DRAW POINTER//
  fill(50,0,255);
  ellipse(mouseX,mouseY,5,5);
}

void mousePressed(){
  rectangle[index].x = mouseX;
  rectangle[index].y = mouseY;
  
  index++;
  if(index>7) index=0;
}

void keyPressed(){
  if(key == 's'){
    save("mask.png");
  }
}
