<template>
    <div id="app">
        <h2>Hello PWA!</h2>
        <img alt="Vue logo" src="./assets/logo.png">
        <Counter/>
    </div>
</template>

<script>
    import Counter from './components/Counter.vue'

    export default {
        name: 'app',
        components: {
            Counter
        }
    }
</script>

<style lang="scss">
    #app {
        font-family: 'Avenir', Helvetica, Arial, sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        text-align: center;
        color: #2c3e50;
        margin-top: 60px;
    }
</style>
