// Your code here

Array.prototype.bubbleSort = function(){
    let sorted = false;
    while (!sorted){
        sorted = true;
        for(let i=0; i<this.length-1; i++){
            if(this[i] > this[i+1]){
                [this[i+1], this[i]] = [this[i], this[i+1]];
                sorted = false;
            }
        }
    }
}

let bubArr = [1,5,3,4,2];
bubArr.bubbleSort();
// console.log(bubArr);

String.prototype.substrings = function(){
    let resArr = [];
    for(let i=0; i<this.length; i++){
        for(let j=i+1; j<this.length+1; j++){
            resArr.push(this.slice(i, j))
        }
    }
    return resArr;
}

console.log("swathi".substrings())