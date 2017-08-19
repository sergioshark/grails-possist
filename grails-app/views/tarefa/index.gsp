<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tarefa.label', default: 'Tarefa')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="tarefa" v-cloak="">
            <ol class="breadcrumb">
                <li><a href="${createLink(uri: '/')}">Inicio</a></li>
                <li class="active">Tarefa</li>
            </ol>

            <div class="panel panel-default">
                <div class="panel-heading"><g:message code="default.list.label" args="[entityName]" /></div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-12">
                            <button class="btn btn-success pull-right" @click="novaTarefa">
                                Nova Tarefa
                            </button>
                        </div>
                        <div class="col-sm-12">
                            <table class="table table-bordered">
                                <thead>
                                <tr>
                                    <td>Titulo</td>
                                    <td>Usuario Abertura</td>
                                    <td>Usuario Resp.</td>
                                    <td>Data Limite</td>
                                    <td>Tipo Tarefa</td>
                                    <td>Status</td>
                                    <td>%</td>
                                </tr>
                                </thead>
                                <tbody>
                                <tr v-if="loading">
                                    <td colspan="7">Carregando....</td>
                                </tr>
                                <tr v-for="tarefa in tarefas" :key="tarefa.id">
                                    <td>{{tarefa.titulo}}</td>
                                    <td>{{tarefa.usuarioAbertura}}</td>
                                    <td>{{tarefa.usuarioResponsavel}}</td>
                                    <td>{{tarefa.dataLimite}}</td>
                                    <td>{{tarefa.tipoTarefa}}</td>
                                    <td>{{tarefa.statusTarefa}}</td>
                                    <td>{{tarefa.porcentagem}}</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>


                </div>
            </div>


            <div class="modal fade" tabindex="-1" role="dialog" id="formTarefa">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Nova Tarefa</h4>
                        </div>
                        <div class="modal-body">
                            <p>One fine body&hellip;</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    <content tag="javascript">
        <asset:javascript src="controllers/tarefa.js"/>
    </content>
    </body>
</html>