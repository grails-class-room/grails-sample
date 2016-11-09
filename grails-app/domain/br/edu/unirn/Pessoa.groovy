package br.edu.unirn

import grails.databinding.BindingFormat


class Pessoa {
  String identificacaoPaciente
  String nome

  @BindingFormat('yyyy-MM-dd')
  Date dataNascimento
  Float peso
  String observacao

  Date dateCreated
  Date lastUpdated

  static constraints = {
    nome()
    identificacaoPaciente()
    dataNascimento nullable:true
    peso nullable:true
    observacao widget:'textarea',nullable:true
  }
}
