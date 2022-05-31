(DEFINE (append1 lis1 lis2)
 (COND
  ((NULL? lis1) lis2)
  (ELSE (CONS (CAR lis1)
       (append1 (CDR lis1) lis2)))
))
(append1 '(1 2 3) '(4 5 6))
