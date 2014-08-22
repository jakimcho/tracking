<%@include file="/WEB-INF/template/default/tagLib.jsp"%>

<tiles:insertDefinition name="user-register">
	<tiles:putAttribute name="body">

		<forms:form commandName="user" cssClass="form-horizontal">
			
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">Name:</label>
				<div class="col-sm-10">
					<forms:input path="name" cssClass="form-control" />
				</div>
			</div>

			<div class="form-group">
				<label for="email" class="col-sm-2 control-label">Email:</label>
				<div class="col-sm-10">
					<forms:input path="email" cssClass="form-control" />
				</div>
			</div>

			<div class="form-group">
				<label for="password" class="col-sm-2 control-label">Password:</label>
				<div class="col-sm-10">
					<forms:password path="password" cssClass="form-control" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-10">
					<input type="submit" value="Save" class="btn btn-lg btn-primary" />
				</div>
			</div>
			
		</forms:form>

	</tiles:putAttribute>
</tiles:insertDefinition>