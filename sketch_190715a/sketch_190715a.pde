void setup() {
  size(900, 900);
  colorMode(HSB);
}
float c;
void draw() {
  if (c >= 255) c=0;
  else c++;
  background(c, 255, 255);}
