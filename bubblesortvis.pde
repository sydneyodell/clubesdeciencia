int[] array = new int[30];
int maxVal = 100;
int speed = 30;
int xStart = 80;
int lineSpace = 15;

void setup() {
size(1000, 700);
for(int i = 0; i<array.length; i++){
  array[i] = (int)random(maxVal);
}
frameRate(speed); 
colorMode(HSB);
}

int i=0;

void draw() {
background(44444);

for (int j=0; j<array.length; j++) {
    if (array[i]>array[j]) {
      int temp = array[j];
      array[j] = array[i];
      array[i] = temp;
    }
    
    //Draw values here
    fill(0);
    text(array[j], 30, 30+20*j);
    
    //Get color to go with values
    float c = map(array[j], 240, maxVal, 200, 70);
    stroke(c, 100, 250);
    strokeWeight(50);
    
    //Draw a line
    line(xStart, 25+lineSpace*j, xStart+5*array[j], 25+lineSpace*j);
}

i++;
if (i>array.length-1)
noLoop();
}
