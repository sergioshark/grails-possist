package br.edu.unirn

import grails.testing.web.interceptor.InterceptorUnitTest
import spock.lang.Specification

class SegurancaInterceptorSpec extends Specification implements InterceptorUnitTest<SegurancaInterceptor> {

    def setup() {
    }

    def cleanup() {

    }

    void "Test seguranca interceptor matching"() {
        when:"A request matches the interceptor"
            withRequest(controller:"seguranca")

        then:"The interceptor does match"
            interceptor.doesMatch()
    }
}
