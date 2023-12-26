part of 'sports_event_cubit.dart';

/// [SportsEventState] is the base class for all states.
abstract class SportsEventState extends Equatable {
  /// Constructs a [SportsEventState].
  const SportsEventState();

  @override
  List<Object> get props => [];
}

/// The initial state of the sports event with no event loaded.
class SportsEventInitial extends SportsEventState {
  @override
  List<Object> get props => [];
}

/// The state when the sports event is loading.
class SportsEventLoading extends SportsEventState {
  @override
  List<Object> get props => [];
}

/// The state when the sports event has been loaded.
class SportsEventLoaded extends SportsEventState {
  /// Constructs a [SportsEventLoaded] state with the given [events].
  const SportsEventLoaded(this.events);

  /// The loaded sports event.
  final List<SportsEventModel> events;
}

/// The state when the sports event has failed to load.
class SportsEventError extends SportsEventState {
  /// Constructs a [SportsEventError] state with the given [message].
  const SportsEventError(this.message);

  /// Constructs a [SportsEventError] state with the given [message].
  final String message;
}
