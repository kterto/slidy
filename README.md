# Slidy

CLI package manager and template generator for Flutter. Generate Modules, Pages, Widgets, BLoCs, Controllers, tests and more.

Slidy supports mobx, bloc, cubit, rx_notifier and triple.

# Why should I use?

Slidy's goal is to help you structure your project in a standardized way. Organizing your app in **Modules** formed by pages, repositories, widgets, BloCs, and also create unit tests automatically. The Module gives you a easier way to inject dependencies and blocs, including automatic dispose. Also helps you installing the dependencies and packages, updating and removing them. The best is that you can do all of this running a single command.

# Motivations

We realized that the project pattern absence is affecting the productivity of most developers, so we're proposing a development pattern along with a tool that imitates NPM (NodeJS) functionality as well as template generation capabilities (similar to Scaffold ).

# About the Proposed Pattern

The structure that slidy offers you, it's similar to MVC, where a page keeps it's own **business logic classes(BloC)**.

We recommend you to use [flutter_modular](https://pub.dev/packages/flutter_modular) when structuring with slidy. It offers you the **module structure**(extending the WidgetModule) and dependency/bloc injection, or you will probably get an error.

To understand **flutter_modular**, take a look at the [README](https://github.com/Flutterando/modular/blob/master/README.md).

We also use the **Repository Pattern**, so the folder structure it's organized in **local modules** and a **global module**. The dependencies(repositories, BloCs, models, etc) can be accessed throughout the application.

Sample folder structure generated by **slidy**:

## Installation

1. First of all you need install the Dart:

    [https://dart.dev/get-dart](https://dart.dev/get-dart)

2. Activate the slidy using the pub:

```bash
 pub global activate slidy
```

3. Type `slidy --version` to make sure everything is working properly. This command should return the installed version.

## Commands:

### upgrade:

Updates slidy's version:

```bash
slidy upgrade
```

Ready now you can enjoy this new world.

## Commands:    
  **start:** 
     Create a basic structure for your project (confirm that you have no data in the "lib" folder).
```  
slidy start
```     

**run:** 
     Run scripts placed in the "scripts" parameter in pubspec.yaml
```  
slidy run open_folder
```   

**Install:**
Install (or update) a new package or packages:
```
slidy install mockito dio modular
```
You can also install a package as dev_dependency using the flag --dev
```
slidy i flutter_launcher_icons --dev
``` 

## Generate:

Create a module, page, widget or repository according to the option.
    
**Options:**
    
Creates a new module with **slidy generate module**:
``` 
slidy generate module manager/product
``` 

Creates a new page with **slidy generate page**:
```
slidy generate page manager/product/pages/add_product
``` 
            
Creates a new widget with **slidy generate widget**:
```
slidy generate widget manager/product/widgets/product_detail
``` 
          
Create a new repository with **slidy generate repository**
```
slidy g r manager/product/repositories/product
``` 

Create a new rx notifier with **slidy generate rx**
```
slidy g rx manager/product/page/my_rx_notifier
``` 

Create a new triple with **slidy generate t**
```
slidy g t manager/product/page/my_triple
``` 

Create a new cubit with **slidy generate c**
```
slidy g c manager/product/page/my_cubit
``` 

Create a new mobx with **slidy generate mbx**
```
slidy g mbx manager/product/page/my_store
``` 

For more details [Telegram Group Flutterando](https://t.me/flutterando)

