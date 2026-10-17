/*
Example 1:
Input: nums = [1,2,3,4]
Output: [24,12,8,6]

Example 2:
Input: nums = [-1,1,0,-3,3]
Output: [0,0,9,0,0]
*/
class solution{

  List<int> productExceptSelf(List<int> nums){
    int length = nums.length;
    //List<int> answer = [length];// culprit this outputs the length of nums but since it is  only 1 number the total length of answer will only be 1
    //solution: use filled
    List<int> answer = List.filled(length, 0);
    //left
    int left_product = 1;
    for(int start_left = 0; start_left < length; start_left++){
        answer[start_left] = left_product;
        left_product *= nums[start_left];
    }
    //right
    int right_product = 1;
        for(int start_right = length - 1; start_right >= 0; start_right--){
        answer[start_right] *= right_product;
        right_product *= nums[start_right];
    }
    return answer;
  }

}

void main(){
  List<int> test1 = [1,2,3,4];
  List<int> test2 = [-1,1,0,-3,3];

  solution answer = solution();

  print('Test 1 : ${answer.productExceptSelf(test1)}');
  print('Test 2 : ${answer.productExceptSelf(test2)}');
}