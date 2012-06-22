<cfparam name="user">

<cfoutput>

<h1>
	#h(user.firstName)# #h(user.lastName)#
</h1>

<dl>
	<dt>Role</dt>
	<dd>#h(user.role.title)#</dd>
</dl>

<ul>
	<li>
		#linkTo(text="Edit", route="editUser", key=user.key())#
	</li>
</ul>

</cfoutput>