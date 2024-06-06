const LEVEL_CONSTANTS = {
  DIS_PAIR_PIPES: 220,
  GAP_BW_PIPES: 150,
  PIPE_HEIGHT: 210,
  PIPE_WIDTH: 50,
  PIPE_START_X: 480,
  PIPE_START_YTOP: 0,
  NUM_PIPES: 3,
  PIPE_COLORS: ["green", "red", "teal"],
}

export default class Level {
  constructor(dimensions) {
    this.dimensions = dimensions;
    this.pipes = []
  }

  drawBackground(ctx) {
    ctx.fillStyle = "skyblue";
    ctx.fillRect(0, 0, this.dimensions.width, this.dimensions.height);
  }

  drawPipe(ctx, prev_pipe){
    let pipeAttrs;

    if (prev_pipe === undefined){
      pipeAttrs = {
        pipeHeight: LEVEL_CONSTANTS.PIPE_HEIGHT,
        pipeWidth: LEVEL_CONSTANTS.PIPE_WIDTH,
        sx: LEVEL_CONSTANTS.PIPE_START_X,
        syTop: LEVEL_CONSTANTS.PIPE_START_YTOP,
      }
    } else {
      let randDelta = Math.floor(Math.random() * (100-10+1)) + 10;
      pipeAttrs = {
        pipeHeight: prev_pipe.pipeHeight+randDelta,
        pipeWidth: prev_pipe.pipeWidth,
        sx: prev_pipe.sx+LEVEL_CONSTANTS.GAP_BW_PIPES,
        syTop: prev_pipe.syTop,
      }
    }
    pipeAttrs.syBottom = pipeAttrs.pipeHeight + LEVEL_CONSTANTS.DIS_PAIR_PIPES

    ctx.fillStyle = "green";
    ctx.fillRect(pipeAttrs.sx, pipeAttrs.syTop, pipeAttrs.pipeWidth, pipeAttrs.pipeHeight);
    ctx.fillRect(pipeAttrs.sx, pipeAttrs.syBottom, pipeAttrs.pipeWidth, pipeAttrs.pipeHeight);

    this.pipes.push(pipeAttrs);

  }

  drawPipes(ctx){
    if (this.pipes.length > 0){
      this.movePipes(ctx);
    } else {
        for (let i=0; i<LEVEL_CONSTANTS.NUM_PIPES; i++){
            this.drawPipe(ctx, this.pipes[i-1]);
        }
      }
  }

  movePipes(ctx){
    for (let i=0; i<this.pipes.length; i++){

      let pipeAttrs = this.pipes[i];
      pipeAttrs.sx -= 2;

      if (pipeAttrs.sx === 0){
        pipeAttrs.sx = this.dimensions.width;
      }

      ctx.fillStyle = "green";
      ctx.fillRect(pipeAttrs.sx, pipeAttrs.syTop, pipeAttrs.pipeWidth, pipeAttrs.pipeHeight);
      ctx.fillRect(pipeAttrs.sx, pipeAttrs.syBottom, pipeAttrs.pipeWidth, pipeAttrs.pipeHeight);
    }
  }

  animate(ctx){
    this.drawBackground(ctx);
    this.drawPipes(ctx);
  }

  collidesWith(birdBounds){
    for(let i=0; i<this.pipes.length; i++){
      let pipeAttrs = this.pipes[i];

      if (pipeAttrs.sx > birdBounds.right || pipeAttrs.sx+pipeAttrs.pipeWidth < birdBounds.left) {
        continue;
      }
      if (pipeAttrs.pipeHeight > birdBounds.bottom || pipeAttrs.syBottom < birdBounds.top) {
        continue;
      }
      return true;
    }
  }

}