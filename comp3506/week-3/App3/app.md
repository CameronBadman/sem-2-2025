# App 3
## 1. Order the following functions by asymptotic growth rate

1. 2^10
2.  3 log3 (log3 n)
3.  100 log2 n
4. 4n
5. 4n log4 n+2n
6. 2^(log2 n)
7. n^2 + 10n
8. n^2 log2 (n)
9. n^3
10. 2^n 

# 2.
```
i ← 0 // 1  
while i < n do // n
	println i  // 1
	i ← i + 1 // 2
```

3nlog(n) + 1
# 3. 
```
Algorithm binarySum(A, i, n)  
Input: an array of integers A and integers i and n.  
Output: the sum of the n values in A starting at index i.  
if n = 1 then // 1  
	return A[i]  // 1
return binarySum(A, i, ⌈n/2⌉) + binarySum(A, i + ⌈n/2⌉, ⌊n/2⌋
```
 2n - 1

# 4
(⋆) Suppose you have a sorted sequence S of infinite length (somehow) and without duplicates. You can query any value S[i] in constant time, but the sequence has no end. How can we search for a value x in S? Extend binary search to solve this efficiently.

```code
list[x] = ans
```


# 5

# 6
```java

public static get_occurances(int[] list, int occurance) {
	midpoint = list.length() / 2;
	if (midpoint == 1) {
		if (list[0] == occurance) {
			return 1	
		}
		return 0
	} 

	if (list[midpoint] >= occurances) {
		get_occurances(list[midpoint + 1, list.legnth()]):	
	}
	else { 
		get_occurances(list[0, midpoint])
	}

}
```




# 8




 














