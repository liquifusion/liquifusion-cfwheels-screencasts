<cfcomponent extends="Controller">

	<cffunction name="index">
		<cfset users = model("user").findAll(include="role", order="lastname, firstname")>
	</cffunction>

	<cffunction name="show">
		<cfset user = model("user").findByKey(key=params.key, include="role")>
	</cffunction>

	<cffunction name="new">
		<cfset user = model("user").new()>
	</cffunction>

	<cffunction name="create">
		<cfscript>
			user = model("user").new(params.user);

			if (user.save())
			{
				redirectTo(route="users", success="The user was created successfully");
			}
			else
			{
				flashInsert(error="There was an error creating the user. Please review the errors below and try again.");
				renderPage(action="new");
			}
		</cfscript>
	</cffunction>

</cfcomponent>