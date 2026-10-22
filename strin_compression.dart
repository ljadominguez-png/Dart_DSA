/* 
Example 1:

Input: chars = ["a","a","b","b","c","c","c"]
Output: 6
Explanation: The groups are "aa", "bb", and "ccc". This compresses to "a2b2c3".
After modifying the input array in-place, the first 6 characters of chars should be ["a","2","b","2","c","3"].
Example 2:

Input: chars = ["a"]
Output: 1
Explanation: The only group is "a", which remains uncompressed since it is a single character.
After modifying the input array in-place, the first character of chars should be ["a"].
Example 3:

Input: chars = ["a","b","b","b","b","b","b","b","b","b","b","b","b"]
Output: 4
Explanation: The groups are "a" and "bbbbbbbbbbbb". This compresses to "ab12".
After modifying the input array in-place, the first 4 characters of chars should be ["a","b","1","2"].
*/

import 'dart:ffi';
import 'dart:io';

class solution{
  //use fast and slow pointer for this approach
    int compress(List<String> chars) {
    //tracker for the current group
    int currentchar = 0;
    int repeats = 1;

    for(int start = 1; start < chars.length + 1; start++){
      if((start< chars.length) &&(chars[start] == chars[start-1])){
        repeats += 1;
      }
      else{
        chars[currentchar] = chars[start - 1];
        currentchar +=1;

        if(repeats > 1){
          for(var char in repeats.toString().split('')){
              chars[currentchar] = char;
              currentchar += 1;
          }
        }
        repeats = 1;
      }
    }
    return currentchar;
  }
}

void main(List<String> args){
  List<String> test1 = ["a","a","b","b","c","c","c"];
  List<String> test2 = ["a"];
  List<String> test3 = ["a","b","b","b","b","b","b","b","b","b","b","b","b"];


  solution answer = solution();
  print('test 1: ${answer.compress(test1)}');
  print('test 2: ${answer.compress(test2)}');
  print('test 3: ${answer.compress(test3)}');
}