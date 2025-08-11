# Lecture 1
# ADTs vs Data Structures 
- **Abstract Data Types ** (ADTs, interfaces, APIs) 
	- specifies what data we can store
	- what operation we can support and what they mean
- **Data Structures**
	- Tell us how to store the data
	- tell us how to support those operations
# Empirical Experiments
### Benefits 
- we can readily see how algorithms behaves to type data cases 
- abstracts most of the underlying infrastructure(doesn't track hardware, compile, constants, coefficients)
### Limitations
- need to implement the algorithm
- abstract underlying infrastructure
- 

# Theoretical Analysis
### 1. Express algorithm as pseudo-code

### 2. Count primitive operations
- **Basic arithmetic, Bitwise, Comparisons, accessing or writing a word in memory, assignment all take a SINGLE OPERATION**
### 3. Describe algorithm as f(n)
- Inspect the pseudo-code determining the maximum number of primitive operations executed
```slide-note
file: week1-lecture(1).pdf
page: 56
scale: 0.7
dpi: 2
text: true
```
#### Estimating Running Time
- arrayMax executes 6n primate operations, worst case
	- **A** = fastest primitive operation
	- **B** = slowest primitive operation
	- **T(n)** = worst case time of arrayMax
		- a * 6n <= T(n) <= A * 6n
### 4. Perform asymptotic analysis
- Constant = 1
- Logarithmic = log2 n
- linear = n
- n-log-n = n log2 n
- quadratic = n^2
- cubic = n^3
- Exponential = 2^n
- Factorial = n!


# Big-O Notation
- Describes UPPER BOUND
- Given a function f(n) and g(n), we say that f(n) is O(g(n))
```slide-note
file: week1-lecture(1).pdf
page: 65
scale: 0.6
dpi: 2
text: true
```

# Big-Omega Notation
- describer LOWER BOUND
# Big-Theta Notation
- Big-Theta describes a tight bound on a function 