void game() {
  background(17, 165, 216);
  
   //target
 strokeWeight(1);
fill(240, 229, 10);
 ellipse(x, y, 100, 100);
  
    stroke(255);
  fill(255);
  ellipse(250, 300, 110, 110);//clouds
  ellipse(300, 250, 110, 110);
  ellipse(350, 300, 110, 110);
  
  ellipse(550, 350, 110, 110);//clouds2
  ellipse(600, 300, 110, 110);
  ellipse(650, 350, 110, 110);
  
  
  fill(0);
  textSize(40);
  text("Score: " + score, 100, 100);
  text("Lives: " + lives, 100, 300);
  


 //movement
 x = x + vx;
 y = y + vy;
 
 //bounce top or bottom
 if(y < 50 || y > 750) vy = vy * -1;
 if (x < 50 || x > 750) vx = vx * -1;
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
      lives = 3;
      score = 0;
      
  }
  }
}
