package br.edu.unirn

class Usuario {

    String email
    String senha


    static constraints = {
        email email: true, unique: true
    }

    def beforeInsert() {
        if (!senha.startsWith("md5:")) {
            senha = "md5:${senha.encodeAsMD5()}"
        }
    }

    def beforeUpdate() {
        if (!senha.startsWith("md5:")) {
            senha = "md5:${senha.encodeAsMD5()}"
        }
    }

    String toString() { email }
}
