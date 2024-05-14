const { read } = require("fs");
const Board = require("./board.js");
const Player = require("./player.js");
const readline = require("readline");

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

class Game {
    constructor(reader){
        this.board = new Board();
        this.player1 = new Player("Player1", "X");
        this.player2 = new Player("Player2", "O");
        this.currentPlayer = this.player1;
        this.run(reader, this.gameOver);
    }

    gameOver(winner){
        console.log(`Player with symbol ${winner} has won the game!!`);
    }

    run(reader, completionCallback){
        reader.question(`${this.currentPlayer.name}, pick a slot from 0-8 to place your mark`, (userInput) => {
            let slotIdx = parseInt(userInput);
            if (this.board.empty(slotIdx)){
                this.board.place_mark(slotIdx, this.currentPlayer.symbol);
                this.currentPlayer === this.player1 ? this.currentPlayer = this.player2 : this.currentPlayer = this.player1;
            }

            let [isWon, winner] = this.board.won();
            if(isWon){
                reader.close();
                completionCallback(winner);
            } else{
                console.log("the current state of the board", this.board.slots);
                this.run(reader, completionCallback);
            }

        })
    }
}

const game = new Game(reader);

