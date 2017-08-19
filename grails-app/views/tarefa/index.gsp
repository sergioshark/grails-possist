<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'tarefa.label', default: 'Tarefa')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <ol class="breadcrumb">
            <li><a href="${createLink(uri: '/')}">Inicio</a></li>
            <li class="active">Tarefa</li>
        </ol>

        <div class="panel panel-default">
            <div class="panel-heading"><g:message code="default.list.label" args="[entityName]" /></div>
            <div class="panel-body">

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

    <content tag="javascript">
        <asset:javascript src="controllers/tarefa.js"/>
    </content>
    </body>
</html>