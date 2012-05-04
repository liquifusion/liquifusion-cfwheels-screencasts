<cfscript>

drawRoutes()
	.root(controller="main", action="home")
	
	.namespace("admin")
		.resources(name="users", nested=true)
			.resources("jobs")
			.resources("positions")
		.end()
	.end()
.end();

</cfscript>