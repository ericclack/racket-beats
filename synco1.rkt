#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "beats.rkt" "samples.rkt")

(bpm 120)

(define (song)
  (4-times

   (hh2-q)
   (-.-)
   (-.-)
   (hh2-q)
   (-.-)
   (-.-)   

   ;;--------------

   (hh2-q)
   (-.-)
   (-.-)
   (hh2-q)
   (-.-)
   (-.-)

   ;;--------------

   (hh2-q)
   (-.-)
   (-.-)
   (hh2-q)
   (-.-)
   (hh)
   (-.-)

   ;;--------------

   (hh2-q)
   (-.-)
   (-.-)
   (hh2-q)
   (-.-)
   (-.-)

   )
)

(song)
