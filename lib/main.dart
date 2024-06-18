import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                  primarySwatch: getThemeColor(
                BlocProvider.of<GetWeatherCubit>(context)
                    .weatherModel
                    ?.weatherCondition,
              )),
              debugShowCheckedModeBanner: false,
              home: const HomeView(),
            );
          },
        ),
      ),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }

  if (condition == 'Sunny') {
    return Colors.orange;
  } else if (condition == 'Clear') {
    return Colors.blue;
  } else if (condition == 'Partly cloudy') {
    return Colors.grey;
  } else if (condition == 'Cloudy') {
    return Colors.blueGrey;
  } else if (condition == 'Overcast') {
    return Colors.grey;
  } else if (condition == 'Mist') {
    return Colors.blue;
  } else if (condition == 'Patchy rain possible') {
    return Colors.lightBlue;
  } else if (condition == 'Patchy snow possible') {
    return Colors.lightBlue;
  } else if (condition == 'Patchy sleet possible') {
    return Colors.lightBlue;
  } else if (condition == 'Patchy freezing drizzle possible') {
    return Colors.lightBlue;
  } else if (condition == 'Thundery outbreaks possible') {
    return Colors.deepPurple;
  } else if (condition == 'Blowing snow') {
    return Colors.lightBlue;
  } else if (condition == 'Blizzard') {
    return Colors.lightBlue;
  } else if (condition == 'Fog') {
    return Colors.grey;
  } else if (condition == 'Freezing fog') {
    return Colors.grey;
  } else if (condition == 'Patchy light drizzle') {
    return Colors.lightBlue;
  } else if (condition == 'Light drizzle') {
    return Colors.lightBlue;
  } else if (condition == 'Freezing drizzle') {
    return Colors.lightBlue;
  } else if (condition == 'Heavy freezing drizzle') {
    return Colors.lightBlue;
  } else if (condition == 'Patchy light rain') {
    return Colors.lightBlue;
  } else if (condition == 'Light rain') {
    return Colors.lightBlue;
  } else if (condition == 'Moderate rain at times') {
    return Colors.blue;
  } else if (condition == 'Moderate rain') {
    return Colors.blue;
  } else if (condition == 'Heavy rain at times') {
    return Colors.blue;
  } else if (condition == 'Heavy rain') {
    return Colors.blue;
  } else if (condition == 'Light freezing rain') {
    return Colors.lightBlue;
  } else if (condition == 'Moderate or heavy freezing rain') {
    return Colors.lightBlue;
  } else if (condition == 'Light sleet') {
    return Colors.lightBlue;
  } else if (condition == 'Moderate or heavy sleet') {
    return Colors.lightBlue;
  } else if (condition == 'Patchy light snow') {
    return Colors.lightBlue;
  } else if (condition == 'Light snow') {
    return Colors.lightBlue;
  } else if (condition == 'Patchy moderate snow') {
    return Colors.lightBlue;
  } else if (condition == 'Moderate snow') {
    return Colors.lightBlue;
  } else if (condition == 'Patchy heavy snow') {
    return Colors.lightBlue;
  } else if (condition == 'Heavy snow') {
    return Colors.lightBlue;
  } else if (condition == 'Ice pellets') {
    return Colors.lightBlue;
  } else if (condition == 'Light rain shower') {
    return Colors.lightBlue;
  } else if (condition == 'Moderate or heavy rain shower') {
    return Colors.blue;
  } else if (condition == 'Torrential rain shower') {
    return Colors.blue;
  } else if (condition == 'Light sleet showers') {
    return Colors.lightBlue;
  } else if (condition == 'Moderate or heavy sleet showers') {
    return Colors.lightBlue;
  } else if (condition == 'Light snow showers') {
    return Colors.lightBlue;
  } else if (condition == 'Moderate or heavy snow showers') {
    return Colors.lightBlue;
  } else if (condition == 'Light showers of ice pellets') {
    return Colors.lightBlue;
  } else if (condition == 'Moderate or heavy showers of ice pellets') {
    return Colors.lightBlue;
  } else if (condition == 'Patchy light rain with thunder') {
    return Colors.blue;
  } else if (condition == 'Moderate or heavy rain with thunder') {
    return Colors.blue;
  } else if (condition == 'Patchy light snow with thunder') {
    return Colors.lightBlue;
  } else if (condition == 'Moderate or heavy snow with thunder') {
    return Colors.lightBlue;
  } else {
    return Colors.blue; // Default color if condition is not matched
  }
}
