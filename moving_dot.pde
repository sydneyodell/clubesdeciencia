int w, h, x, y;
float x1, y1;
ArrayList<myDot> dots;
int numDots = 300;
void setup(){
  dots = new ArrayList<myDot>();
  w = int(random(20, 40)); 
  h = int(random(20, 40));
  x = int(random(1000, 400));
  y = int(random(1000, 200));
  for(int i = 0; i<numDots; i++){
    myDot dot = new myDot(x, y, w, h);
    dots.add(dot);
  }
  size(1000, 1000);
  background(255);
  colorMode(HSB);
  w = 180; h = 180; x = 125; y = 200; x1 = 200; y1 = 400;
}

void draw(){
  fill(160, 45, 6);
  //ellipse(x, y,w, h); x+=random(-5,5); y+=random(-3,3);
//ellipse(x1, y1, w, h); x1+=0.5; y1+=0.2;
   for(myDot d:dots) d.draw();
}
