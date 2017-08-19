<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <ol class="breadcrumb">
            <li><a href="${createLink(uri: '/')}">Inicio</a></li>
            <li class="active">usuario</li>
        </ol>

        <div class="panel panel-default">
            <div class="panel-heading"><g:message code="default.list.label" args="[entityName]" /></div>
            <div class="panel-body">
                <g:link class="btn btn-success" action="create">
                    <g:message code="default.new.label" args="[entityName]" />
                </g:link>

                <g:if test="${flash.message}">
                    <div class="alert alert-warning" role="alert">${flash.message}</div>
                </g:if>

                <f:table collection="${usuarioList}" />

                <div class="pagination">
                    <g:paginate total="${usuarioCount ?: 0}" />
                </div>
            </div>
        </div>
    </body>
</html>