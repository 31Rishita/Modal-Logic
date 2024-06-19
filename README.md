# Model Logic
Definition:-
Modal logic extends classical logic by incorporating modalities such as necessity (□) and possibility (◇) to reason about concepts like necessity, possibility, obligation, and knowledge within different possible worlds or states of affairs. It formalizes how statements are true or false not only in the actual world but also across possible worlds.

Example:
```Prolog
In modal logic, we might express:
□(p → q)
```
This formula indicates that it is necessarily true that if proposition p holds, then proposition q must also hold. This modal statement asserts that in all possible worlds (or states of affairs), if p is true, then q cannot be false.
# Steps to convert to CNF
1. Eliminate Necessity (□):
   * Replace □φ with φ. In propositional logic, we do not distinguish between necessary and contingent truths.
2. Eliminate Possibility (◇):
   * Replace ◇φ with φ. Similarly, in propositional logic, all statements are treated as either true or false without considering possibility.
3. Interpret in a Single World:
   * Modal logic considers truth across multiple possible worlds, each representing a different state of affairs. In propositional logic, interpret the formula as true or false within a single, actual world context.
4. Resolve Modal Operators:
   * Apply the semantics of modal logic to interpret the formula under the assumption of one fixed world state. For instance, □φ would mean that φ holds in all accessible worlds from the current one.
### Modal Operators
    1. Necessity Operator (□):
       * □p (necessarily p), which means p is true in all accessible worlds.
    2. Possibility Operator (◇):
       * ◇p (possibly p), which means p is true in at least one accessible world.
# Usage
Load the module as usual in Prolog and then try the following.

1. Checking Atomic Propositions:
* Check if proposition p is true in world 1:
```Prolog
eval(1, p).
```
* Check if proposition q is true in world 2:
```Prolog
eval(2, q).
```

2. Negation:
* Check if not p is true in world 3:
```Prolog
eval(3, not(p)).
```
* Check if not q is true in world 1:
```Prolog
eval(1, not(q)).
```

3. Conjunction:
* Check if (p ∧ q) is true in world 2:
```Prolog
eval(2, and(p, q)).
```
* Check if (p ∧ q) is true in world 3:
```Prolog
eval(3, and(p, q)).
```

4. Disjunction:
* Check if (p ∨ q) is true in world 1:
```Prolog
eval(1, or(p, q)).
```
* Check if (p ∨ q) is true in world 3:
```Prolog
eval(3, or(p, q)).
```

5. Implication:
* Check if (p → q) is true in world 1:
* ```Prolog
eval(1, implies(p, q)).
```
* Check if (p → q) is true in world 2:
```Prolog
eval(2, implies(p, q)).
```

6. Necessity (Box):
* Check if it is necessarily true that p holds in world 1:
```Prolog
eval(1, box(p)).
```
* Check if it is necessarily true that p holds in world 2:
```Prolog
eval(2, box(p)).
```

7. Possibility (Diamond):
* Check if it is possibly true that q holds in world 1:
```Prolog
eval(1, diamond(q)).
```
* Check if it is possibly true that q holds in world 3:
```Prolog
eval(3, diamond(q)).
```
