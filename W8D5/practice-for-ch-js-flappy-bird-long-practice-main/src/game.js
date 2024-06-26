import Level from "./level";
import Bird from "./bird";

export default class FlappyBird {
  constructor(canvas) {
    this.ctx = canvas.getContext("2d");
    this.dimensions = { width: canvas.width, height: canvas.height };
    this.ctx.canvas.addEventListener("mousedown", this.click.bind(this));
    this.restart();
  }

  restart(){
    this.bird = new Bird(this.dimensions);
    this.level = new Level(this.dimensions);
    this.running = true;
    this.animate();
  }

  gameOver() {
    return (
      this.level.collidesWith(this.bird.getBounds()) 
    );
  }

  animate(){
    this.level.animate(this.ctx);
    this.bird.animate(this.ctx);

    if (this.gameOver()) {
      alert("Game Over");
      this.restart();
    }
    
    if (this.running) {
      requestAnimationFrame(this.animate.bind(this));
    }

  }

  play(){
    this.running = true;
    this.animate()
  }

  click(event){
    if (!this.running){
      this.play();
    }
    this.bird.flap();
  }
}