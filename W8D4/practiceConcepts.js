function createCounter() {
    let count = 0;
    return () => ++count;
}

let counter1 = createCounter();
console.log(counter1());
console.log(counter1());
