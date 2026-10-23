//Area = Width * Height
/*
"All pairs of the n lines define a rectangle with 
a height given by the shorter line and a width given by 
the distance between the lines. Return the area of the 
rectangle with the largest area."
*/
import 'dart:math';

class solution {
  int maxArea(List<int> height) {
    int max = 0;
    int p1 = 0;
    int p2 = height.length - 1;
    while (p1 < p2) {
      int width = p2 - p1;
      int useable_height = min(height[p1], height[p2]);
      int area = width * useable_height;

      if (area > max) {
        max = area;
      }

      if (height[p1] < height[p2]) {
        p1 += 1;
      } else {
        p2 -= 1;
      }
    }
    return max;
  }
}

void main(List<String> args) {
  List<int> test1 = [1, 8, 6, 2, 5, 4, 8, 3, 7];
  //expected : 49
  List<int> test2 = [1, 1];
  //expected : 1

  solution answer = solution();
  print('test 1: ${answer.maxArea(test1)}');
  print('test 2: ${answer.maxArea(test2)}');
}
