void game() {
  background(0, 255, 0);
  
  fill(0);
  textSize(40);
  text("Score: " + score, 100, 100);
  text("Lives: " + lives, 100, 300);
  

 //target
 strokeWeight(4);
fill(255);
 ellipse(x, y, 100, 100);
 //movement
 x = x + vx;
 y = y + vy;
 
 //bounce top or bottom
 if(y < 0 || y > 750) vy = vy * -1;
 if (x < 0 || x > 750) vx = vx * -1;
}

void gameClicks() {
  if ( dist(mouseX, mouseY, x, y) < 50) {
    score = score +1; //or: score++;
    coin.rewind();
    coin.play();
  } else {
    lives = lives - 1;
    if (lives == 0) {
      mode = GAMEOVER;
      bump.rewind();
      bump.play();
  }
  }
}
