var tarefa = new Vue({
    el: '#tarefa',
    data: {
        tarefas: [],
        tarefa: {},
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
            $("#formTarefa").modal('show');
        }
    },
    ready: function(){
        this.getTarefas();
    }
});