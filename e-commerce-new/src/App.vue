<template>
  <div>
    <div>
      <span class="p-input-icon-left">
          <i class="pi pi-search" />
          <InputText type="text" v-model="value" placeholder="O que você procura?" />
      </span>
    </div>
    <TabMenu :model="items" />
    <router-view/>
  </div>
</template>

<script>
export default {
	data() {
		return {
			items: [
        {label: 'Home', icon: 'pi pi-fw pi-home', to: '/'},
        {label: 'Produtos', icon: 'pi pi-fw pi-heart-fill', to: '/produtos'},
        {label: 'Carrinho', icon: 'pi pi-fw pi-shopping-cart', to: '/carrinho'},
      ],
      value: ''
		}
	}
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 30px;
}

nav a {
  font-weight: bold;
  color: #2c3e50;
}

nav a.router-link-exact-active {
  color: #42b983;
}
</style>
