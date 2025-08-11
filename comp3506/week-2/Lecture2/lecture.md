# Lecture 2
# Recursion
### Linear Recursion
- perform a single recursive call per method
```python
def recursive_algo(n):
	if n <= 0:
		return 0
	elif n % 2 == 0:
		return 1 + recursive_algo(n/2)
	else:
		return 1 + recursive_algro(n-1)	
```
#### Tail Recurison


# Analysis of recursive algorithms


# Divide-and-conquer paradigm

# Merge sort

# Quicksort

