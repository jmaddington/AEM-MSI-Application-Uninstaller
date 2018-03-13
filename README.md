# Overview #
Pair of AEM components to uninstall MSI-installed applications by name.

These scripts have been lightly tested in a virtual environment on Windows 10 Pro. 

##MSI Application Uninstaller##
Uninstalls supported applications by name, supports wildcards such as "*Google*". Don't use the double quotes when actually running the script.

##MSI Application Uninstaller Lister##
Lists applications supported or supposedly supported by the above script. Returns something like:

```
Name                                                                           
----                                                                           
Meraki Systems Manager Agent                                                   
Microsoft WSE 3.0 Runtime                                                      
Microsoft Office Access database engine 2007 (English)                         
Office 16 Click-to-Run Extensibility Component                                 
Office 16 Click-to-Run Localization Component                                  
Office 16 Click-to-Run Extensibility Component 64-bit Registration             
Office 16 Click-to-Run Licensing Component                                     
Visual C++ IDE Core Professional Plus Resource Package                         
Microsoft Visual Studio 2015 Update 3 Performance Debugger Web Views 
```

# Building #
Download or fork, run repackage.bat and upload aem-component.cpt to AEM. You can also download the aem-component.cpt straight from this repository (See subfolders) and install in your AEM instance.