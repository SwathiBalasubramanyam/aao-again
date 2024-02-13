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
    let newArr = [];

    for(let idx=0; idx<this.length; idx++){
        let subArr = [];
        for(let jdx=0; jdx<this[0].length; jdx++){
            subArr.push(this[jdx][idx]);
        }
        newArr.push(subArr);
    }
    return newArr;
}

console.log([[0, 1, 2], [3, 4, 5], [6, 7, 8]].transpose());