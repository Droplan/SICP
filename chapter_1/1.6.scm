;; Упражнение 1.6. Если определить if как функцию через cond и переписать процедуру sqrt-iter, что получитсяч при ипользовании этой процедуры

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
	  guess
	  (sqrt-iter (improve guess x)
		     x)))

;; Так как new-if это функция, то при аппликативном порядке вычисления функия будет выполнять бесконечную рекурсию
