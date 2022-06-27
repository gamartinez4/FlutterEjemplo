import 'package:hooks_riverpod/hooks_riverpod.dart';

final valueProviderSize = StateProvider<double?>((ref) => 0);

final textsList = StateProvider<List<String>>((ref) => ["1","2","3"]);

