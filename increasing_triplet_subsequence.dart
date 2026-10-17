// what the fck is even this piece of sh*t
/*Example 1:

Input: nums = [1,2,3,4,5]
Output: true
Explanation: Any triplet where i < j < k is valid.
Example 2:

Input: nums = [5,4,3,2,1]
Output: false
Explanation: No triplet exists.
Example 3:

Input: nums = [2,1,5,0,4,6]
Output: true
Explanation: One of the valid triplet is (1, 4, 5), because nums[1] == 1 < nums[4] == 4 < nums[5] == 6.
 */

import 'dart:math';

class solution{
  bool incresingTriplet(List<int> nums){
  //slower uses MInt (Medium Integer) uses more heap memory  leading to more memory usage slower runtime!
  //const int maxInt = 0x7FFFFFFFFFFFFFFF;
  //int first_number = maxInt;
  //int second_number = maxInt;

  //better approach
  int max = 2147483648; // 2^31 within the SMI range which does not use heap, goes directly to the register leading to ultra mega fast runtime with lesser memory usage
  int first_number = max;
  int second_number = max;

  for(int numbers in nums){
    if(numbers <= first_number){
      first_number = numbers;
    }
    else if(numbers <= second_number){
      second_number = numbers;
    }else{
      return true;
    }
  }
  return false;
  }
}

void main (){
  solution answer = solution();
  List<int> test1 = [1,2,3,4,5];
  List<int> test2 = [5,4,3,2,1];
  List<int> test3 = [2,1,5,0,4,6];
  print('Test 1 : ${answer.incresingTriplet(test1)}');
  print('Test 2 : ${answer.incresingTriplet(test2)}');
  print('Test 3 : ${answer.incresingTriplet(test3)}');
}