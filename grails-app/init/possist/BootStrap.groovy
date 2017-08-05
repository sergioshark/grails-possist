package possist

import br.edu.unirn.TipoTarefa
import br.edu.unirn.tipos.StatusTarefa
import grails.util.Environment

class BootStrap {

    def init = { servletContext ->
        if (Environment.developmentMode) {
            ["Desenvolvimento", "Suporte", "Testes", "Concluído"].each { tipo ->
                TipoTarefa.findByDescricao(tipo) ?: new TipoTarefa(descricao: tipo).save(flush: true)
            }

        }
    }
    def destroy = {
    }
}
