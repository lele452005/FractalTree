private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(#E3E7FF);   
  stroke(#312F2B);   
  strokeWeight(3);
  line(320,480,320,380);   
  drawBranches(320,380,120,3*Math.PI/2); 
  stroke(0);
  strokeWeight(.5);
  fill(#E3E7FF);
  line(420, 365, 420, 450);
  line(420, 400, 395, 415);
  line(420, 400, 445, 415);
  line(420, 450, 395, 480);
  line(420, 450, 445, 480);
  ellipse (420, 360, 45, 45);
  fill(#5DD662);
  noStroke();
  rect(0, 470, 640, 25);
  fill(#F4F5C6);
  ellipse(70, 76, 100, 100);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{  
   double angle1 = angle+branchAngle+.4;
   double angle2 = angle-branchAngle-.4;
   double angle3 = angle;
   int endX1 = (int)(branchLength*Math.cos(angle1)+x);
   int endY1 = (int)(branchLength*Math.sin(angle1)+y);
   int endX2 = (int)(branchLength*Math.cos(angle2)+x);
   int endY2 = (int)(branchLength*Math.sin(angle2)+y);
   int endX3 = (int)(branchLength*Math.cos(angle3)+x);
   int endY3 = (int)(branchLength*Math.sin(angle3)+y);
   stroke(#312F2B);
   if (branchLength<=50){
       stroke(255, 183, 197);
   }
   line(x, y, endX1, endY1);
   line(x, y, endX2, endY2);
   line (x, y, endX3, endY3);
   branchLength = branchLength*fractionLength;
    if (branchLength>smallestBranch){  
     drawBranches(endX3, endY3, branchLength-10, angle3);
     drawBranches(endX3, endY3, branchLength-10, angle3);
     drawBranches(endX1, endY1, branchLength-10, angle1);
     drawBranches(endX2, endY2, branchLength-10, angle1);
     drawBranches(endX1, endY1, branchLength-10, angle2);
     drawBranches(endX2, endY2, branchLength-10, angle2);
   }
} 
