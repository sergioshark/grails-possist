package br.edu.unirn


class SegurancaInterceptor {

    SegurancaInterceptor(){
        matchAll().excludes(controller:~/(autenticacao)/)
    }

    boolean before() {
        if(!session.usuario){
            redirect(controller: 'autenticacao', action:'index')
            return false
        }

        true
    }

    boolean after() { true }

    void afterView() {
        // no-op
    }
}
