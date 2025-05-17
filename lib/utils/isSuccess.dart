bool isSuccessStatus(int? code) {
  return code != null && code >= 200 && code < 300;
}
