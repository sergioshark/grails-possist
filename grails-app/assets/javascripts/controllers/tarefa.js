var tarefa = new Vue({
    el: '#tarefa',
    data: {
        tarefas: [],
        tarefa: {},
        logsTarefa: [],
        somenteLeitura : false,
        loading: false
    },
    methods: {
        getTarefas: function(){
            this.loading = true;
            this.$http.get(window.baseUrl+"tarefa/list/").then(function(resp){
                this.tarefas = resp.data;
                this.loading = false;
            }, function(err){
                this.loading = false;
            })
        },
        novaTarefa: function(){
            this.tarefa = {};
            this.tarefa.dataLimite = moment().add(1, 'days').format("DD/MM/YYYY");
            this.tarefa.porcentagem = 0;
            this.somenteLeitura = false;
            $("#formTarefa").modal('show');
        },
        salvarTarefa: function(){
            this.$http.post(window.baseUrl+"tarefa/save", this.tarefa).then(function(resp){
                this.getTarefas();
                $("#formTarefa").modal('hide');
                this.tarefa = {};
            }, function(error){
                console.info(error)
            })
        },
        editTarefa: function(tarefa){
            this.$http.get(window.baseUrl+"tarefa/show/"+tarefa.id).then(function(resp){
                this.tarefa = resp.data;
                $("#formTarefa").modal('show');
            }, function(resp){
            })
        },
        updateTarefa: function(){
            this.$http.put(window.baseUrl+"tarefa/update/"+this.tarefa.id, this.tarefa).then(function(resp){
                this.getTarefas();
                $("#formTarefa").modal('hide');
                this.tarefa = {};
            }, function(resp){
            })
        },
        visaoTarefa: function (tarefa) {
            this.$http.get(window.baseUrl+"tarefa/show/"+tarefa.id).then(function(resp){
                this.tarefa = resp.data;
            },
            this.$http.get(window.baseUrl+"logTarefa/list/"+tarefa.id).then(function (resp) {
                this.logsTarefa = resp.data;
                this.somenteLeitura = true;
                $("#formVisaoTarefa").modal('show');
            }), function(resp){
                    console.info(error)
            })
        },
        novoLogTarefa: function () {
            this.logTarefa = {};
            this.logTarefa.tarefa = this.tarefa;
            this.somenteLeitura = false;
            $("#formVisaoTarefa").modal('hide');
            $("#formLogTarefa").modal('show');
        },
        salvarLogTarefa: function(){
            this.$http.post(window.baseUrl+"logTarefa/save", this.logTarefa).then(function(resp) {
                $("#formLogTarefa").modal('hide');
                this.visaoTarefa(this.tarefa);
            },
            function(error){
                console.info(error)
            })
        },
        buscaTarefas: function(){
            this.loading = true;
            this.tarefas = [];
            this.$http.post(window.baseUrl+"tarefa/buscaGeralTarefa/", this.tarefa2).then(function(resp){
                this.tarefas = resp.data;
                this.loading = false;
                this.tarefa2 = {};
            }, function(err){
                this.loading = false;
            })
        }
    },
    ready: function(){
        this.getTarefas();
    }
});