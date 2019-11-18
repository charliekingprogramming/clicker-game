void intro() {
  background(255);
  
  fill(0);
  textSize(200);
  text("HELLO", 400, 400);
  theme.play();
}


void introClicks() {
  if (mouseX > 400 && mouseX < 600 && mouseY > 600 && mouseY < 700);
  mode = GAME;
  theme.pause();
  theme.rewind();
  
}
