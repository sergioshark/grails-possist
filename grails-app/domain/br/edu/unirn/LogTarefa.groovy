package br.edu.unirn

import br.edu.unirn.tipos.StatusTarefa

class LogTarefa {

    String texto
    Usuario usuarioLog
    int porcentagem = 0

    Date dateCreated
    Date lastUpdated
    StatusTarefa statusTarefa

    Tarefa tarefa

    static constraints = {
        tarefa()
        usuarioLog()
        texto widget: "textarea"
        statusTarefa nullable: true
    }

    static mapping = {
        texto type: "text"
    }
}
