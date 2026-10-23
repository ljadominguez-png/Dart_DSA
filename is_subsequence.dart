/**
Example 1:

Input: s = "abc", t = "ahbgdc"
Output: true
Example 2:

Input: s = "axc", t = "ahbgdc"
Output: false
 */
// the approach is simple we return true if our p1 is the same length as our s.
// if p1 has the same length as our s then that means all the input Letter Are
// inside the t. then we return false if our p1 does not have the same length as our s.
class solution {
  bool is_Subsequnce(String s, String t) {
    int p1 = 0;
    int p2 = 0;

    while (p1 < s.length && p2 < t.length) {
      if (s[p1] == t[p2]) {
        p1++;
      }
      p2++;
    }
    return p1 == s.length;
  }
}

void main(List<String> args) {
  solution answer = solution();
  print('Test 1 : ${answer.is_Subsequnce('abc', 'ahbgdc')}');
  print('Test 2 : ${answer.is_Subsequnce('axc', 'ahbgdc')}');
}
