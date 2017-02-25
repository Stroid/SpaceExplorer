//SpaceExplorer

HUD hud;
SpacePod pod;

void setup() {
  size(480, 620);

  pod = new SpacePod(width/2, height/2, 50, 50);
  hud = new HUD();
}
void draw() {
  pod.update();
  pod.render();
  
  hud.render();
}

float clamp(float value, float min, float max) {
  if (value < min) {
    return min;
  } else if (value > max) {
    return max;
  } else
    return value;
}