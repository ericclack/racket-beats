#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

;; Mix of half beats and third beats

(require "lib/beats.rkt")

(bpm 120)

(define (pattern1)
  (4-times

   (hh2-q)
   (-1/2-)
   (hh2-q)
   (-1/2-)  

   ;;--------------

   (hh2-q)
   (-1/2-)
   (-1/2-)

   ;;--------------

   (hh2-q)
   (-1/3-)
   (hh2-q)
   (-1/3-)
   (hh2-q)
   (-1/3-)

   ;;--------------

   (hh2-q)
   (-1/2-)
   (hh2-q)
   (-1/2-)

   )
)


(pattern1)
