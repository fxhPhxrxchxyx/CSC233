(append '(3) '(hi 4.5 (boss)))

(define newLis
  (append '(3) '(hi 4.5 (boss)))
  )
(cdr newLis)

(define (myReverse lis)
  (cond
    ( (null? lis) '())
    (else
     (append (myReverse (cdr lis))(cons (car lis) '()))
             )
     )
    )
  (myReverse (cdr newLis))
  (myReverse '(1 2 3))
  (myReverse '(hi 4.5 (boss)))