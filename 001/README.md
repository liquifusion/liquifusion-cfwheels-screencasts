# Episode 1: CFWheels DBMigrate Create Operations

Chris Peters from [Liquifusion][1] demonstrates creating tables and records in the
[DBMigrate plugin][2] for [CFWheels][3].

You can [watch this screencast][4] on CFWheels.org.

[Source code produced in this screencast][5] is hosted on GitHub.

## Installation

Data source connection information is set up in `config/settings.cfm`. You can either set up a
data source named `migration_demo` in your ColdFusion or Railo admin to use this code as-is, or you
can create a data source with a name of your choosing and change the value provided in
`config/settings.cfm`.

See the chapter about [Configuration and Defaults][6] in the CFWheels documentation.

## Issues

If you have trouble running any of this code in your environment, please [submit an issue][7].

If you believe that the issue is related to the DBMigrate plugin, you can
[submit an issue at the DBMigrate project][8].

[1]: http://liquifusion.com/
[2]: http://cfwheels.org/plugins/listing/28
[3]: http://cfwheels.org/
[4]: http://cfwheels.org/screencasts/view/17
[5]: https://github.com/liquifusion/liquifusion-cfwheels-screencasts/tree/master/001
[6]: http://cfwheels.org/docs/chapter/configuration-and-defaults
[7]: https://github.com/liquifusion/liquifusion-cfwheels-screencasts/issues
[8]: https://github.com/talltroym/cfwheels-dbmigrate-plugin/issues