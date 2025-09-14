# Lecture 2
# Agent design 
- Gatherings information about an environment, and takes actions autonomously based on that information
##### Action space(A):
- The set of all possible actions the agent can perform
##### Precept Space(P): 
- The set of all possible things the agent can perceive
##### State space(S):
- The Set of all possible configurations of the world the agent is operating in
##### World Dynamics / Transition Function(T : S X A -> S'):
- specifies how the world changes when a agent performs actions
##### Perception Function
# Search problems
- agent design problem is to find a mapping from sequences of precepts to action (P -> A) that maximises the utility function
- gives x sequences of precepts or stimuli has seen so far, what should I agent do next
### when to apply search methods
- Sensing uncertainty: **fully observable**
- Effect uncertainty: **deterministic**
- Number of agents: **single agent**

- THEN the agent only needs to consider:
	- Action Space
	- State Space
	- Transition Function
	- Utility Function
#### Blind Search:
	info to "guess" cost 
#### Informed Search:
	 guess the cost of moving, from current node 
### Formulating a problem
- find a sequence of actions to move from initial state to goal state, such that utility is maximised 

```slide-note
file: COMP3702_Search.pdf 
page: 21
scale: 0.7
dpi: 2
text: true
```

### State graph representation
- represent the problem concretely
- good way of thinking about the problem
- may or may not explicitly represent the state graph




# formulating a search problem

# Blind search methods

# Edge costs

# informed search

# Greedy best-first search

# A* search


