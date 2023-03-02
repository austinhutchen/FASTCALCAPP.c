import 'dart:math';

// class used for more complex operations not supported by the dart library
class Helper {
  Helper();

  int mySquare(int n) {
    int i = n;
    int sq = 0;
    int count = 0;

    while (i > 0) {
      if ((i & 1) == 1) {
        sq += n << count;
      }

      i = i >> 1;
      count++;
    }

    return sq;
  }

  bool validsign(int x) {
    if (x >> 31 == 1) {
      return false;
    }
    return true;
  }

  // logarithm base 2 for MSb calculation
  double logBase(num x, num base) => log(x) / log(base);
  double log2(num x) => logBase(x, 2);
// square root function bitwise
  int mySqrt(int N) {
    // Find MSB(Most significant Bit) of N
    int msb = (log2(N)).round();

    // (a = 2^msb)
    int a = 1 << msb;
    int result = 0;
    while (a != 0) {
      // Check whether the current value
      // of 'a' can be added or not
      if ((result + a) * (result + a) <= N) {
        result += a;
      }

      // (a = a/2)
      a >>= 1;
    }

    // Return the result
    return result;
  }

// symbols
//π
//ⁿ
//√
//
  int parsehelper(String input) {
// find dart library for parsing these strings

    return 0x0;
  }
}
