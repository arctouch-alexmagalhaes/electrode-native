## `ern start`

#### Description

* Create a composite bundle out of multiple MiniApps and start the react-native local packager to serve this bundle so that it can be loaded within the native host application  

#### Syntax

`ern start`  

**Note**

If you do not pass an argument to this command, you are prompted to select a native application version from the Cauldron. The command uses whatever MiniApp versions are curently declared in this native application version container to launch the command.  

**Options**  

`--descriptor/-d <descriptor>`

* Target a specific native application version, associated to the provided *complete native application descriptor*.  
* This option uses whatever MiniApp versions are currently declared in this native application version container to launch the command.  

`--miniapps/-m <miniapps>`

* Specify one or more MiniApps to launch this command  
* The command packages all the provided MiniApps in a composite bundle and starts the react-native packager.  
* You can use any valid Yarn package descriptor for the MiniApps provided to this command, including Git and other file system path schemes.  

`--jsApiImpls`

* Specify one or more JS API Implementations to include

`--watchNodeModules/-w <nodemodules>`
* A list of one or more directory name(s) from node_modules that should be watched for changes.

`--extraJsDependencies/-e <jsdependencies>`
* Additional JavaScript dependencies to add to the composite JavaScript bundle.

`--disableBinaryStore`

* Setting this option will bypass retrieval and installation of the binary from the Binary Store.  
* It can be useful in case you want to use `ern start` command in conjunction with your own mobile application native binary, build locally on your workstation or retrieved from a specific location.

**Platform Specific Options**

`Android`

`--packageName/-p <packagename>`
* Android application package name to avoid conflict with the names of classes or interfaces.

`--activityName/-a <activity name>`
*  Specify Android Activity to launch.

`iOS`
`--bundleId/-b`
*   iOS Bundle Identifier unique to your app.

#### Remarks

* This command can be used to package multiple MiniApps inside a single composite bundle and automatically start the react-native local packager to serve this bundle.  
* Use this command when you need to launch and develop or debug your MiniApps from within a native host application which contains other MiniApps along with your MiniApp.  
* This command works with the `ern link` command. For additional information, see the documentation for the `ern link` command.  

#### Related commands

 [ern link] | Link to a MiniApp directory

[ern link]: ./link.md