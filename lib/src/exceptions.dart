// Custom exceptions to be used in this project.
class MetOfficeApiError extends Error {
  final String message;

  MetOfficeApiError(this.message);
}
