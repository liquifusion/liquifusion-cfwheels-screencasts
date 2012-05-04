<cfparam name="user">
<cfparam name="roles" type="query">

<cfoutput>

#textField(objectName="user", property="firstName")#
#errorMessageOn(objectName="user", property="firstName")#

#textField(objectName="user", property="lastName")#
#errorMessageOn(objectName="user", property="lastName")#

#select(objectName="user", property="roleId", options=roles, includeBlank="-- Select one --")#
#errorMessageOn(objectName="user", property="roleId")#

<p>#submitTag()#</p>

</cfoutput>