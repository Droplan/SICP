
(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

;; Разница между предполагаемым и предыдущим предполагаемым значением сравнивается с долей предыдущего предполагамого значения. не знаю, какую именно долю установить, поставил такую, при которой корень из 9 равняется 3.0
(define (good-enough? prevguess guess)
  (< (abs (- prevguess guess)) (* 0.00001 prevguess)))

(define (sqrt-iter prevguess guess x)
  (if (good-enough? prevguess guess)
      guess
      (sqrt-iter guess 
		 (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 0.0 1.0 x))

(sqrt 9)
