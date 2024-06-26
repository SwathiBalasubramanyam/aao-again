const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
})

function addNumbers(sum, numsLeft, completionCallback){
    if (numsLeft > 0){
        reader.question("Please enter a number", (userInput) => {
            let uI = parseInt(userInput);
            sum += uI;
            console.log(`current sum is, ${sum}`);
            addNumbers(sum, --numsLeft, completionCallback)
        })
    } else {
        completionCallback(sum);
        reader.close();
    }
}

addNumbers(0, 3, sum => console.log(`Total Sum: ${sum}`));