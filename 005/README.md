# Episode 5: "U" Is for "Update" - Basic CRUD in CFWheels

Chris Peters demonstrates updating data in a simple CRUD [CFWheels][1] application. Also, learn how
to factor out repetitive controller logic using [filters][2].

You can [watch this screencast][3] on CFWheels.org.

[Source code produced in this screencast][4] is hosted on GitHub.

## Installation

### 1. Data Source

Data source connection information is set up in `config/settings.cfm`. You can either set up a
data source named `migration_demo` in your ColdFusion or Railo admin to use this code as-is, or you
can create a data source with a name of your choosing and change the value provided in
`config/settings.cfm`.

See the chapter about [Configuration and Defaults][5] in the CFWheels documentation for more
information about configuring data sources.

### 2. Run Migrations

We will use the data structure created by migrations created in the first screencast,
[CFWheels DBMigrate Create Operations][6].

After you get the application running, click the *DBMigrate* link in the debug section in the
footer. Then make sure that _All non-migrated_ is chosen for *Migrate to version* and click the
*go* button.

See the [DBMigrate plugin documentation][7] for more information about migrations using CFWheels.

## Additional Notes

### Use `hiddenFieldTag()` Instead of a Manual `<input>` Tag

While recording the screencast, we could have done a better job of handling the `_method=put`
parameter on the edit form.

In the screencast, we produced this line of code:

    <input type="hidden" name="_method" value="put" />

This works fine, but we could have utilized CFWheels's `hiddenFieldTag()` form helper like so:

    #hiddenFieldTag(name="_method", value="put")#

See more information about [hiddenFieldTag()][9] in the CFWheels documentation.

### ColdRoute Plugin

This screencast makes use of the excellent [ColdRoute plugin][8] for CFWheels. We recommend using
this plugin to add sensible RESTful conventions to your routes and controllers.

### `useExpandedColumnAliases` Setting

In `config/settings.cfm`, you'll also notice this line:

    <cfset set(useExpandedColumnAliases=true)>

This causes the CFWheels ORM to prepend the model name on any included tables while using find
queries. We highly recommend using this setting in all of your CFWheels applications.

See the chapter about [Configuration and Defaults][5] in the CFWheels documentation for more
information about the `useExpandedColumnAliases` setting.

## Issues

If you have trouble running any of this code in your environment, please [submit an issue][10].

If you believe that the issue is related to the DBMigrate plugin, you can
[submit an issue at the DBMigrate project][11].

If you believe that the issue is related to the ColdRoute plugin, you can
[submit an issue at the ColdRoute project][12].

[1]: http://cfwheels.org/
[2]: http://cfwheels.org/docs/chapter/filters
[3]: http://cfwheels.org/screencasts/view/22
[4]: https://github.com/liquifusion/liquifusion-cfwheels-screencasts/tree/master/005
[5]: http://cfwheels.org/docs/chapter/configuration-and-defaults
[6]: http://cfwheels.org/screencasts/view/17
[7]: https://github.com/talltroym/cfwheels-dbmigrate-plugin/wiki
[8]: http://cfwheels.org/plugins/listing/67
[9]: http://cfwheels.org/docs/function/hiddenfieldtag
[10]: https://github.com/liquifusion/liquifusion-cfwheels-screencasts/issues
[11]: https://github.com/talltroym/cfwheels-dbmigrate-plugin/issues
[12]: https://github.com/dhumphreys/cfwheels-coldroute/issues