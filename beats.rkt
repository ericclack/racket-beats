#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(provide bpm 2-times 4-times 8-times
         do-times
         -1- -1/2- -1/4- -1/8-
         -1/3- -2/3-)

(define bpm
  (make-parameter 120))

(define-syntax-rule (2-times body ...)
  (begin body ... body ...))

(define-syntax-rule (4-times body ...)
  (do-times 4 body ...))

(define-syntax-rule (8-times body ...)
  (do-times 8 body ...))

(define-syntax-rule (do-times n body ...)
  (for ([i (in-range n)])
       body ...))

(define (-pause- fraction)
  (sleep (* fraction (/ 60 (bpm)))))

(define (-1-)
  ;; Full beat pause
  (sleep (/ 60 (bpm))))

(define (-1/2-)
  ;; Half beat pause
  (-pause- 1/2))
;;  (sleep (/ 60 (* 2 (bpm)))))

(define (-1/4-)
  ;; Quarter beat pause
  (sleep (/ 60 (* 4 (bpm)))))

(define (-1/8-)
  (sleep (/ 60 (* 8 (bpm)))))

(define (-1/3-)
  ;; third beat pause
  (sleep (/ 60 (* 3 (bpm)))))

(define (-2/3-)
  ;; 2/3 beat pause
  (sleep (/ 60 (/ 2 (* 3 (bpm))))))

