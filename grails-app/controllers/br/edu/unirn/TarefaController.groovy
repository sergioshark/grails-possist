package br.edu.unirn

import grails.converters.JSON

class TarefaController {

    static scaffold = Tarefa

    def index(){

    }

    def save(){
        params << request.JSON
        println params
        Tarefa tarefa = new Tarefa()
        bindData(tarefa, params, [exclude:['dataLimite']])
        tarefa.dataLimite = params.date('dataLimite', 'dd/MM/yyyy')

        println tarefa

        if(!tarefa.save(flush: true)){
            println tarefa.errors.each {println it}
            render status: 500
            return
        }

        render status: 200
    }

    def list(){
        def retorno = []

        Tarefa.list().each {
            retorno.add([
                id: it.id,
                titulo: it.titulo,
                usuarioAbertura: it.usuarioAbertura.email,
                usuarioResponsavel: it.usuarioResponsavel?.email,
                dataLimite: it.dataLimite.format("dd/MM/yyyy"),
                tipoTarefa: it.tipoTarefa.descricao,
                statusTarefa: it.statusTarefa.name(),
                porcentagem: it.porcentagem
            ])
        }

        render retorno as JSON
    }
}
