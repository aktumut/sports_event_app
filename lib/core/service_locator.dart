import 'package:get_it/get_it.dart';
import 'package:sports_event_app/business_logic/repositories/sports_event_repository.dart';
import 'package:sports_event_app/data/providers/sports_event_provider.dart';

/// Global instance of [GetIt] for service location.
final GetIt getIt = GetIt.instance;

/// Sets up the service locator for dependency injection.
///
/// This method initializes various services and providers in the application
/// using the [GetIt] package. Each service or provider is registered
/// as either a singleton or factory, depending on its use case.
///
/// Singletons are created once and reused throughout the app's lifecycle,
/// while factories are created anew each time they're requested.
void setupLocator() {
  getIt
    ..registerLazySingleton(SportsEventProvider.new)
    ..registerLazySingleton(SportsEventRepository.new);
}
