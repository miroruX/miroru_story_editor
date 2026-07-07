## [1.3.1] - 2026-07-07

### Performance

- Theme detection (`getThemeFromImage`) no longer decodes the background image and scans every pixel synchronously on the UI thread. It now runs in an isolate via `compute`, samples a 64px thumbnail instead of a half-size copy, and is only recomputed when the background image actually changes — previously it ran on every decoration move/add/delete/undo, freezing the UI for hundreds of milliseconds per operation with large photos.
- Dragging a decoration no longer rebuilds the whole decoration layer on every pointer event. The moving item is tracked without triggering rebuilds; only the center-line / delete-area indicator flags (which change rarely) are widget state.
- Decorations now follow the finger immediately while dragging. The implicit 50ms `AnimatedAlignPositioned` animation is skipped during an active drag, removing the constant 50ms lag behind the pointer.
- Text editing no longer rebuilds every decoration item on each keystroke — items subscribe only to whether they are the item being edited.
- Freehand drawing thins out pointer samples closer than 2px to the previous point, bounding `getStroke` recomputation cost on long strokes.
- The undo history is now capped at 50 entries, preventing unbounded memory growth and increasingly expensive list copies during long editing sessions.

## [1.3.0] - 2026-06-15

### Changed

- Removed Riverpod from the library's runtime dependencies. Internal state management was migrated to a dependency-free `EditorController` (`ChangeNotifier` / `ValueNotifier`) provided through an `EditorScope` (`InheritedWidget`). Consumers no longer inherit `hooks_riverpod` / `riverpod_annotation` or their version constraints — the public API (`showMiroruStoryEditor`) is unchanged.
- Switched lint rules from `pedantic_mono` to the official `flutter_lints`. This also removes the Dart `^3.12.0` SDK requirement that `pedantic_mono` 1.37 imposed (the package targets `^3.10.0` again).
- example: migrated the iOS project from CocoaPods to Swift Package Manager (all plugins are Swift Packages). Removed the `Podfile` / `Podfile.lock` and CocoaPods integration, fixing simulator launch on Apple Silicon / iOS 26 and removing the CocoaPods (`LANG` / UTF-8) requirement.

### Removed

- Runtime dependencies `hooks_riverpod`, `riverpod_annotation`, and dev dependencies `riverpod_generator`, `riverpod_lint`, `custom_lint`, `pedantic_mono`.

## [1.2.0] - 2026-06-15

### Changed

- Updated all in-use dependencies to their latest compatible versions
  - `font_awesome_flutter` 10 → 11 (icons are now `FaIconData`; migrated affected `Icon` widgets to `FaIcon`)
  - `google_fonts` 6 → 8
  - `image_gallery_saver_plus` 4 → 5
  - `image` 4.8 → 4.9
  - `flutter_blurhash` 0.8 → 0.9
  - `unicode_emojis` 0.4 → 0.5
  - `riverpod_annotation` / `riverpod_generator` 3 → 4, with `hooks_riverpod`, `riverpod_lint`, `build_runner`, `freezed`, `pedantic_mono` bumped to their latest versions resolvable alongside `custom_lint`
- Unified all icons on `font_awesome_flutter`, replacing the unmaintained `ionicons` (close → `xmark`, back/forward → `arrowLeft`/`arrowRight`, ellipsis, palette, download, trash)
- Modernized syntax: converted remaining `switch` statements to switch expressions and replaced `is` type-check chains with switch pattern matching
- Removed the deprecated `synthetic-package` flag from `l10n.yaml`

### Removed

- Dropped the unmaintained `ionicons` dependency (icons migrated to `font_awesome_flutter`)
- Removed unused dependencies to slim the dependency graph: `pro_image_editor`, `image_cropper`, `flutter_image_compress`, `extended_image`, `flutter_svg`, `cached_network_image`, `insta_image_viewer`, `photo_view`, `package_info_plus`, `device_info_plus`, `animated_text_kit`, `gap`, `super_sliver_list`, `flutter_staggered_grid_view`, `avatar_stack`, `flutter_tabler_icons`, `cupertino_icons`, `equatable`, `rxdart`, `quiver`, `collection`, `path`, `json_annotation`, `json_serializable`, `flutter_gen_runner`

## [1.1.16] - 2026-01-02

### Fixed

- Fixed background image aspect ratio distortion by removing `cacheHeight` parameter to preserve original proportions

## [1.1.15] - 2026-01-XX

### Improved

- Improved exported image quality by specifying `pixelRatio` parameter in `toImage()` method to match device pixel density
- Exported images now render at high resolution on Retina displays and other high-DPI devices

## [1.1.14] - 2026-01-01

### Improved

- Separated paint stroke painters into `CompletedStrokePainter` and `ActiveStrokePainter` for optimized rendering
- Added Path caching with `useMemoized` to avoid recalculating completed strokes every frame
- Changed `Paint` objects to static final for sharing across painter instances
- Reduced `filterQuality` to `FilterQuality.low` for faster GPU rendering
- Added `RepaintBoundary` to active stroke layer for better layer isolation
- Improved `shouldRepaint` with `identical()` reference comparison for faster repaint decisions
- Fixed type preservation issue in decoration state updates using `copyWith`

## [1.1.13] - 2025-12-30

### Added

- Clear all state when editor is closed (invalidate all providers on dispose)
- Japanese font support with 6 distinct fonts (Noto Sans JP, Noto Serif JP, Zen Maru Gothic, Zen Kaku Gothic New, M PLUS Rounded 1c, Sawarabi Mincho)
- Bold font weight as default for text input

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
