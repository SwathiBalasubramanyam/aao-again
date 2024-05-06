function Game(){
    this.towers = [[3,2,1], [], []];
}

Game.prototype.printStacks = function(){
    console.log(JSON.stringify(this.towers));
}

Game.prototype.run = function(completionCallback){
    while (!this.isWon()){
        this.promtMove((startTowerIdx, endTowerIdx) => {
            return this.move(startTowerIdx, endTowerIdx);
        });
    }
    completionCallback();
}

Game.prototype.promtMove = function(callback){
    this.printStacks();
    if (!callback(Math.floor(Math.random() * 3), Math.floor(Math.random() * 3))){
        console.log("Your move failed");
    }
}

Game.prototype.isValidMove = function(startTowerIdx, endTowerIdx){
    let lenStartTower = this.towers[startTowerIdx].length;
    let lenEndTower = this.towers[endTowerIdx].length;
    let discAtStart = this.towers[startTowerIdx][lenStartTower-1];
    let discAtEnd = this.towers[endTowerIdx][lenEndTower-1];

    if ((!lenStartTower > 0) || (discAtEnd && discAtEnd > discAtStart)){
        return false;
    }

    return true;
}

Game.prototype.move = function(startTowerIdx, endTowerIdx){
    console.log(`Attempting to move from ${startTowerIdx} to ${endTowerIdx}`);
    if (!this.isValidMove(startTowerIdx, endTowerIdx)){
        return false;
    }
    let lenStartTower = this.towers[startTowerIdx].length;
    this.towers[endTowerIdx].push(this.towers[startTowerIdx][lenStartTower-1]);
    this.towers[startTowerIdx].pop()
    return true;
}

Game.prototype.isWon = function(){
    let compArr = [3,2,1];
    return this.towers[2].length && this.towers[2].every((val, idx) => val === compArr[idx]);
}
let game1 = new Game();
game1.run(() => console.log("Game over!!"));
