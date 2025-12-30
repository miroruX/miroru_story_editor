## [1.1.12] - 2025-12-30

### Improved

- Optimized `CustomPainter.shouldRepaint` to only redraw when lines actually change
- Moved BlurHash calculation to Isolate to prevent UI freezing
- Added `RepaintBoundary` to cache completed paint strokes
- Changed emoji grid to use `SliverGrid.builder` for lazy loading (1000+ emojis)
- Applied Riverpod `select` to reduce unnecessary widget rebuilds
- Fixed memory leak by adding cleanup to `useEffect` listeners

## [1.1.11] - 2025-12-14

### Fixed

- Added `rootNavigator: true` to Navigator for improved compatibility with routing packages (go_router, auto_route, beamer, etc.)
- Ensures proper fullscreen display when using nested navigators

## [1.1.10] - 2025-12-14

### Fixed

- Fixed issue where BottomNavigationBar and other UI elements from the calling page remained visible in the background by adding `fullscreenDialog: true` to MaterialPageRoute

## [1.1.9] - 2025-12-12

### Changed

- Updated dependencies

## [1.1.8] - 2025-02-21

### Changed

- Updated dependencies

## [1.1.7] - 2024-05-15

### Changed

- Updated `intl` dependency to version 0.18.1 to resolve compatibility issues with `flutter_localizations`.

- depenced

# [1.1.6] - 2024-05-15

### Changed

- Updated `intl` dependency to version 0.18.1 to resolve compatibility issues with `flutter_localizations`.

- depenced

## 1.1.5 - 2024-04-29

### Update

- Updated Flutter to version 3.19.6
- Added feature to save images in device photos
- Localization to Error Message
- Delete unused images

## 1.1.4 - 2024-02-03

### Update

- update flutter 3.19

## 1.1.3 - 2024-02-03

### Update

- refactoring

## 1.1.2 - 2024-02-03

### Added

- fix l10n ignore

## 1.1.1 - 2024-02-03

### Added

- Added support for localization in the README.

## 1.1.0 - 2024-02-03

### Added

- add localization en, hi, ja, ko, ru, zh

## 1.0.6 - 2024-02-03

### Added

- add package repository url

## 1.0.5 - 2024-02-03

### Added

- delete print

## 1.0.4 - 2024-02-03

### Added

- fix readme install package

## 1.0.3 - 2024-02-03

### Added

- fix readme image url

## 1.0.3 - 2024-02-03

### Added

- fix readme image url

## 1.0.2 - 2024-02-03

### Added

- fix readme image url

## 1.0.1 - 2024-02-03

### Added

- fix readme
- fix homepage url

## 1.0.0 - 2024-02-03

### Added

- add readme
- fix textfiled text-align
- refactoring

## 0.0.1-dev

### Added - 2024-01-31

- first release
