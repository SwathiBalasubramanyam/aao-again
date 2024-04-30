function NBAPlayer(name, team, pos) {
    this.name = name;
    this.team = team;
    this.pos = pos;
}

const curry = new NBAPlayer("not curry", "some team", 1)


NBAPlayer.prototype.dunk = function(){
    console.log("this is the dunk method")
}

console.log(curry)
console.log("this is curry's proto", curry.__proto__)
console.log("this is curry's prototype", curry.prototype)