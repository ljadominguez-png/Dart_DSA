/**
Example 1:

Input: nums = [0,1,0,3,12]
Output: [1,3,12,0,0]
Example 2:

Input: nums = [0]
Output: [0]

since it is modifying an array this is a fast and slow pointer
 */

class Solution {
  void moveZeroes(List<int> nums) {
    int slow = 0;

    for (int fast = 0; fast < nums.length; fast++) {
      if (nums[fast] != 0) {
        nums[slow] = nums[fast];
        slow += 1;
      }
    }
    while (slow < nums.length) {
      nums[slow++] = 0;
    }
  }
}

void main(List<String> args) {
  //test Cases:
  List<int> test1 = [0, 1, 0, 3, 12];
  List<int> test2 = [0];

  Solution answer = Solution();
  answer.moveZeroes(test1);
  print('Test 1 : $test1');
  answer.moveZeroes(test2);
  print('Test 1 : $test2');
}
