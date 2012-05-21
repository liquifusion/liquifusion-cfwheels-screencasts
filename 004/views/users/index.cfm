<cfparam name="users" type="query">

<cfoutput>

<p>
	#linkTo(text="New User", route="newUser")#
</p>

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
					#linkTo(text="#h(users.lastName)#, #h(users.firstName)#", route="user", key=users.id)#
				</td>
				<td>
					#h(users.roleTitle)#
				</td>
				<td>

				</td>
			</tr>
		</cfloop>
	</tbody>
</table>

</cfoutput>