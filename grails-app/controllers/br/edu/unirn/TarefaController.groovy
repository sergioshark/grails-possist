package br.edu.unirn

import grails.converters.JSON

class TarefaController {

    static scaffold = Tarefa

    def index(){

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
