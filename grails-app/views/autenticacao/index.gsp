<!doctype html>
<html>
<head>
    <meta name="layout" content="mainAut"/>
    <title>Welcome to Grails</title>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
<div id="content" role="main">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3>Autentique-se</h3>
        </div>
        <div class="panel-body">
            <g:if test="${flash.error}">
                <div class="alert alert-warning"/>${flash.error}</div>
            </g:if>
            <g:form action="login" class="form-horizontal">
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-10">
                        <input type="email" name="email" class="form-control" id="email" placeholder="Email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="senha" class="col-sm-2 control-label">Senha</label>
                    <div class="col-sm-10">
                        <input type="password" class="form-control" id="senha" name="senha" placeholder="Senha">
                    </div>
                </div>
                <button class="btn btn-success">
                    ENTRAR
                </button>
            </g:form>
        </div>
    </div>
</div>
</body>
</html>
