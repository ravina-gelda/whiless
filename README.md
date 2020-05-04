# whiless
### Programming Assignment 4 - The WHILE-SS language: An Imperative Language
 ## Problem statement ##



While supports arithmetic expressions, boolean expressions and commands.
AST is created with grammar having precedence for the operations as: ':=' > '=' > '>' > V > * > -> + > NUM
and storing states while parsing commands.Use big-step evaluation for AExps and BExps; only Command evaluation should be small-step.


## My implemenattion

I have implemented a LL(1) predictive parser for WHILE language. Parser is 
* Factors: LPAREN Expression RPAREN
* Term:  Factor TIMES Term
* Expression: Expression PLUS Term
- So inorder to parse an expression, I want to parse a term first, in oredr to parse term, i want to parse factor first. THis is a recursive process. Till factor=NUM.
### Prerequisites


Need Python3 installed
* There were some erros that I faced using make file:
   - pip needs to be installed
   - python3 >=3.6
   - pyinstaller version 3.6
   - Setting permission by **'chmod 777'** for all the files :
       - bin/bats
       - libexec/bats-core/bats
       - libexec/bats-core/bats-exec-suite
       - libexec/bats-core/bats-exec-test
       - libexec/bats-core/bats-format-tap-stream
       - libexec/bats-core/bats-preprocess
    
    

### Testing
* After you met are done with the **prerequisites**
* Test the code in terminal with **test.sh**, make sure that you are in the same directory as **test.sh**


## Acknowledgments

* https://www.youtube.com/watch?v=TastAWp8eIE
* https://www.youtube.com/watch?v=E-iL1Q4ys3k&list=PL0300FE43396456C1&index=2
* http://www.cs.ecu.edu/karl/5220/spr16/Notes/