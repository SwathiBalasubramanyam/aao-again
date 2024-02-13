function NBAPlayer(name, team, pos){
    this.name = name;
    this.team = team;
    this.pos = pos
}

const curry = new NBAPlayer("Diya Arunkumar", "giants", 1)

NBAPlayer.prototype.dunk = function () {
    console.log("this is the dunk method on the nba prototype");
    console.log(`this is the name ${this.name}`)
}

curry.dunk();
console.log(curry.prototype);
console.log(NBAPlayer.prototype)