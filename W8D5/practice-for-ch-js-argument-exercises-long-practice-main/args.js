function sum(){
    let total_sum = 0
    for(let i=0; i< arguments.length; i++){
        total_sum += arguments[i];
    }
    return total_sum;
}

function sum2(...nums){
    let total_sum = 0
    for(let i=0; i< nums.length; i++){
        total_sum += nums[i];
    }
    return total_sum;
}

console.log(sum(1,2,3));
console.log(sum2(1,2,3));