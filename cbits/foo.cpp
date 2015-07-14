#ifdef __cplusplus
extern "C" {
    double bar(double x) {
      return 10.0;
    }
}
#else
double bar(double x) {
  return 20.0;
}
#endif

