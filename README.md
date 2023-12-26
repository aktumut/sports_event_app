# Sports Event  App Documentation

## Description

This Flutter project, `Sports Event App`, showcases sports events in a user-friendly and interactive manner. Utilizing
Flutter's capabilities, the app provides a dynamic and responsive interface for sports event enthusiasts.

## Features

- **Dynamic Event Listing**: Display sports events with detailed information.
- **Event Filtering**: Users can filter events based on dates - Yesterday, Today, Tomorrow.
- **Interactive UI**: Responsive event cards that change appearance on user interactions.
- **Adaptive Design**: Optimized for various screen sizes and orientations.

## Packages

Below are the primary packages used in the development of Boring App:

```yaml
dependencies:
  flutter_bloc: ^8.1.3
  equatable: ^2.0.5
  get_it: ^7.6.4
  json_serializable: ^6.7.1
  json_annotation: ^4.8.1
  very_good_analysis: ^5.1.0
  bloc_test: ^9.1.5
  mocktail: ^1.0.2
```

## Architecture Overview

The Sports Event App is structured to follow clean architecture principles, separating concerns into
logical layers, and
utilizing the BLoC pattern for state management.

### Directory Structure

- `lib/`
    - `business_logic/`
        - `blocs/` : Manages state and activity operations
        - `repositories/`: Abstraction layer for data fetching and persistence.
    - `data/`
        - `models/`: Data models
        - `providers/`: Manages fetching and storing data from API or local storage.
    - `presentation/`
        - `pages/` Page views
            - `pages/widgets/`: Custom UI components for specific pages.
        - `widgets/`: Common and custom UI components.
    - `utils/`: Utility classes for icons, images, theme, and styles.
    - `core/`:  Core classes like service locators.
    - `app.dart`: Application itself
    - `main.dart`: Entry point of the Flutter application.

### Architectural Components

#### Data Layer

- **Models (`data/models/`):** Define the structure of the data objects.
- **Providers (`data/providers/`):** Handle logic for data retrieval and storage.

#### Business Logic Layer

- **Repositories (`business_logic/repositories/`):** Mediate between data providers and BLoC layers,
  providing a clean API for data requests.
- **BLoCs/Cubits (`business_logic/blocs/`):** Manage the state of the application for various
  features, emitting new states in response to events.

#### Presentation Layer

- **Pages (`presentation/pages/`):** Screens of the application, subscribing to state changes and
  presenting UI.
- **Page Widgets (`presentation/pages/widgets/`):** Custom UI components for specific pages.
- **Widgets (`presentation/widgets/`):** Reusable UI components.

#### Utilities and Core

- **Core (`core/`):**  Core functions of the app. Currently, it only contains the service locator
  for dependency injection
- **Utilities (`utils/`):** Provide constants, icons, images and theme data used
  across the app.

## Data Flow

1. **JSON Communication**: The app uses local JSON files to simulate communication with a remote API.
2. **State Management**: State is managed via the flutter_bloc package, which orchestrates the flow
   of data within the app, ensuring a reactive and responsive user experience.
3. **Dependency Injection**: The get_it package is used to implement dependency injection, allowing for
   loose coupling between components and facilitating testing.

## Linter Rules

The project uses the `very_good_analysis` package to enforce the linting rules. This package is quite strict and well
known by the corporate world.

## Running the App

This guide assumes that you have Flutter installed on your machine. If not, please refer to
the [Flutter installation documentation](https://flutter.dev/docs/get-started/install) to set up
Flutter on your system.

### Prerequisites

Before running the app, make sure you have the following installed:

- Flutter SDK (Channel stable, latest version)
- Dart SDK (latest version)
- An IDE (like Android Studio, VS Code, IntelliJ)
- A compatible Android or iOS device or emulator

### Steps to Run

1. **Clone the Repository:**
   ```shell
   git clone https://github.com/aktumut/sports_event_app.git
   cd sports_event_app
    ```
2. **Get Packages:**
   Retrieve all the necessary packages by running the following command in your terminal:
   ```shell
   flutter pub get
    ```
3. **Launch Emulator/Simulator:**
   To run the app on an emulator or simulator, ensure that it is running before executing the app.
   For Android Studio
   and IntelliJ, you can start an emulator via the AVD Manager. For VS Code, you can start it from
   the Command Palette
   by searching for `Flutter: Launch Emulator`.

4. **Run the App:**
   With the emulator or simulator running, or a physical device connected, execute the following
   command to run the app:
   ```shell
   flutter run
     ```

## Testing

In this project, I have implemented a comprehensive set of widget tests to ensure the reliability and correctness of
the UI components and their interactions with the business logic layers.

### Test Setup

This simple test utilize flutter_test for implementing widget tests and mocktail for mocking dependencies. This setup
allows us
to simulate and verify the behavior of our widgets under conditions and states.

### Running Tests

To run the tests, use the following command in the root directory of the project:

 ```bash
flutter test
 ```

**Objective:** To verify that EventsPage displays a CircularProgressIndicator when the SportsEventCubit is in the
loading
state.

**Implementation:**  I mock the SportsEventCubit to return the SportsEventLoading state and then check if EventsPage
correctly renders a CircularProgressIndicator.

### Test Dependencies

**flutter_test:** Provides the necessary framework for writing and running Flutter widget tests.

**mocktail:** A Dart mocking library used for creating mock objects and setting up their behavior.

## Notes

- I would love to use more advance packages like injectable, freezed, flutter_hooks, go_router etc but I afraid that
  would be
  overkill for this project.
- I have tested the app on IOS simulators. I believe responsiveness of the app is good enough for now. I would love to
  test it on more devices and screen sizes.
- I have used flutter_bloc package for state management. I have used cubits instead of blocs because I believe it is
  more suitable for this project. I have used bloc_test package for testing cubits.
- I have used get_it package for dependency injection. I have used service locator pattern for this project. I thought
  injectable package would be overkill for this project.
- I have used json_serializable package for json serialization and json_annotation package for annotations.

## Potential Improvements

- Calendar filter to select date or date range
- Filter on the type of the game (football, basketball, etc.)
- Filter on the team names (Manchester United, Barcelona, etc.)
- Filter on the location of the game (London, New York, etc.)
- Filter on the tournament name (Champions League, NBA, etc.)
- Remove filter button
- Results of the passed games (scores, etc.)
- Integration tests and further expansion of widget tests to cover more components and scenarios (Filtering and error
  states and interactions with the UI.)