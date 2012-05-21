<cfparam name="user">

<cfoutput>

<h1>
	#h(user.firstName)# #h(user.lastName)#
</h1>

<dl>
	<dt>Role</dt>
	<dd>#h(user.role.title)#</dd>
</dl>

</cfoutput>