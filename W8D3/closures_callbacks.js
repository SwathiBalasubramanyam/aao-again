function soundMaker(sound, time) {

    function makeSound(){
        console.log(`${sound}`);
    }

    for(let i=0; i<time; i++){
        makeSound();
    }
}

soundMaker("woof", 5)

function summation(arr){
    let sum = 1;

    function summer(){
        for(let i=0; i<arr.length; i++){
            sum *= arr[i];
        }
    }

    summer();

    return sum;
}

console.log(summation([1,2,3,4]));

let callback = function(var1) {
    
    console.log("It has been 5 seconds!");
    var1 = 250;
}

callback(200);

// let timeToWait = 5000;

// // globalThis.setTimeout(callback, timeToWait);
// globalThis.setTimeout(function(){
//     console.log("It has been 3 seconds!");
// }, 3000);

if (0){
    console.log("In JS, this will not print.")
}

function blockScope(){

    let y = 'let';
    const z = 'const';
    if (true) {
        var x = 'var';
        
        console.log(x);
        console.log(y);
        const z = 'const1';
        console.log(z);

    }
    console.log(x);
    console.log(y);
    console.log(z);


}

blockScope()


function logIfEven(num){

    if (num % 2 === 0){
        console.log(`${num} is an even number!`);
    }
}

// [1,2,3,4].forEach(logIfEven)

function myForEach(array, cb){

    for(let i=0; i<array.length; i++){
        cb(array[i]);
    }

}

myForEach([1,2,3,4], logIfEven)