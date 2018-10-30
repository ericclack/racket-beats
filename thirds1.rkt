#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

;; Mix of half beats and third beats

(require "beats.rkt" "samples.rkt")

(bpm 160)

(define (pattern1)
  (4-times

   (hh2-q)
   (-..-)
   (hh2-q)
   (-..-)  

   ;;--------------

   (hh2-q)
   (-..-)
   (hh2-q)
   (-..-)

   ;;--------------

   (hh2-q)
   (-3-)
   (hh2-q)
   (-3-)
   (hh2-q)
   (-3-)

   ;;--------------

   (hh2-q)
   (-..-)
   (hh2-q)
   (-..-)

   )
)


(pattern1)
