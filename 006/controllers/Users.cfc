<cfcomponent extends="Controller">

	<cffunction name="init">
		<cfscript>
			// Filters
			filters(through="$findUser", only="show,edit,update,delete");
		</cfscript>
	</cffunction>

	<cffunction name="index">
		<cfset users = model("user").findAll(include="role", order="lastname, firstname")>
	</cffunction>

	<cffunction name="show">
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

	<cffunction name="edit">
	</cffunction>

	<cffunction name="update">
		<cfscript>
			if (user.update(params.user))
			{
				redirectTo(route="user", key=user.key(), success="The user was updated successfully.");
			}
			else
			{
				flashInsert(error="There was an error updating the user. Please review the fields below and try again.");
				renderPage(action="edit");
			}
		</cfscript>
	</cffunction>

	<cffunction name="delete">
		<cfscript>
			user.delete();
			redirectTo(route="users", success="The user was deleted successfully.");
		</cfscript>
	</cffunction>

	<cffunction name="$findUser" access="private">
		<cfset user = model("user").findByKey(key=params.key, include="role")>
	</cffunction>

</cfcomponent>