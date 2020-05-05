import 'data/dataType.dart';

/// The type of data to get from the API
String getDataType(DataType type) {
  switch (type) {
    case DataType.DAILY: return 'daily'; break;
    case DataType.HOURLY: return 'hourly'; break;
    case DataType.THREEHOURLY: return 'three-hourly'; break;
    default: return 'Invalid data type';
  }
}

/// Returns the base Met office API url for given frequency of data
String getBaseUrl(DataType dataType) {
  return 'https://api-metoffice.apiconnect.ibmcloud.com/metoffice/production/v0/forecasts/point/${getDataType(dataType)}?';
}
