<cfparam name="user">
<cfparam name="roles" type="query">

<cfoutput>

<h1>Edit User</h1>

#startFormTag(route="adminUser", key=user.key())#

	<input type="hidden" name="_method" value="put" />

	#includePartial("form")#
	
#endFormTag()#

</cfoutput>