# Lecture 4
# Stacks
- Stores arbitrary space 
- Insertions and deletions are last-in, first-out(LIFO)
#### Operations
- push(T)
- T pop()
- T top()
- int size()
- boolean isEmpty()
```slide-note
file: week4.pdf
page: 5
scale: 0.7
```
### Array-based Stack
```java
Algorithm size()
	return t + 1
	
Algorithm pop()
	if isEmpty() then
		throw NoSuchElementException
	else 
		t <- t - 1
		return S[t + 1]
```

# Queues
- enque(T)
- T dequeue()
- T first()
- integer size()
- boolean isEmpty()
```slide-note
file: week4.pdf
page: 13
scale: 0.7
```


## Parenthesis Matching
```java
public static boolean matched(String inString) {
	Deque<Character> stack = new ArrayDeque<>();
	
	for (char c : inString.toCharArray()) {
		if (c == "(") stack.push(")")
		else if (c == "{") stack.push("}")
		else if (c == "[") stack.push("]")
		else {
			if (stack.isEmpty()) return false;
			if (c != stack.pop()) return false;	
		}
	}
	return stack.isEmpty();
}
```
# Tree Basics
```slide-note
file: week4.pdf
page: 34
scale: 0.7
```
## Tree ADT
- **general methods**
	- Size()
	- isEmpty()
	- iterator()
	- positions
- **Accessor methods**
	- root() - returns the root
	- parent(p) - returns the parent of p
	- children(p) - returns a list of children of p
	- numChildren(p) - Returns number of children of p
- **Query methods**
	- isInternal(p) - True if p has at least one child
	- isExternal(p) - True if p has no children
	- isRoot(p) - True if p has no parent 
- **Update methods**
	- replace(p , o) - replaces (updates) the (data) element at position p with o
	- addRoot(o) - adds a new root to the tree
	- remove(p) - remove a node from a position p, restructures the tree if necessary
# Tree Traversals 
### Euler Tour Traversal
- **Generic traversal **
- each is visited 3 times

# Binary trees
