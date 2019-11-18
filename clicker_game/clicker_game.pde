import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//minim variables
Minim minim;//toolbox of functions
AudioPlayer bump, coin, theme, gameover;// idividual sound files

//Features to add
//-target bounces on edge of circle
//-target speeds up when clicked
//-make the target look interesting ( image or custom drawing)



int mode;
final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

float x, y, vx, vy;
int score, lives;

void setup() {
  x = 400;
  y = 400;
  vx = random(-10, 10);
  vy = random(-10, 10);
  
  
  score = 0;
  lives = 3;
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  
  //loading sound files
  minim = new Minim(this);
  coin = minim.loadFile("coin.wav");
  bump = minim.loadFile("bump.wav");
  gameover = minim.loadFile("gameover.wav");
  theme= minim.loadFile("mario bros theme.mp3");
  
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}
