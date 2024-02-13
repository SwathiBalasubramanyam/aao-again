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
var purrLots = cat.purrMore;


function SumCalculator() {
    this.sum = 0;
}

SumCalculator.prototype.addNumbers = function(numbers){
    const sum = this;
    numbers.forEach(function(number){
        sum.sum += number;
    })
    return this.sum;
}

const sumIns = new SumCalculator()
console.log(sumIns.addNumbers([1,2,3]))

function times(n, callback) {
    let i = 0;
    while (i < n) {
        callback();
        i++;
    }
};

function dogTrick(dogName, trickVerb) {
times(3, function () {
    console.log(`${dogName} is ${trickVerb}!`);
});
};

dogTrick("leo", "cute")