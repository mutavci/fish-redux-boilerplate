# fish-redux-boilerplate

## **Table of Contents**

* [Getting Started](#getting-started)
* [How to Use](#how-to-use)
* [ToDos](#todos)
* [What is Fish Redux ?](#what-is-fish-redux-)
* [Plugins](#plugins)
  * [Code Template](#code-template)
  * [Dev-Tools](#dev-tools)


## Getting Started

An opinionated boilerplate for fish-redux focused on separation of concerns and scalability.

[https://jsonplaceholder.typicode.com/](https://jsonplaceholder.typicode.com/) is used as backend in the examples.

The Boilerplate contains the minimal implementation required to create a new library or project. The repository code is preloaded with some basic components like basic app architecture, app theme, constants and required dependencies to create a new project. By using boiler plate code as standard initializer, we can have same patterns in all the projects that will inherit it. This will also help in reducing setup & development time by allowing you to use same code pattern and avoid re-writing from scratch.

## How to Use

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/mutavci/fish-redux-boilerplate.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get 
```

**Step 3:**

This project uses `inject` library that works with code generation, execute the following command to generate files:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or watch command in order to keep the source code synced automatically:

```
flutter packages pub run build_runner watch
```

## ToDos

- [ ] pull_to_refresh
- [ ] spinkit | loading
- [ ] permission handler
- [ ] localization |  intl
- [ ] authorization
- [ ] shared reference
- [ ] interceptor
- [ ] unit test
- [X] dio
- [X] adapter
- [X] component
- [X] route
- [x] list

## What is Fish Redux ?

Fish Redux is an assembled flutter application framework based on Redux state management.
It is suitable for building medium and large applications.

It has four characteristics:

> 1. Functional Programming

> 2. Predictable state container

> 3. Pluggable componentization

> 4. Non-destructive performance

[Details](https://github.com/alibaba/fish-redux/blob/master/doc/README.md)

## Plugins

### Code Template

-   [Fish Redux Template For Android Studio](https://github.com/BakerJQ/FishReduxTemplateForAS), by BakerJQ.
-   [Fish Redux Template For VSCode](https://github.com/huangjianke/fish-redux-template), by huangjianke.

### Dev-Tools

-   Redux Inspector (using [Flutter Debugger](https://github.com/blankapp/flutter-debugger) and [flipperkit_fish_redux_middleware](https://pub.dartlang.org/packages/flipperkit_fish_redux_middleware)) for Fish Redux apps, by [JianyingLi](https://github.com/lijy91)