// Your code here

let arr = [1,1,1,1,2,3,3,3,3];

// console.log(arr.uniq());
Array.prototype.uniq = function(){
    let newSet = new Set(this);
    
    return Array.from(newSet);
}

console.log(arr.uniq());

Array.prototype.twoSum = function(){

    let pairs = [];
    for(let idx=0; idx<this.length; idx++){
        for(let jdx=idx+1; jdx<this.length; jdx++){
            if (this[idx] + this[jdx] === 0){
                pairs.push([idx, jdx]);
            }
        }
    }
    return pairs;
}



console.log([-1, 0, 2, -2, 1].twoSum());

Array.prototype.transpose = function() {
    
    let rows = this.length;
    let cols = this[0].length;

    let transArr = new Array(rows).fill(null).map(() => 
        new Array(cols).fill(0)
    );

    for(let i=0; i<rows; i++){
        for(let j=0; j<cols; j++){
            transArr[j][i] = this[i][j];
        }
    }

    return transArr;
}


console.log([[0, 1, 2], [3, 4, 5], [6, 7, 8]].transpose());