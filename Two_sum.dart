class TwoSum {
  List<int> twoSum(List<int> nums, int target){
    Map<int, int> pair = {};
    for(int start = 0; start < nums.length; start++){
      int complement = target - nums[start];
      if(pair.containsKey(complement)){
        return [pair[complement]!,start];
      }
      pair[nums[start]] = start;
    }
    return [];
  }

}

  void main(){
    TwoSum solver = TwoSum();
    List<int> test = [1,2,3,4,5,6,7];
    print(solver.twoSum(test, 9)); 
  }