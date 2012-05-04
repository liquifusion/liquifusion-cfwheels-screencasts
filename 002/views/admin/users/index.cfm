<cfparam name="users" type="query">

<cfoutput>

<h1>Users</h1>

<p>#linkTo(text="New User", route="newAdminUser")#</p>

<cfif users.RecordCount>
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Role</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<cfloop query="users">
				<tr>
					<td>
						#linkTo(text="#h(users.lastName)#, #h(users.firstName)#", route="adminUser", key=users.id)#
					</td>
					<td>
						#h(users.roleTitle)#
					</td>
					<td>
						#linkTo(text="Edit", route="editAdminUser", key=users.id)#

						#linkTo(
							text="Delete",
							route="adminUser",
							key=users.id,
							method="delete",
							confirm="Are you sure you want to delete this user?"
						)#
					</td>
				</tr>
			</cfloop>
		</tbody>
	</table>
<cfelse>
	<p>There are no users in the system.</p>
</cfif>

</cfoutput>