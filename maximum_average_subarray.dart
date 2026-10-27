import 'dart:math';

class Solution {
  double findMaxfAverage(List<int> nums, int k) {
    if (nums.length < k || nums.isEmpty) return 0;
    //since this is a sliding window problem
    double currentSum = 0;
    //we first calculate the sum
    for (int left = 0; left < k; left++) {
      currentSum += nums[left];
    }
    double maxSum = currentSum;
    for (int right = k; right < nums.length; right++) {
      currentSum += nums[right] - nums[right - k];
      maxSum = max(maxSum, currentSum);
    }
    return maxSum / k;
  }
}

void main(List<String> args) {
  List<int> test1 = [1, 12, -5, -6, 50, 3];
  //expected : 12.75000
  List<int> test2 = [5];
  //expected : 5.0000

  Solution answer = Solution();

  print('Test 1 : ${answer.findMaxfAverage(test1, 4)}');
  print('Test 1 : ${answer.findMaxfAverage(test2, 1)}');
}
