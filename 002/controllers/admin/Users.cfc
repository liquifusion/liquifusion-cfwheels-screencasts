<cfcomponent extends="002.controllers.Controller">

	<cffunction name="init">
		<cfscript>
			// Verifications
			verifies(only="show,edit,update,delete", params="key", paramsTypes="integer");
			verifies(only="create,update", post=true, params="user", paramsTypes="struct");

			// Filters
			filters(through="$findUser", only="show,edit,update,delete");
			filters(through="$findRoles", only="new,edit");
		</cfscript>
	</cffunction>

	<cffunction name="index">
		<cfset users = model("user").findAll(include="role", order="lastname,firstname")>
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
				redirectTo(route="adminUsers", success="The user was created successfuly.");
			}
			else
			{
				$findRoles();
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
				redirectTo(route="adminUser", key=params.key, success="The user was updated successfully.");
			}
			else
			{
				$findRoles();
				renderPage(action="edit");
			}
		</cfscript>
	</cffunction>

	<cffunction name="delete">
		<cfscript>
			user.delete();
			redirectTo(route="adminUsers", success="The user was deleted successfully.");
		</cfscript>
	</cffunction>

	<cffunction name="$findUser" access="private" hint="FILTER: Finds a user by key.">
		<cfset user = model("user").findByKey(key=params.key, include="Role")>
	</cffunction>

	<cffunction name="$findRoles" access="private" hint="FILTER: Finds all roles in the system in alphabetical order.">
		<cfset roles = model("role").findAll(order="title")>
	</cffunction>

</cfcomponent>