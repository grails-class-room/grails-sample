<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Página Exemplo - Vue.JS</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
  <div id="pessoaController">
    <form @submit.prevent="salvar()">
      <div class="form-group">
        <label for="identificacaoPaciente">Id. Paciente</label>
        <input type="text" class="form-control" id="identificacaoPaciente" v-model="pessoa.identificacaoPaciente" placeholder="Identificação do Paciente">
      </div>
      <div class="form-group">
        <label for="nome">Nome</label>
        <input type="text" class="form-control" id="nome" v-model="pessoa.nome" placeholder="Nome">
      </div>
      <div class="form-group">
        <label for="dataNascimento">Dt. Nascimento</label>
        <input type="date" class="form-control" id="dataNascimento" v-model="pessoa.dataNascimento" placeholder="Data de Nascimento">
      </div>
      <div class="form-group">
        <label for="peso">Peso</label>
        <input type="number" class="form-control" id="peso" v-model="pessoa.peso" placeholder="Peso">
      </div>
      <div class="form-group">
        <label for="observacao">Observação</label>
        <textarea id="observacao" class="form-control" v-model="pessoa.observacao"></textarea>
      </div>
      <button type="submit" class="btn btn-primary">Salvar</button>
    </form>

    <h3>Listagem</h3>
    <table class="table table-striped">
      <tr>
        <th>Nome</th>
        <th>Dt. Nascimento</th>
        <th>Peso</th>
        <th>&nbsp;</th>
      </tr>
      <tr v-for="p in pessoas">
        <td>{{p.nome}}</td>
        <td>{{p.dataNascimento}}</td>
        <td>{{p.peso}}</td>
        <td>&nbsp;</td>
      </tr>
    </table>
  </div>
  <asset:javascript src="/components/pessoa-vue.js" />
</body>
</html>
