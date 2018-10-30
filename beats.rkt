#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(provide bpm 2-times 4-times 8-times -.- -..- -....-)

(define bpm
  (make-parameter 120))

(define-syntax-rule (2-times body ...)
  (begin body ... body ...))

(define-syntax-rule (4-times body ...)
  (for ([i (in-range 4)])
            body ...))

(define-syntax-rule (8-times body ...)
  (for ([i (in-range 8)])
            body ...))

(define (-....-)
  ;; Full beat pause
  (sleep (/ 60 (bpm))))

(define (-..-)
  ;; Half beat pause
  (sleep (/ 60 (* 2 (bpm)))))

(define (-.-)
  ;; Quarter beat pause
  (sleep (/ 60 (* 4 (bpm)))))