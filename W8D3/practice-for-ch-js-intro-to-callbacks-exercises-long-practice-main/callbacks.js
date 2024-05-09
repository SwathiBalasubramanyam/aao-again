class Clock{

    constructor(){
        this.time = new Date();
        this.hours = this.time.getHours();
        this.minutes = this.time.getMinutes();
        this.seconds = this.time.getSeconds();
        this.printTime();
        setInterval(() => {
            this.seconds += 1;
            if (this.seconds === 60){
                this.seconds = 0;
                this.minutes += 1;
            }

            if (this.minutes === 60){
                this.minutes = 0;
                this.hours += 1;
            }

            if (this.hours > 24){
                this.hours = 0;
            }
            this.printTime();
        }, 1000);
    }

    printTime(){
        console.log(`${this.hours}:${this.minutes}:${this.seconds}`);
    }
}

let clock = new Clock();