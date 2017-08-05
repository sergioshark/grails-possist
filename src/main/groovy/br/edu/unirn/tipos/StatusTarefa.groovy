package br.edu.unirn.tipos

enum StatusTarefa {

    INICIADO("Iniciado"),
    EM_ANDAMENTO("Em Andamento"),
    TESTES("Testes"),
    CONCLUIDO("Concluído")

    String descricao

    private StatusTarefa(descricao) {
        this.descricao = descricao
    }

    String toString() { descricao }
}