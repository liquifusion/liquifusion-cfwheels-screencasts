<cfoutput>

<!--- Place HTML here that should be used as the default layout of your application --->
<html>
	<head>
		#javaScriptIncludeTag("jquery-1.7.2,wheels")#
	</head>
	<body>
		#flashMessages()#

		#includeContent()#
	</body>
</html>

</cfoutput>