let cat = {
    purr: function() {
        console.log("meow");
    },
    purrMore: function() {
        for (let i = 0; i < 1; i++) {
            this.purr();
        }
    }
};

cat.purr();
cat.purrMore();
let purrLots = cat.purrMore;

// purrLots() TypeError --> this.purr is not a function


function SumCalculator() {
    this.sum = 0;
}

SumCalculator.prototype.addNumbers = function(numbers){

    const SumCalculator = this;
    numbers.forEach(function(number){
        SumCalculator.sum += number;
    })

    return this.sum;
}

const sumIns = new SumCalculator()
console.log(sumIns.addNumbers([1,2,3]))

// function times(n, callback) {
//     let i = 0;
//     while (i < n) {
//         callback();
//         i++;
//     }
// };

// function dogTrick(dogName, trickVerb) {
// times(3, function () {
//     console.log(`${dogName} is ${trickVerb}!`);
// });
// };

// dogTrick("leo", "cute")


function testFn () {
    const favoriteFood = "pizza";
    if (true) {
        let favoriteFood = "ramen";
        console.log(favoriteFood);
    }
    console.log(favoriteFood);
}

testFn()