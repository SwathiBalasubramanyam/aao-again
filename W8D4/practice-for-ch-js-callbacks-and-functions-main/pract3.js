import readline from 'readline';

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

reader.question("Would you like some tea?", (teaRes) => {
    console.log(`The user said ${teaRes}`);
    reader.question("Would you like some biscuits?", (bisRes) => {
        console.log(`So you ${teaRes} want tea and you
        ${bisRes} want coffee.`);
    })
})