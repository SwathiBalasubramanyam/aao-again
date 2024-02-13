function soundMaker(sound, times){

    function makeSound() {
        console.log(`${sound}`);
    }

    for(let i=0; i<times;i++) {
        makeSound();
    }
}

soundMaker("woof", 5);

setTimeout(function() {
    console.log("It has been 5 seconds");
}, 1000);

//  that is ES5 

setTimeout(() => {
    console.log("this is new ES6 sysntax")
}, 500)

var abc = false;

if (abc === 0 || abc === "" || abc === undefined || abc === null || abc === NaN || abc === false) {
    console.log('In JavaScript, this will not print.')
}

const favFood = {name: "pizza"}
favFood.name = "dosa"
console.log(favFood)