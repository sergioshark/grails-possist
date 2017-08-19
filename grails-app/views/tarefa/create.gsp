<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<ol class="breadcrumb">
    <li><a href="${createLink(uri: '/')}">Inicio</a></li>
    <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
</ol>

<div class="panel panel-default">
    <div class="panel-body">
        <h1><g:message code="default.create.label" args="[entityName]" /></h1>

        <g:if test="${flash.message}">
            <div class="alert alert-warning" role="alert">${flash.message}</div>
        </g:if>

        <g:hasErrors bean="${this.usuario}">
            <div class="alert alert-danger" role="alert">

                <ul class="errors" role="alert">
                    <g:eachError bean="${this.usuario}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>

            </div>
        </g:hasErrors>

        <g:form  novalidate="" class="form-horizontal" resource="${this.usuario}" method="POST">
            <fieldset class="form">
                %{--<f:all bean="${usuario}"/>--}%
                <div class="form-group">
                    <label for="titulo" class="col-sm-2 control-label">Titulo</label>
                    <div class="col-sm-10">
                        <g:textField name="titulo" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="texto" class="col-sm-2 control-label">Texto</label>
                    <div class="col-sm-10">
                        <g:textArea name="texto" class="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="usuarioAbertura" class="col-sm-2 control-label">Usuario Abertura</label>
                    <div class="col-sm-10">
                        <g:select name="usuarioAbertura" class="form-control" from="${br.edu.unirn.Usuario.list()}" optionValue="email" optionKey="id"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="usuarioResponsavel" class="col-sm-2 control-label">Usuario Responsavel</label>
                    <div class="col-sm-10">
                        <g:select name="usuarioResponsavel" class="form-control" from="${br.edu.unirn.Usuario.list()}" optionValue="email" optionKey="id"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="dataLimite" class="col-sm-2 control-label">Data Limite</label>
                    <div class="col-sm-10">
                        <g:textField name="dataLimite" class="form-control" placeholder="__/__/__"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="tipoTarefa" class="col-sm-2 control-label">Tipo Tarefa</label>
                    <div class="col-sm-10">
                        <g:select name="tipoTarefa" class="form-control" from="${br.edu.unirn.TipoTarefa.list()}" optionValue="descricao" optionKey="id"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="porcentagem" class="col-sm-2 control-label">Porcentagem</label>
                    <div class="col-sm-10">
                        <g:field type="number" name="porcentagem" class="form-control"/>
                    </div>
                </div>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" class="btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
