import 'package:miroru_story_editor/model/entities/theme/theme_data_dto.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_data_dto.g.dart';

@Riverpod(keepAlive: true)
ThemeDataDto themeDataDto(Ref ref) => ThemeDataDto();
