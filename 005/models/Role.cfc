<cfcomponent extends="Model">

	<cffunction name="init">
		<cfscript>
			// Associations
			hasMany("users");
		</cfscript>
	</cffunction>

</cfcomponent>