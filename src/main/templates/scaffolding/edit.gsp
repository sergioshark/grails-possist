<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>

        <ol class="breadcrumb">
            <li><a href="\${createLink(uri: '/')}">Inicio</a></li>
            <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            <li class="active">Editar</li>
        </ol>

        <div class="panel panel-default">
            <div class="panel-body">
                <h1><g:message code="default.edit.label" args="[entityName]" /></h1>

                <g:link class="btn btn-success" action="create">
                    <g:message code="default.new.label" args="[entityName]" />
                </g:link>

                <g:if test="\${flash.message}">
                    <div class="alert alert-warning" role="alert">\${flash.message}</div>
                </g:if>

                <g:hasErrors bean="\${this.${propertyName}}">
                    <div class="alert alert-danger" role="alert">

                        <ul class="errors" role="alert">
                            <g:eachError bean="\${this.${propertyName}}" var="error">
                                <li <g:if test="\${error in org.springframework.validation.FieldError}">data-field-id="\${error.field}"</g:if>><g:message error="\${error}"/></li>
                            </g:eachError>
                        </ul>

                    </div>
                </g:hasErrors>

                <g:form novalidate="" class="form-horizontal" resource="\${this.${propertyName}}" method="PUT">
                    <g:hiddenField name="version" value="\${this.${propertyName}?.version}" />
                    <fieldset class="form">
                        <f:all bean="${propertyName}"/>
                    </fieldset>
                    <fieldset class="buttons">
                        <input class="btn btn-success" type="submit" value="\${message(code: 'default.button.update.label', default: 'Update')}" />
                    </fieldset>
                </g:form>
            </div>
        </div>

    </body>
</html>
