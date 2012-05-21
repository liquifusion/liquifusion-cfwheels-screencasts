<cfparam name="user">

<cfoutput>

<h1>New User</h1>

#startFormTag(route="users")#

	#includePartial("form")#

	<p>
		#submitTag(value="Create User")#
	</p>

#endFormTag()#

</cfoutput>