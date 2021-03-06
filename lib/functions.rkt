#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(provide bpm
         2-times 3-times 4-times 8-times repeat
         parallel
         -pause-
         -1- -1/2- -1/4- -1/8- -1/16- -1/32-
         -1/3- -2/3-
         -1/5-)

(define bpm
  (make-parameter 120))

;; Repetition -------------------------

(define-syntax-rule (2-times body ...)
  (begin body ... body ...))

(define-syntax-rule (3-times body ...)
  (repeat 3 body ...))

(define-syntax-rule (4-times body ...)
  (repeat 4 body ...))

(define-syntax-rule (8-times body ...)
  (repeat 8 body ...))

(define-syntax-rule (repeat n body ...)
  (for ([i (in-range n)])
       body ...))

;; Scheduling --------------------------

(define-syntax-rule (parallel fn1 fn2)
  ;; Assume both fn1 and fn2 take the same time
  (begin
    (thread (thunk fn1))
    fn2))

;; Pauses ------------------------------

(define (-1-)
  ;; Full beat pause
  (sleep (/ 60 (bpm))))

(define (-1/2-)
  ;; Half beat pause
  (-pause- 1/2))

(define (-1/4-)    (-pause- 1/4))
(define (-1/8-)    (-pause- 1/8))
(define (-1/16-)   (-pause- 1/16))
(define (-1/32-)   (-pause- 1/32))

(define (-1/3-)    (-pause- 1/3))
(define (-2/3-)    (-pause- 2/3))

(define (-1/5-)    (-pause- 1/5))

(define (-pause- fraction)
  (sleep (* fraction (/ 60 (bpm)))))
