

 
 void setup() {

    size(1000,1000);
    background(255, 150, 180);
    stroke(0);
    fill(255,0,0,127);
    
 
 }
 
 
 void draw() {
  if (mousePressed) {
    line(pmouseX, pmouseY, mouseX, mouseY);
 }
 }

void keyPressed() {
   if(key == ' '){
        fill(random(0, 255), random(40, 255), 0);
        ellipse(mouseX, mouseY, 15, 15);
   }
}
