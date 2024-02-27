// Your code here

Array.prototype.myEach = function(callback){

    for(let idx=0; idx<this.length; idx++){
        callback(this[idx])
    }
}

Array.prototype.myMap = function(callback){
    let newArr = [];
    for(let idx=0; idx<this.length; idx++){
        newArr.push(callback(this[idx]))
    }
}

// Array.prototype.myReduce = function(callback, initialValue){
//     let accumulator;
//     let arr = this;

//     if (initialValue){
//         accumulator = initialValue;
//     } else {
//         accumulator = this[0];
//         arr = this.slice(1);
//     }

//     for(let idx=0; idx<arr.length; idx++){
//         accumulator = callback(accumulator, arr[idx]);
//     }
//     return accumulator;
// }

let arr = [1,2,3,4];

Array.prototype.myReduce = function(callback, initialVal){
    let arr = this;
    if (initialVal === undefined){
        initialVal = arr[0];
        arr = arr.slice(1);
    }
    arr.myEach(function(el){
        initialVal = callback(initialVal, el);
    })
    
    return initialVal
}

console.log(arr.myReduce((acc, el) => acc + el, 0));