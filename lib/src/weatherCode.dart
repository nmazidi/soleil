/// This returns the description (String) of 
/// a given Significant Weather Code ID
String weatherCode(int key) {
  switch (key) {
    case 0  : return 'Clear night'; break;
    case 1  : return 'Sunny day'; break;
    case 2  : return 'Partly cloudy (night)'; break;
    case 3  : return 'wi_day_cloudy'; break;
    case 4  : return 'Not used'; break;
    case 5  : return 'Mist'; break;
    case 6  : return 'Fog'; break;
    case 7  : return 'wi_cloudy'; break;
    case 8  : return 'wi-day-sunny-overcast'; break;
    case 9  : return 'Light rain shower (night)'; break;
    case 10 : return 'Light rain shower (day)'; break;
    case 11 : return 'Drizzle'; break;
    case 12 : return 'Light rain'; break;
    case 13 : return 'Heavy rain shower (night)'; break;
    case 14 : return 'Heavy rain shower (day)'; break;
    case 15 : return 'Heavy rain'; break;
    case 16 : return 'Sleet shower (night)'; break;
    case 17 : return 'Sleet shower (day)'; break;
    case 18 : return 'Sleet'; break;
    case 19 : return 'Hail shower (night)'; break;
    case 20 : return 'Hail shower (day)'; break;
    case 21 : return 'Hail'; break;
    case 22 : return 'Light snow shower (night)'; break;
    case 23 : return 'Light snow shower (day)'; break;
    case 24 : return 'Light snow'; break;
    case 25 : return 'Heavy snow shower (night)'; break;
    case 26 : return 'Heavy snow shower (day)'; break;
    case 27 : return 'Heavy snow'; break;
    case 28 : return 'Thunder shower (night)'; break;
    case 29 : return 'Thunder shower (day)'; break;
    case 30 : return 'Thunder'; break;
    default: return 'Weather code invalid';
  }
}