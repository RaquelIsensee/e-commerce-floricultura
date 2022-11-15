<template>
 <div> 
      <CarouselList :value="cars" :numVisible="3" :autoplayInterval="3000">
          <template #item="slotProps">
            <div class="item-carro">
              <p>{{slotProps.data.nome}}</p>
            </div>
        </template>
      </CarouselList>
 </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  props: {
    msg: String
  },
  data(){
    return {

    cars:[
      {id: 1, nome: 'A'}, 
      {id: 2, nome: 'B'}, 
      {id: 3, nome: 'C'},
      {id: 4, nome: 'D'}, 
      {id: 5, nome: 'E'}, 
      {id: 6, nome: 'F'},
      {id: 7, nome: 'G'}, 
      {id: 8, nome: 'H'}, 
      {id: 9, nome: 'I'},
    ]
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
.item-carro {
  padding: 100px; 
  box-shadow: 0 0 5px #ccc;
  border-radius: 10px;
  margin: 10px;
}
</style>
