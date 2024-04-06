<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->


**Tuldokator** · *tool-doh-kay-tor*


A lightweight Flutter widget **dot indicators** for PageView tracking.

## Showcase 🚀

<img src="https://github.com/johnnydevvcodes/tuldokator/assets/28794954/e683c364-affd-4f78-b80f-bc06ff30a002" width="350" height="100" />



## Getting started 👇

### Properties
- Tuldokator
    - itemCount: The total number of dots to be displayed.
    - controller: A controller for manipulating the state of the Tuldokator.

### Usage


```dart
Tuldokator(
  itemCount: 5,
  controller: _tuldokatorController,
)
```

- **TuldokatorController**
    - A controller class that can be used to programmatically control the Tuldokator.

- **Constructors**
    - TuldokatorController
        - **initialValue**: The initial selected dot index.

- **Methods**
    - **toIndex(int index)**: Sets the currently selected dot index to the provided index.


### Example

```
final _tuldokatorController = TuldokatorController(initialValue: 0);

// Change the selected dot index programmatically
_tuldokatorController.toIndex(3);
```
