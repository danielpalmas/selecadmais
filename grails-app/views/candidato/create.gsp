<!DOCTYPE html>

<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'candidato.label', default: 'Candidato')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<script src="../js/candidato.js" type="text/javascript" ></script>
		<calendar:resources lang="en" theme="tiger"/>
	</head>
	<body>
		<a href="#create-candidato" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-candidato" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${candidatoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${candidatoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:candidatoInstance, action:'save']" enctype="multipart/form-data">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		    <g:render template='certificado' model="['certificado':null,'i':'_clone','hidden':true]"/>
		     <g:render template='candidato_lingua' model="['candidatoLingua':null,'i':'_clone','hidden':true]"/>
		     <g:render template='experiencia_profissional' model="['experienciaProfissional':null,'i':'_clone','hidden':true]"/>
		     <g:render template='formacao_academica' model="['formacaoAcademica':null,'i':'_clone','hidden':true]"/>
		</div>
	</body>
</html>
