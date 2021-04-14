# cadviewer-testapp-dotnet-core-01
CADViewer implementation of dotNet Core controllers

## Windows

### Folder Structure

For a CADViewer dotNetcore installation on Windows, the base file-structure should be as below: 
CADViewer and AutoXchange is included in this repository, but it can be recreated by downloading the components directly from: [https//cadviewer.com/download](https//cadviewer.com/download)

<pre style="line-height: 110%">
c:\cadviewer-testapp-dotnet-core-01\cadviewer\cadviewer\
       └─── wwwroot
               ├── app
               │    ├── cv
               │    │    ├── cv-pro 
               │    │    │   ├── menu_config
               │    │    │   ├── language_table
               │    │    │   └── space
               │    │    │         ├── css 
               │    │    │         └── html
               │    │    ├── cv-core
               │    │    │   ├── menu_config
               │    │    │   └── language_table
               │    │    └── cv-custom_commands
               │    ├── fonts
               │    ├── images
               │    ├── js
               │    ├── css
               │    └── user_resources	
               ├── converters
               │    ├── ax2020
               │    │     ├── windows 
               │    │     │      └── fonts
               │    │     └── linux
               │    │            └── fonts
               │    ├── dwgmerge2020
               │    │         ├── windows 
               │    │         │      └── fonts
               │    │         └── linux
               │    │            └── fonts
               │    ├── linklist2020
               │    │         ├── windows 
               │    │         │     └── fonts
               │    │         └── linux
               │    │               └── fonts
               │    └── files
               ├── content
               ├── html
               └── temp_print
</pre>

**Note** that folders for controller configuration are set as part of the dotNet core main project 

### Windows - dotNETcore Configuration - set paths

In folder:

<pre style="line-height: 110%">
c:\cadviewer-testapp-dotnet-core-01\cadviewer
         └─── cadviewer
               └── appsettings.json

</pre>

locate the configuration file: **appsettings.json** , edit the key settings that controls Converter and CADViewer paths to reflect your installation.


### Windows - dotNETcore Controller

In folder:

<pre style="line-height: 110%">
c:\cadviewer-testapp-dotnet-core-01\cadviewer
         └─── cadviewer
                   └─── Controllers
                             └── CADViewerController.cs

</pre>

The file **CADViewerController.cs** contains the controllers that CADViewer uses to manipulate content on the server and to control CAD conversion. 


### HTML 


In folder:

<pre style="line-height: 110%">
c:\cadviewer-testapp-dotnet-core-01\cadviewer
                                       └─── cadviewer
                                                └── html
</pre>


identify your sample mysample.html file, and ensure that it correctly sets the ServerLocation and ServeUrl parameters



Open a web-browser pointing to your sample html file:    **http:/localhost:44374/html/mysample.html**

Use the server traces and browser development console for debugging, alternatively contact our [Support](/cadviewertechdocs/support/)  

For debugging, the folder:
<pre style="line-height: 110%">
c:\VisualStudio
       └─── cadviewer
               └── temp_debug
</pre>
contains a debug file **callApiConversionHandlerLog.txt** that lists the command line and traces in the communication with the back-end converter AutoXchange 2020. If drawing files does not display, this file will contain useful information to pinpoint the issue.





## Troubleshooting

One issue that often appears in installations is that interface icons do not display properly:

![Icons](/cadviewertechdocs/images/missing_icons.png "Icons missing")

Typically the variable ServerUrl in /cadviewer/app/cv/CADViewer_AshxHandlerSettings.js is not set to reflect the front-end server url or port.
