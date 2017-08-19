<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>

        <ol class="breadcrumb">
            <li><a href="${createLink(uri: '/')}">Inicio</a></li>
            <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            <li class="active">Editar</li>
        </ol>

        <div class="panel panel-default">
            <div class="panel-body">
                <h1><g:message code="default.edit.label" args="[entityName]" /></h1>

                <g:link class="btn btn-success" action="create">
                    <g:message code="default.new.label" args="[entityName]" />
                </g:link>

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

                <g:form novalidate="" class="form-horizontal" resource="${this.usuario}" method="PUT">
                    <g:hiddenField name="version" value="${this.usuario?.version}" />
                    <fieldset class="form">
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="email" name="email" value="${usuario?.email}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="senha" class="col-sm-2 control-label">Senha</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="senha" name="senha" value="">
                            </div>
                        </div>
                    </fieldset>
                    <fieldset class="buttons">
                        <input class="btn btn-success" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                    </fieldset>
                </g:form>
            </div>
        </div>

    </body>
</html>
