# Episode 2: ColdRoute Plugin for CFWheels

Chris Peters from [Liquifusion][1] demonstrates the [ColdRoute plugin][2] for [CFWheels][3]. Learn
how to set up RESTful resources, nested resources, and namespaces (i.e., subfolders in `controllers`
and `views` directories).

You can [watch this screencast][4] on CFWheels.org.

[Source code produced in this screencast][5] is hosted on GitHub.

## Installation

### 1. Data Source

Data source connection information is set up in `config/settings.cfm`. You can either set up a
data source named `migration_demo` in your ColdFusion or Railo admin to use this code as-is, or you
can create a data source with a name of your choosing and change the value provided in
`config/settings.cfm`.

See the chapter about [Configuration and Defaults][6] in the CFWheels documentation for more
information about configuring data sources.

### 2. Run Migrations

We will use the data structure created by migrations created in the first screencast,
[CFWheels DBMigrate Create Operations][7].

After you get the application running, click the *DBMigrate* link in the debug section in the
footer. Then make sure that _All non-migrated_ is chosen for *Migrate to version* and click the
*go* button.

See the [DBMigrate plugin documentation][8] for more information about migrations using CFWheels.

## Additional Notes

In `config/settings.cfm`, you'll also notice this line:

    <cfset set(useExpandedColumnAliases=true)>

This causes the CFWheels ORM to prepend the model name on any included tables while using find
queries. We highly recommend using this setting in all of your CFWheels applications.

See the chapter about [Configuration and Defaults][6] in the CFWheels documentation for more
information about the `useExpandedColumnAliases` setting.

## Issues

If you have trouble running any of this code in your environment, please [submit an issue][9].

If you believe that the issue is related to the DBMigrate plugin, you can
[submit an issue at the DBMigrate project][10].

[1]: http://liquifusion.com/
[2]: http://cfwheels.org/plugins/listing/67
[3]: http://cfwheels.org/
[4]: http://cfwheels.org/screencasts/view/19
[5]: https://github.com/liquifusion/liquifusion-cfwheels-screencasts/tree/master/002
[6]: http://cfwheels.org/docs/chapter/configuration-and-defaults
[7]: http://cfwheels.org/screencasts/view/17
[8]: https://github.com/talltroym/cfwheels-dbmigrate-plugin/wiki
[9]: https://github.com/liquifusion/liquifusion-cfwheels-screencasts/issues
[10]: https://github.com/talltroym/cfwheels-dbmigrate-plugin/issues