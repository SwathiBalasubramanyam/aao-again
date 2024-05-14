class Board{
    constructor(){
        this.slots = [0,1,2,3,4,5,6,7,8];
    }

    won(){
        for(let i=0; i<this.slots.length; i+=3){
            if(this.slots[i] === this.slots[i+1] && this.slots[i+1] === this.slots[i+2]){
                return [true, this.slots[i]];
            }
        }

        for(let i=0;i<3; i++){
            if(this.slots[i] === this.slots[i+(3*1)] &&  this.slots[i+(3*1)] === this.slots[i+(3*2)]){
                return [true, this.slots[i]];
            }
        }

        if(this.slots[0] === this.slots[4] && this.slots[4] === this.slots[8]){
            return [true, this,slots[0]];
        }

        if(this.slots[2] === this.slots[4] && this.slots[4] === this.slots[6]){
            return [true, this.slots[2]];
        }

        return [false, undefined];
    }

    winner(){
        let is_won, player = this.won();
        if (is_won){
            return player
        }
    }

    empty(pos){
        console.log("what is in the pos", pos, this.slots[pos]);
        return (this.slots[pos] !== "X" && this.slots[pos] !== "O");
    }

    place_mark(pos, mark){
        if(this.empty(pos)){
            this.slots[pos] = mark;
        }
    }

}

module.exports = Board;