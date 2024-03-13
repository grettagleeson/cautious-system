/*
Project 1 Content Machine
Gretta Gleeson
05/15/23

For this project, I used adobe illustrator to graph out and sketch a variety of different 
'characters' and split them into 3rds. Each background was sketched out on adobe 
illustrator as well. Each aspect is my original work. When the mouse clicks on the 
character, each part will be randomized. I wanted this to resemble a child-like random 
creature generator. I decided to be playful with bold and strong details. 

*/



PImage[] Head = new PImage[10];
PImage[] Body = new PImage[10];
PImage[] Legs = new PImage[10];
PImage[] Background = new PImage[5];

int headIndex = 0;
int bodyIndex = 0;
int legsIndex = 0;
int friendIndex = 0;
int backgroundIndex = 0;

void setup() {
  size(1000, 1000);
  imageMode(CENTER);
  for (int h = 0; h < 10; h++) {
    Head[h] = loadImage("Head" + h + ".png");
    Head[h].resize(600, 600);
  }
  for (int b = 0; b < 10; b++) {
    Body[b] = loadImage("Body" + b + ".png");
    Body[b].resize(600, 600);
  }
  for (int l = 0; l < 10; l++) {
    Legs[l] = loadImage("Legs" + l + ".png");
    Legs[l].resize(600, 600);
  }
  for (int bk = 0; bk < 5; bk++) {
    Background[bk] = loadImage("Background" + bk + ".png");
    Background[bk].resize(950, 950);
  }
}

void draw() {
  background(255);
  image(Background[backgroundIndex], width / 2, height / 2, width, height); // Display background image with full width and height
  image(Head[headIndex], width / 2, height / 2);
  image(Body[bodyIndex], width / 2, height / 2);
  image(Legs[legsIndex], width / 2, height / 2);
}

void mousePressed() {
  if (mouseX > 410 && mouseX < 550 && mouseY > 0 && mouseY < 900) {
    headIndex = int(random(Head.length));
  }
  if (mouseX > 410 && mouseX < 550 && mouseY > 0 && mouseY < 900) {
    bodyIndex = int(random(Body.length));
  }
  if (mouseX > 410 && mouseX < 550 && mouseY > 0 && mouseY < 900) {
    legsIndex = int(random(Legs.length));
  }
  if (mouseX > 410 && mouseX < 550 && mouseY > 0 && mouseY < 900) {
    backgroundIndex = int(random(Background.length));
  }
  if (mouseX > 0 && mouseX < 150 && mouseY > 0 && mouseY < 900) {
    headIndex = int(random(Head.length));
  }
  if (mouseX > 0 && mouseX < 150 && mouseY > 0 && mouseY < 900) {
    bodyIndex = int(random(Body.length));
  }
  if (mouseX > 0 && mouseX < 150 && mouseY > 0 && mouseY < 900) {
    legsIndex = int(random(Legs.length));
  }
  if (mouseX > 0 && mouseX < 150 && mouseY > 0 && mouseY < 900) {
    backgroundIndex = int(random(Background.length));
  }
}

void keyPressed() {
  save("creature" + friendIndex + ".jpg");
  friendIndex++;
}
