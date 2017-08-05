<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Escola de Música"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://fonts.googleapis.com/css?family=Roboto:100,300,400' rel='stylesheet' type='text/css'>
    <g:javascript>
	    window.baseUrl = "${createLink(uri: '/', absolute: true)}";
    </g:javascript>

    <asset:stylesheet src="application.css"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <g:layoutHead/>
</head>

<body>
<div class="main-wrapper">

    <!-- Top Navbar -->
    <div class="navbar navbar-inverse navbar-static-top wbs-navbar hidden-print">
        <div class="container-fluid">
            <!-- Logo -->
            <div class="navbar-header">
                <div class="wbs-brand">
                    <a class="wbs-logo" href="${createLink(controller: "index")}">
                        <span>Pos</span> Sist
                    </a>
                </div>
            </div>

            <!-- Options -->
            <div class="navbar-content clearfix">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown options">
                        <a href="javascript:void(0);" data-toggle="dropdown" aria-expanded="false">
                            <span class="hidden-xs">${session?.usuario?.email}</span>
                            <span class="caret hidden-xs"></span>
                            <span class="visible-xs"><i class="fa fa-bars"></i></span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-md dropdown-menu-right with-arrow panel-default">

                            <ul class="main-list">
                                <li>
                                    <a href="#" data-toggle="modal" data-target="#modalAlterarSenha">
                                        <i class="fa fa-flag-checkered fa-fw fa-lg"></i> Alterar Senha
                                    </a>
                                </li>
                                <li>
                                    <a href="${createLink(controller: "login", action: "logout")}">
                                        <i class="fa fa-sign-out fa-fw fa-lg"></i> Sair
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <!--/Options -->
        </div>
    </div>


    <!--Conteudo-->
    <section>
        <div class="main-content">
            <div class="main-content-wrapper">
                <div class="main-wrapper-menu">
                    <g:render template="/menuLateral"/>
                    <div class="content">
                        <button class="sidebar-toggle visible-xs hidden-print" id="toggle-left-mini-aside">
                            <span class="glyphicon glyphicon-align-justify"></span>
                        </button>
                        <g:layoutBody/>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <footer class="hidden-print">
        <span>© 2016 - <a href="http://www.romulofc.com.br">Romulo FC</a></span>
    </footer>
</div>

<div class="modal fade" id="modalAlterarSenha" tabindex="-1" role="dialog" aria-labelledby="modalAlterarSenhaLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="modalAlterarSenhaLabel">Alterar Senha</h4>
            </div>

            <div class="modal-body">
                <g:form controller="usuario" action="alterarSenha" method="post" class="form-horizontal" name="formAlterarSenha">

                    <div class="form-group ">
                        <div class="col-sm-12">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-exclamation-sign"></i></span>
                                <input class="form-control" placeholder="Senha Atual" name="senhaAtual" type="password">
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-12">
                            <div class="input-group">
                                <span class="input-group-addon">
                                    <i class="glyphicon glyphicon-exclamation-sign"></i></span>
                                <input class="form-control" placeholder="Nova Senha" name="novaSenha" type="password">
                            </div>
                        </div>
                    </div>
                </g:form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-primary" form="formAlterarSenha">Alterar</button>
            </div>
        </div>
    </div>
</div>
<asset:javascript src="application.js"/>
<asset:deferredScripts/>
</body>
</html>
