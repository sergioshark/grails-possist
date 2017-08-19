<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="\${message(code: '${propertyName}.label', default: '${className}')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <ol class="breadcrumb">
            <li><a href="\${createLink(uri: '/')}">Inicio</a></li>
            <li class="active">${propertyName}</li>
        </ol>

        <div class="panel panel-default">
            <div class="panel-heading"><g:message code="default.list.label" args="[entityName]" /></div>
            <div class="panel-body">
                <g:if test="\${flash.message}">
                    <div class="alert alert-warning" role="alert">\${flash.message}</div>
                </g:if>

                <f:table collection="\${${propertyName}List}" />

                <div class="pagination">
                    <g:paginate total="\${${propertyName}Count ?: 0}" />
                </div>
            </div>
        </div>
    </body>
</html>