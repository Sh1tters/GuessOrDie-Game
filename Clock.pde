int cx, cy;
float secondsRadius;
float clockDiameter;
color co;

class Clock {

  Clock() {
    int radius = min(width, height) + 20;
    secondsRadius = radius * 0.72;
    clockDiameter = radius * 1.8;

    cx = 1650;
    cy = 250;
    co = 255;
  }

  void main() {
    // Draw the clock background
    fill(#BE86B1);
    noStroke();
    ellipse(cx, cy, clockDiameter, clockDiameter);

    // Angles for sin() and cos() start at 3 o'clock;
    // subtract HALF_PI to make them start at the top
    float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;

    // Draw the hands of the clock
    stroke(co);
    strokeWeight(1);
    line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
    
    // refill to white
    fill(255);
  }
}
