<cfparam name="user">

<cfoutput>

<h1>View User</h1>

<dl>
	<dt>Name</dt>
	<dd>#h(user.firstName)# #h(user.lastName)#</dd>
	
	<dt>Role</dt>
	<dd>#h(user.role.title)#</dd>

	<dt>Last Updated</dt>
	<dd>#DateFormat(user.updatedAt, "m/d/yyyy")#</dd>
</dl>


<h2>Actions</h2>
<ul>
	<li>
		#linkTo(text="Edit", route="editAdminUser", key=user.key())#
	</li>
	<li>
		#linkTo(
			text="Delete",
			route="adminUser",
			method="delete",
			key=user.key(),
			confirm="Are you sure you want to delete this user?"
		)#
	</li>
</ul>

</cfoutput>