#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "beats.rkt" "samples.rkt")

(bpm 240)

(define (pattern1)
  (8-times

   (808-kick) (808-hh-p)
   (-..-)
   (-..-)  

   ;;--------------

   (808-kick) (808-hh-p) 
   (-..-)
   (-..-)

   ;;--------------

   (808-hh-p)
   (-..-)
   (-..-)

   ;;--------------

   (808-hh-p)
   (-..-)
   (-..-)

   )
)

(pattern1)