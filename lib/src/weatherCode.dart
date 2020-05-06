/// This returns the description (String) of 
/// a given Significant Weather Code ID
String weatherCode(int key) {
  switch (key) {
    case 0  : return 'wi-night-clear'; break; // Clear night
    case 1  : return 'wi-day-sunny'; break; // Sunny day
    case 2  : return 'wi-night-alt-partly-cloudy'; break; // Partly cloudy (night)
    case 3  : return 'wi_day_cloudy'; break; // Partly cloudly (day)
    case 4  : return 'Not used'; break;
    case 5  : return 'wi-day-fog'; break; // Mist
    case 6  : return 'wi-day-fog'; break; // Fog
    case 7  : return 'wi_cloudy'; break; // Cloudy
    case 8  : return 'wi-day-sunny-overcast'; break; // Overcast
    case 9  : return 'wi-night-alt-showers'; break; // Light rain shower (night)
    case 10 : return 'wi-day-showers'; break; // Light rain shower (day)
    case 11 : return 'wi-sprinkle'; break; // Drizzle
    case 12 : return 'wi-showers'; break; // Light rain
    case 13 : return 'wi-night-alt-rain'; break; // Heavy rain shower (night)
    case 14 : return 'wi-day-rain'; break; // Heavy rain shower (day)
    case 15 : return 'wi-rain'; break; // Heavy rain
    case 16 : return 'wi-night-alt-sleet'; break; // Sleet shower (night)
    case 17 : return 'wi-day-sleet'; break; // Sleet shower (day)
    case 18 : return 'wi-sleet'; break; // Sleet
    case 19 : return 'wi-night-alt-hail'; break; // Hail shower (night)
    case 20 : return 'wi-day-hail'; break; // Hail shower (day)
    case 21 : return 'wi-hail'; break; // Hail
    case 22 : return 'wi-night-alt-snow'; break; // Light snow shower (night)
    case 23 : return 'wi-day-snow'; break; // Light snow shower (day)
    case 24 : return 'wi-snow'; break; // Light snow
    case 25 : return 'wi-night-alt-snow'; break; // Heavy snow shower (night)
    case 26 : return 'wi-day-snow'; break; // Heavy snow shower (day)
    case 27 : return 'wi-snow'; break; // Heavy snow
    case 28 : return 'wi-night-alt-thunderstorm'; break; // Thunder shower (night)
    case 29 : return 'wi-day-thunderstorm'; break; // Thunder shower (day)
    case 30 : return 'wi-thunderstorm'; break; // Thunder
    default: return 'Weather code invalid';
  }
}