(DEFINE (equalsimp lis1 lis2)
     (COND
      ((NULL? lis1) (NULL? lis2))
      ((NULL? lis2) '())
      ((EQ? (CAR lis1) (CAR lis2))
         (equalsimp(CDR lis1)(CDR lis2)))
    (ELSE '())))
(equalsimp '( aa bb 4) '( aa bb cc 4))
(equalsimp '( aa bb 4) '( aa bb 4))