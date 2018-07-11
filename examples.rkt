#lang racket

;; First steps
(* 1 1)
(- 8 (* 2 3))
(sqrt 9)
(list 1 2 3 4 5)
(list 'hello 'world)
'(hello world)

;; Chapter 1: Guess my number
;;

(define lower 1)
(define upper 100)


(define (guess)
  (quotient (+ lower upper) 2))


(define (smaller)
  (set! upper (max lower (sub1 (guess))))
  (guess))

(define (bigger)
  (set! lower (min upper (add1 (guess))))
  (guess))

;; Number should be 33
(define (guess-my-number n m)
  (set! lower (min n m))
  (set! upper (max n m))
  (guess))

(guess-my-number 1 100)
(smaller)
(bigger)
(smaller)
(bigger)
(smaller)
(bigger)

;; Parentheses are interchangable in racket
[define {foo}
  (* 10 20)]

(define x 0)
;; S-expression comments are so cool
(set! x #;(min 1 20) (max 20 100))

;; yay imaginary numbers
(sqrt -1)


;; structs
(struct non-transparent (p q r))

(non-transparent 1 2 3)

(struct example (x y z) #:transparent)

(example 2 3 4)

;;; FAIL (zero? "hello world")

;; conditionals

(if (zero? 0) 'zero 'not-zero)

(cond [(zero? 1) 'zero]
      [else 'not-zero])

;; recursion

(define (my-length a-list)
  (if (empty? a-list)
      0
      (add1 (my-length (rest a-list)))))

(my-length '(1 2 3))

(struct point (x y))
