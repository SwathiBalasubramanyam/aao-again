

function madLib(verb, adj, noun){
    return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`
}

console.log(madLib('make', 'best', 'guac'));

function isSubstring(searchString, subString){
    return searchString.indexOf(subString) >= 0;
}

console.log(isSubstring("time to program", "time"));
console.log(isSubstring("Jump for joy", "joys"))

function fizzBuzz(arr){
    let newArr = []
    for(let idx=0; idx < arr.length; idx++){
        if (arr[idx] % 3 == 0 && arr[idx] % 5 == 0){
            continue
        } else if (arr[idx] % 3 == 0 || arr[idx] % 5 == 0){
            newArr.push(arr[idx])
        }
    }
    return newArr
}

console.log(fizzBuzz([1,2,3,4,5,6]))

function isPrime(num){
    if (num < 2){
        return false
    }

    for(let idx = 2; idx < num; idx++){
        if (num % idx == 0){
            return false
        }
    }
    return true
}
console.log(isPrime(2))
true

console.log(isPrime(10))
false

console.log(isPrime(15485863))
true

console.log(isPrime(3548563))
false


function sumOfNPrimes(num){
    let idx = 2
    let primeArr = []
    while (primeArr.length < num){
        if (isPrime(idx)){
            primeArr.push(idx);
        }
        idx++;
    }
    return primeArr.reduce((acc, currentVal) => {
        return acc + currentVal
    }, 0)
}

console.log(sumOfNPrimes(4))