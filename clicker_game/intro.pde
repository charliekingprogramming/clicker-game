void intro() {
    background(240, 202, 75);
  
  fill(0);
  textSize(100);
  fill(37, 15, 167);
  text("Click the DOT", 400, 200);
  
  theme.play();
}


void introClicks() {
  if (mouseX > 400 && mouseX < 600 && mouseY > 600 && mouseY < 700);
  mode = GAME;
  theme.pause();
  theme.rewind();
  
}
