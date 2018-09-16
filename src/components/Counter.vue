<template>
    <div id="counter">
        <h1>{{ minutes }}:{{ seconds }}<small>.{{ microseconds }}</small></h1>
        <button @click="toggleCounterState">
            <span v-if="running">stop</span>
            <span v-else>start</span>
        </button>
        <button @click="reset">reset</button>

    </div>
</template>

<script>
    export default {
        name: "Counter",

        data() {
            return {
                running: false,
                start: null,
                interval: null,
                minutes: "00",
                seconds: "00",
                microseconds: 0,
            }
        },

        methods: {
            toggleCounterState: function () {
                if (this.running) {
                    // stop counter
                    this.running = false
                    this.start = null
                    clearInterval(this.interval)
                } else {
                    // start counter
                    this.running = true
                    this.start = Date.now()
                    this.interval = setInterval(() => {
                        let now = Date.now()
                        let diff = now - this.start


                        let minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
                        let seconds = Math.floor((diff % (1000 * 60)) / 1000);
                        let microseconds = Math.floor((diff % (1000)) / 100);

                        if (minutes < 10) minutes = "0" + minutes
                        if (seconds < 10) seconds = "0" + seconds

                        this.minutes = minutes
                        this.seconds = seconds
                        this.microseconds = microseconds
                    }, 100)
                }
            },

            reset: function () {
                this.minutes = "00"
                this.seconds = "00"
                this.microseconds = 0
                this.running = false
                clearInterval(this.interval)
            }
        }
    }
</script>

<style scoped>
    h1 {
        font-size: 5rem;
    }

    button {
        margin: 1rem;
        font-size: 2rem;
        border: 0;
        padding: 1rem;
        background-color: #40b883;
        color: #35495e;
    }
</style>