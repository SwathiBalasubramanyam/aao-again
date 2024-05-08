const titleize = function(names, callback){
    callback(names.map((name) => {
        return name.split(" ").map((subName) => subName[0].toUpperCase() + subName.slice(1).toLowerCase()).join(" ")
    }))
}

const myCallback = function(names){
    names.forEach((name) => console.log(`${name}`));
}

titleize(["swathi arun"], myCallback);

console.log("*************phase2**************")

class Elephant{
    constructor(name, height, tricks){
        this.name = name;
        this.height = height;
        this.tricks = tricks;
    }

    trumpet(){
        console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!'`)
    }

    grow(){
        this.height += 12;
    }

    addTrick(trick){
        this.tricks.push(trick);
    }

    play(){
        let trick = this.tricks[Math.floor(Math.random() * (this.tricks.length-1))];
        console.log(`${this.name} is ${trick}!`);
    }
}

let ele1 = new Elephant("jumbo", 24, ["dance", "sing"]);
ele1.trumpet();

console.log("*************phase3**************")
let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function(elephant){
    console.log(`${elephant.name} is trotting by!`);
}

herd.forEach(Elephant.paradeHelper);

console.log("*************phase4**************")

const dinerBreakfast = function(){
    let orders = [];
    return (order) => {
        orders.push(order);
        console.log(orders.join(" and "));
    }
}

let bfastOrder = dinerBreakfast();
bfastOrder("I'd like cheesy scrambled eggs please");
bfastOrder("chocolate chip pancakes");
// "I'd like cheesy scrambled eggs and chocolate chip pancakes please."
bfastOrder("grits");
// "I'd like cheesy scrambled eggs and chocolate chip pancakes and grits please."
