const CONSTANTS = {
    GRAVITY:  0.5,
    FLAP_SPEED:  -8,
    TERMINAL_VEL:  12,
    BIRD_WIDTH:  40,
    BIRD_HEIGHT:  30
};

export default class Bird {
    constructor(dimensions){
        this.dimensions = dimensions;
        this.velocity = 0;
        this.x = this.dimensions.width / 4;
        this.y = this.dimensions.height / 2;
    }

    drawBird(ctx){
        ctx.fillStyle = "yellow";
        ctx.fillRect(this.x, this.y, CONSTANTS.BIRD_WIDTH, CONSTANTS.BIRD_HEIGHT);
    }

    animate(ctx){
        this.drawBird(ctx);
        this.move();
    }

    move(){
        this.y += this.velocity;
        this.velocity += CONSTANTS.GRAVITY
    }

    flap(){
        this.velocity = CONSTANTS.FLAP_SPEED;
    }
}