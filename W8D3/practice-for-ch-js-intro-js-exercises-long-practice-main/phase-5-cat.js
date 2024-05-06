function Cat(name, owner){
    this.name = name;
    this.owner = owner;
    this.meow = function(){
        console.log("this cat can meow");
    }

}
Cat.prototype.cuteStatement = function(){
    return `"Everyone loves ${this.name}!"`
}



let cat1 = new Cat("pinky", "swathi");
console.log(cat1.cuteStatement());
cat1.meow();