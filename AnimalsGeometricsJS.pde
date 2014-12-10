/* @pjs preload="http://annacarreras.com/animals_geometrics/hexagon0.png,
                http://annacarreras.com/animals_geometrics/rect0.png,
                http://annacarreras.com/animals_geometrics/triangle0.png,
                http://annacarreras.com/animals_geometrics/romb0.png,
                http://annacarreras.com/animals_geometrics/irregular0.png,
                http://annacarreras.com/animals_geometrics/pingui0.png,
                http://annacarreras.com/animals_geometrics/os0.png,
                http://annacarreras.com/animals_geometrics/llop0.png,
                http://annacarreras.com/animals_geometrics/ren0.png,
                http://annacarreras.com/animals_geometrics/foca0.png,
                http://annacarreras.com/animals_geometrics/hexagon1.png,
                http://annacarreras.com/animals_geometrics/rect1.png,
                http://annacarreras.com/animals_geometrics/triangle1.png,
                http://annacarreras.com/animals_geometrics/romb1.png,
                http://annacarreras.com/animals_geometrics/irregular1.png,
                http://annacarreras.com/animals_geometrics/pingui1.png,
                http://annacarreras.com/animals_geometrics/os1.png,
                http://annacarreras.com/animals_geometrics/llop1.png,
                http://annacarreras.com/animals_geometrics/ren1.png,
                http://annacarreras.com/animals_geometrics/foca1.png,
                http://annacarreras.com/animals_geometrics/hexagon2.png,
                http://annacarreras.com/animals_geometrics/rect2.png,
                http://annacarreras.com/animals_geometrics/triangle2.png,
                http://annacarreras.com/animals_geometrics/romb2.png,
                http://annacarreras.com/animals_geometrics/irregular2.png,
                http://annacarreras.com/animals_geometrics/pingui2.png,
                http://annacarreras.com/animals_geometrics/os2.png,
                http://annacarreras.com/animals_geometrics/llop2.png,
                http://annacarreras.com/animals_geometrics/ren2.png,
                http://annacarreras.com/animals_geometrics/foca2.png,
                http://annacarreras.com/animals_geometrics/hexagon3.png,
                http://annacarreras.com/animals_geometrics/rect3.png,
                http://annacarreras.com/animals_geometrics/triangle3.png,
                http://annacarreras.com/animals_geometrics/romb3.png,
                http://annacarreras.com/animals_geometrics/irregular3.png,
                http://annacarreras.com/animals_geometrics/pingui3.png,
                http://annacarreras.com/animals_geometrics/os3.png,
                http://annacarreras.com/animals_geometrics/llop3.png,
                http://annacarreras.com/animals_geometrics/ren3.png,
                http://annacarreras.com/animals_geometrics/foca3.png,
                http://annacarreras.com/animals_geometrics/hexagon4.png,
                http://annacarreras.com/animals_geometrics/rect4.png,
                http://annacarreras.com/animals_geometrics/triangle4.png,
                http://annacarreras.com/animals_geometrics/romb4.png,
                http://annacarreras.com/animals_geometrics/irregular4.png,
                http://annacarreras.com/animals_geometrics/pingui4.png,
                http://annacarreras.com/animals_geometrics/os4.png,
                http://annacarreras.com/animals_geometrics/llop4.png,
                http://annacarreras.com/animals_geometrics/ren4.png,
                http://annacarreras.com/animals_geometrics/foca4.png,
                http://annacarreras.com/animals_geometrics/pinguins_gran.png,
                http://annacarreras.com/animals_geometrics/os_gran.png,
                http://annacarreras.com/animals_geometrics/llop_gran.png,
                http://annacarreras.com/animals_geometrics/ren_gran.png,
                http://annacarreras.com/animals_geometrics/foca_gran.png,
                http://annacarreras.com/animals_geometrics/titoleng.png";
*/

int figureW = 100;
int figureH = 50;

int MAX_NUM_TILES = 450*200;
int numTiles = MAX_NUM_TILES;
int tileCountX = 2;
int tileCountY = 3;

int[] hueValues = new int[MAX_NUM_TILES];
int[] saturationValues = new int[MAX_NUM_TILES];
int[] brightnessValues = new int[MAX_NUM_TILES];
int alpha = 90;

int NUM_ANIMALS_FORMES = 5;
PImage[] ihexagon = new PImage[NUM_ANIMALS_FORMES];
PImage[] irect  = new PImage[NUM_ANIMALS_FORMES];
PImage[] itriangle = new PImage[NUM_ANIMALS_FORMES]; 
PImage[] iromb = new PImage[NUM_ANIMALS_FORMES];
PImage[] iirregular = new PImage[NUM_ANIMALS_FORMES];
PImage[] ipingui = new PImage[NUM_ANIMALS_FORMES];
PImage[] ios = new PImage[NUM_ANIMALS_FORMES];
PImage[] illop = new PImage[NUM_ANIMALS_FORMES];
PImage[] iren = new PImage[NUM_ANIMALS_FORMES];
PImage[] ifoca = new PImage[NUM_ANIMALS_FORMES];

PImage pinguinsgran, osgran, llopgran, rengran, focagran;
int animal = 0;

PImage i20142015;
PImage titol;

int form = 0;

float dhexagon, drect, dtriangle, dromb, dirregular;
boolean button = false;

void setup() {
  size(900, 380);
  colorMode(HSB,360,100,100,100);
  noStroke();
  imageMode(CORNER);
  rectMode(CORNER);

  for(int i=0; i<NUM_ANIMALS_FORMES; i++){
    ihexagon[i] = loadImage("http://annacarreras.com/animals_geometrics/hexagon"+i+".png");
    irect[i] = loadImage("http://annacarreras.com/animals_geometrics/rect"+i+".png");
    itriangle[i] = loadImage("http://annacarreras.com/animals_geometrics/triangle"+i+".png");
    iromb[i] = loadImage("http://annacarreras.com/animals_geometrics/romb"+i+".png");
    iirregular[i] = loadImage("http://annacarreras.com/animals_geometrics/irregular"+i+".png");
    
    ipingui[i] = loadImage("http://annacarreras.com/animals_geometrics/pingui"+i+".png");
    ios[i] = loadImage("http://annacarreras.com/animals_geometrics/os"+i+".png");
    illop[i] = loadImage("http://annacarreras.com/animals_geometrics/llop"+i+".png");
    iren[i] = loadImage("http://annacarreras.com/animals_geometrics/ren"+i+".png");
    ifoca[i] = loadImage("http://annacarreras.com/animals_geometrics/foca"+i+".png");
  }
  
  pinguinsgran = loadImage("http://annacarreras.com/animals_geometrics/pinguins_gran.png");
  osgran = loadImage("http://annacarreras.com/animals_geometrics/os_gran.png");
  llopgran = loadImage("http://annacarreras.com/animals_geometrics/llop_gran.png");
  rengran = loadImage("http://annacarreras.com/animals_geometrics/ren_gran.png");
  focagran = loadImage("http://annacarreras.com/animals_geometrics/foca_gran.png");
  
  titol = loadImage("http://annacarreras.com/animals_geometrics/titoleng.png");
  
  tileCountX = int(width/figureW);
  tileCountY = int(height/figureH);
  
  animal = floor(random(0,NUM_ANIMALS_FORMES));
  form = floor(random(0,NUM_ANIMALS_FORMES));
  randomSeed(frameCount);
  
  // COLORS
  setColors();
}

void draw(){
  background(0,0,100,100);
  noStroke();
  
  // FORMA
  if(form == 0){ // rect
    drawRectangles();
  }
  else if(form == 1){ // triangle 
    drawTriangles();
  }
  else if(form == 2){ // hexa 
    drawHexagons();
  }
  else if(form == 3){ // circle 
    drawCircles();
  }
  else if(form == 4){ // romb
    drawRombs();
  }
  
  // ANIMAL IMATGE
  imageMode(CORNER);
  if (animal == 0) {
    image(pinguinsgran, 565, 90, 330, 280);
  }
  else if (animal == 1) {
    image(osgran, 565, 90, 330, 280);
  }
  else if (animal == 2) {
    image(llopgran, 565, 90, 330, 280);
  }
  else if (animal == 3) {
    image(rengran, 565, 90, 330, 280);
  }
  else if (animal == 4) {
    image(focagran, 565, 90, 330, 280);
  }
  
  fill(0, 0, 100);
  noStroke();
  beginShape();
  vertex(565, 5);
  vertex(565+330, 5);
  vertex(565+330, 90);
  vertex(565, 90);
  endShape(CLOSE);
  beginShape();
  vertex(565, 369);
  vertex(565+330, 369);
  vertex(565+330, 375);
  vertex(565, 375);
  endShape(CLOSE);

  
  // UI
  fill(0,0,100);
  image(titol, 5,5,550,171);
  beginShape();
  vertex(5, 171+5);
  vertex(5+550, 171+5);
  vertex(5+550, height-5);
  vertex(5, height-5);
  endShape(CLOSE);

  imageMode(CENTER);
  drawIcones(animal);
  
  stroke(0, 0, 100);
  line(560, 0, 560, height); 

}

// ------------------------------------------------
// MOUSE
void mousePressed(){
  button = false;
  
  dhexagon = dist(mouseX, mouseY, 20+18, 142+70);
  drect = dist(mouseX, mouseY, 106+14,142+70);
  dtriangle = dist(mouseX, mouseY, 186+17,142+70);
  dromb = dist(mouseX, mouseY, 270+18,142+70);
  dirregular = dist(mouseX, mouseY, 351+20,142+70);

  if(dhexagon < 23){
    form = 2;
    button = true;
  }
  if(drect < 23){
    form = 0;
    button = true;
  }
  if(dtriangle < 23){
    form = 1;
    button = true;
  }
  if(dromb < 23){
    form = 4;
    button = true;
  }
  if(dirregular < 23){
    form = 3;
    button = true;
  }
  
  if(mouseX > 20+18-18 && mouseY > 232-31+70 && mouseX < 20+18+18 && mouseY < 232+31+70){
    animal = 0;
    button = true;
    setColors();
  }
  if(mouseX > 106+14-50 && mouseY > 230-37+70 && mouseX < 106+14+50 && mouseY < 230+37+70){
    animal = 1;
    button = true;
    setColors();
  }
  if(mouseX > 186+25-33 && mouseY > 234-31+70 && mouseX < 186+25+33 && mouseY < 234+31+70){
    animal = 2;
    button = true;
    setColors();
  }
  if(mouseX > 270+18-40 && mouseY > 224-36+70 && mouseX < 270+18+40 && mouseY < 224+36+70){
    animal = 3;
    button = true;
    setColors();
  }
  if(mouseX > 351+20-30 && mouseY > 234-26+70 && mouseX < 351+20+30 && mouseY < 234+26+70){
    animal = 4;
    button = true;
    setColors();
  }
}

void mouseDragged(){
  if(button == false){
    figureW = (int)map(mouseX, 0, width, 20, 450);
    figureW = max(2,figureW);
    figureH = (int)map(mouseY, 0, height, 30, 200);
    figureH = max(3,figureH);
    tileCountX = int(width/figureW);
    tileCountY = int(height/figureH);
    setColors();
  }
}

void mouseReleased(){
  if(button == false){
    figureW = (int)map(mouseX, 0, width, 20, 450);
    figureW = max(2,figureW);
    figureH = (int)map(mouseY, 0, height, 30, 200);
    figureH = max(3,figureH);
    tileCountX = int(width/figureW);
    tileCountY = int(height/figureH);
    setColors();
  }
}

// ------------------------------------------------
// DRAW FIGURES
void drawRectangles(){
  int index = 0;
  for(int i=0; i<=tileCountX; i++){
    for(int j=0; j<=tileCountY; j++){
      fill(hueValues[index],saturationValues[index],brightnessValues[index], alpha);
      pushMatrix();
      translate(i*figureW,j*figureH);
      beginShape();
        vertex(0, 0);
        vertex(figureW, 0);
        vertex(figureW,figureH);
        vertex(0,figureH);
      endShape(CLOSE);
      popMatrix();
      index++;
    }
  }
}

void drawTriangles(){
  int index = 0;
  for(int i=0; i<=tileCountX; i++){
    for(int j=0; j<=tileCountY; j++){
      pushMatrix();
      translate(i*figureW,j*figureH);
        fill(hueValues[index],saturationValues[index],brightnessValues[index], alpha);
        beginShape();
        vertex(0, 0);
        vertex(figureW, 0);
        vertex(figureW*0.5,figureH);
        endShape(CLOSE);
        fill(hueValues[numTiles-index],saturationValues[numTiles-index],brightnessValues[numTiles-index], alpha);
        beginShape();
        vertex(-figureW*0.5, figureH);
        vertex(figureW*0.5, figureH);
        vertex(0,0);
        endShape(CLOSE);
      popMatrix();
      index ++;
    }
  }
  index = 0;
  // last column
  for(int j=0; j<=tileCountY; j++){
    pushMatrix();
    translate((tileCountX+1)*figureW,j*figureH);
      fill(hueValues[index],saturationValues[index],brightnessValues[index], alpha);
      beginShape();
      vertex(-figureW*0.5, figureH);
      vertex(figureW*0.5, figureH);
      vertex(0,0);
      endShape(CLOSE);
    popMatrix();
    index++;
  }  
}

void drawHexagons(){
  int index = 0;
  for(int i=0; i<=tileCountX; i++){
    for(int j=0; j<=tileCountY; j++){
      pushMatrix();
      translate(i*figureW + figureW*0.5, j*figureH + figureH*0.5);
        fill(hueValues[numTiles-index],saturationValues[numTiles-index],brightnessValues[numTiles-index], alpha);
        translate(-figureW*0.5, -figureH*0.5);
        beginShape();
        vertex(figureW*0.35, 0);
        vertex(figureW*0.65, 0);
        vertex(figureW*0.85,figureH*0.5);
        vertex(figureW*0.65, figureH);
        vertex(figureW*0.35, figureH);
        vertex(figureW*0.15,figureH*0.5);
        endShape(CLOSE);
        fill(hueValues[numTiles-index],saturationValues[numTiles-index],brightnessValues[numTiles-index], alpha);
        beginShape();
        vertex(figureW*0.35, 0);
        vertex(figureW*0.15,figureH*0.5);
        vertex(-figureW*0.15,figureH*0.5);
        vertex(-figureW*0.15,figureH*0.5);
        vertex(-figureW*0.35, 0);
        vertex(-figureW*0.15, -figureH*0.5);
        vertex(figureW*0.15, -figureH*0.5);
        endShape(CLOSE);
      popMatrix();
      index++;
    }
  }
  index = 0;
  // last column
  for(int j=0; j<=tileCountY; j++){
    pushMatrix();
    translate((tileCountX+1)*figureW,j*figureH);
      fill(hueValues[index],saturationValues[index],brightnessValues[index], alpha);
      beginShape();
      vertex(figureW*0.35, 0);
      vertex(figureW*0.15,figureH*0.5);
      vertex(-figureW*0.15,figureH*0.5);
      vertex(-figureW*0.15,figureH*0.5);
      vertex(-figureW*0.35, 0);
      vertex(-figureW*0.15, -figureH*0.5);
      vertex(figureW*0.15, -figureH*0.5);
      endShape(CLOSE);
    popMatrix();
    index++;
  }
  index = 0;
  // last row
  for(int i=0; i<=tileCountX; i++){
    pushMatrix();
    translate(i*figureW,(tileCountY+1)*figureH);
      fill(hueValues[index],saturationValues[index],brightnessValues[index], alpha);
      beginShape();
      vertex(figureW*0.35, 0);
      vertex(figureW*0.15,figureH*0.5);
      vertex(-figureW*0.15,figureH*0.5);
      vertex(-figureW*0.15,figureH*0.5);
      vertex(-figureW*0.35, 0);
      vertex(-figureW*0.15, -figureH*0.5);
      vertex(figureW*0.15, -figureH*0.5);
      endShape(CLOSE);
    popMatrix();
    index++;
  }  
}

void drawCircles(){
  int index = 0;
  for(int i=0; i<=tileCountX; i++){
    for(int j=0; j<=tileCountY; j++){
      pushMatrix();
      translate(i*figureW + figureW*0.5, j*figureH + figureH*0.5);
        fill(hueValues[index],saturationValues[index],brightnessValues[index], alpha*0.5);
        rect(-figureW*0.5,-figureH*0.5,figureW,figureH);
        fill(hueValues[index],saturationValues[index],brightnessValues[index], alpha);
        ellipse(0,0,figureW,figureH);
      popMatrix();
      index++;
    }
  }  
}

void drawRombs(){
  int index = 0;
  for(int i=0; i<=tileCountX; i++){
    for(int j=0; j<=tileCountY; j++){
      fill(hueValues[index],saturationValues[index],brightnessValues[index], alpha);
      pushMatrix();
      translate(i*figureW,j*figureH);
        beginShape();
        vertex(figureW*0.5, 0);
        vertex(figureW, figureH*0.5);
        vertex(figureW*0.5,figureH);
        vertex(0,figureH*0.5);
        endShape(CLOSE);
        fill(hueValues[numTiles-index],saturationValues[numTiles-index],brightnessValues[numTiles-index], alpha);
        beginShape();
        vertex(0, -figureH*0.5);
        vertex(figureW*0.5, 0);
        vertex(0,figureH*0.5);
        vertex(-figureW*0.5, 0);
        endShape(CLOSE);
      popMatrix();
      index ++;
    }
  }
  index = 0;
  // last column
  for(int j=0; j<=tileCountY; j++){
    pushMatrix();
    translate((tileCountX+1)*figureW,j*figureH);
      fill(hueValues[index],saturationValues[index],brightnessValues[index], alpha);
      beginShape();
      vertex(0, -figureH*0.5);
      vertex(figureW*0.5, 0);
      vertex(0,figureH*0.5);
      vertex(-figureW*0.5, 0);
      endShape(CLOSE);
    popMatrix();
    index++;
  }
  index = 0;
  // last row
  for(int i=0; i<=tileCountX; i++){
    pushMatrix();
    translate(i*figureW,(tileCountY+1)*figureH);
      fill(hueValues[index],saturationValues[index],brightnessValues[index], alpha);
      beginShape();
      vertex(0, -figureH*0.5);
      vertex(figureW*0.5, 0);
      vertex(0,figureH*0.5);
      vertex(-figureW*0.5, 0);
      endShape(CLOSE);
    popMatrix();
    index++;
  }
}

// ------------------------------------------------
// SET COLORS
void setColors(){
  if(animal == 0){
    setColorsMagenta();
  }
  else if(animal == 1){
    setColorsBlaus();
  }
  else if(animal == 2){
    setColorsGrisos();
  }
  else if(animal == 3){
    setColorsMarrons();
  }
  else if(animal == 4){
    setColorsMorat();
  }
    
}

void setColorsBlaus(){
  numTiles = min(MAX_NUM_TILES, (tileCountX+1)*(tileCountY+1));
  for (int i=0; i<numTiles; i++){
    hueValues[i] = 195;
    saturationValues[i] = (int)random(10,100);
    brightnessValues[i] = (int)random(60,100);
  }
  noStroke();
}

void setColorsMagenta(){
  numTiles = min(MAX_NUM_TILES, (tileCountX+1)*(tileCountY+1));
  for (int i=0; i<numTiles; i++){
    hueValues[i] = 327;
    saturationValues[i] = (int)random(40,100);
    brightnessValues[i] = (int)random(20,100);
  }
  noStroke();
}

void setColorsMarrons(){
  numTiles = min(MAX_NUM_TILES, (tileCountX+1)*(tileCountY+1));
  for (int i=0; i<numTiles; i++){
    hueValues[i] = 27;
    saturationValues[i] = (int)random(60,100);
    brightnessValues[i] = (int)random(15,50);
  }
  noStroke();
}

void setColorsGrisos(){
  numTiles = min(MAX_NUM_TILES, (tileCountX+1)*(tileCountY+1));
  for (int i=0; i<numTiles; i++){
    hueValues[i] = 16;
    saturationValues[i] = (int)random(0,30);
    brightnessValues[i] = (int)random(0,70);
  }
  noStroke();
}

void setColorsMorat(){
  numTiles = min(MAX_NUM_TILES, (tileCountX+1)*(tileCountY+1));
  for (int i=0; i<numTiles; i++){
    hueValues[i] = 269;
    saturationValues[i] = (int)random(10,80);
    brightnessValues[i] = (int)random(20,60);
  }
  noStroke();
}

// ------------------------------------------------
// ICONES
void drawIcones(int quincolor){
    image(ihexagon[quincolor],   20+18, 142+70, 35,30);
    image(irect[quincolor],      106+14,142+70, 28,28);
    image(itriangle[quincolor],  186+17,142+70, 34,30);
    image(iromb[quincolor],      270+18,142+70, 35,35);
    image(iirregular[quincolor], 351+20,142+70, 40,20);
    
    image(ipingui[quincolor],    20+18, 232+70, 24,42);
    image(ios[quincolor],        106+14,230+70, 88,50);
    image(illop[quincolor],      186+25,234+70, 49,41);
    image(iren[quincolor],       270+18,224+70, 65,62);
    image(ifoca[quincolor],      351+20,234+70, 50,34);
}
