#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "beats.rkt" "samples.rkt")

(define (heart-beats)
  (4-times

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

(bpm 240)
(heart-beats)
(bpm 250)
(heart-beats)
(bpm 260)
(heart-beats)
(bpm 270)
(heart-beats)
