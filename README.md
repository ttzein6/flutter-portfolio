# Portfolio Website

This is my personal portfolio website developed using Flutter and Sanity. Feel free to use it as a template for your own portfolio!

## Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Sanity CLI (Install using npm: `npm install -g @sanity/cli`)

### Setup

1. Clone this repository:

   ```bash
   git clone https://github.com/ttzein6/portfolio.git
   ```
2. Navigate to the project directory:

   ```bash
   cd portfolio
   ```
3. Install dependencies:

   ```bash
   flutter pub get
   ```
4. Configure Sanity API Key:

   Before building the app, set your Sanity API key as an environment variable:

      ```bash
      export SANITY_API_KEY=your-api-key-here
   ```
   Replace your-api-key-here with your actual Sanity API key.

## Building the App

To build the Flutter app with your Sanity API key:
   ```bash
   flutter build web --dart-define=SANITY_API_KEY=$SANITY_API_KEY
```
This command will build the web version of the app while passing your Sanity API key as an environment variable (SANITY_API_KEY).

## Running the App

To run the Flutter app locally, use the following command:

```bash
flutter run -d web --dart-define=SANITY_API_KEY=$SANITY_API_KEY
```
# License

This project is licensed under the MIT License. See the LICENSE file for details.