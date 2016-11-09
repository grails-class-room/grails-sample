var vm = new Vue({
  el: '#pessoaController',
  data: {
    pessoa:{},
    pessoas:[]
  },
  created: function(){
    this.listar();
  },
  methods:{
    listar: function(){
      this.$http.get('/pessoa/index.json').then(function(response){
        this.pessoas = response.data;
      })
    },
    salvar: function(){
      var pessoaRef = this.pessoa;
      if(pessoaRef.id){
        //altera
      }else{
        this.$http.post('/pessoa/save.json',pessoaRef).then(function(response){
          this.pessoa = {};
          this.listar();
        }, function(response){
          alert('Falha ao criar recurso')
        });
      }
    }
  }
})
