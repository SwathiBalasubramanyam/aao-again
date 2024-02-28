// Your code here
let rangeRec = function(start, end){
    if(start > end){
        return [];
    }
    return [start].concat(rangeRec(start+1, end));
}

console.log(rangeRec(1,5));

let sumRec = function(numArr){
    if(numArr.length === 0){
        return 0;
    }

    return numArr[0] + sumRec(numArr.slice(1));
}

console.log(sumRec([1,2,3]));

let exponent = function(base, exp){
    if (exp === 0){
        return 1
    }
    return base * exponent(base, exp-1)
}

console.log(exponent(3, 2));

let exponent2 = function(base, exp){
    if(exp === 0){
        return 1
    } else if(exp === 1){
        return base
    }

    if(exp % 2 === 0){
        return exponent2(base, exp/2) ** 2
    } else {
        return b ** (exponent2(base, (exp-1)/2) ** 2)
    }
}

let fibonacci = function(n){
    if(n===1){
        return [1]
    } else if(n=== 2){
        return [1, 1]
    }
    
    let fibn = fibonacci(n-1)
    let len = fibn.length
    return fibn.concat(fibn[len-1]+fibn[len-2])
}

console.log(fibonacci(7))

let deepDup = function(arr){
    let dupArr = new Array();
    for(let i=0; i<arr.length; i++){
        if(arr[i] instanceof Array){
            dupArr = dupArr.concat(deepDup(arr[i]))
        } else {
            dupArr.push(arr[i]);
        }
    }
    return dupArr;
}

console.log(deepDup([1,2,[3,4]]));

function bsearch(arr, target){
    if (arr.length === 0){
        return -1
    }

    let mid = Math.floor(arr.length / 2);
    if (target === arr[mid]){
        return mid
    } else if (target < arr[mid]){
        return bsearch(arr.slice(0, mid), target)
    } else {
        let searchAgain = bsearch(arr.slice(mid+1), target)
        return searchAgain === -1 ? searchAgain : searchAgain + mid + 1; 
    }
}

console.log(`bsearch([1, 2, 3], 3) = ${bsearch([1, 2, 3], 3)}`);
console.log(`bsearch([1, 2, 3], 2.5) = ${bsearch([1, 2, 3], 2.5)}`);


function sort(arr1, arr2){

    let resArr = [];
    while (arr1.length > 0 && arr2.length > 0){
        if (arr1[0] > arr2[0]){
            resArr.push(arr2[0]);
            arr2 = arr2.slice(1);
        } else{
            resArr.push(arr1[0]);
            arr1 = arr1.slice(1);
        }
    }

    return resArr.concat(arr1, arr2);
}

function mergesort(arr){
    if(arr.length <= 1){
        return arr
    }

    let mid = Math.floor(arr.length/2);
    let left = arr.slice(0, mid);
    let right = arr.slice(mid);

    return sort(mergesort(left), mergesort(right))
}

console.log(mergesort([2,1,4,3]))

function subsets(arr){
    if(arr.length === 1){
        return [arr];
    }

    let first = arr[0];
    let restSubSets = subsets(arr.slice(1));

    let includeFirst = restSubSets.map(subArr => [first].concat(subArr));
    return includeFirst.concat(restSubSets);
}

console.log(subsets([1]))