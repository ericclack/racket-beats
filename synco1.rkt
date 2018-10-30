#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "beats.rkt" "samples.rkt")

(bpm 90)

(define (intro)
  (4-times
   (stick)
   (-..-)
   ))

(define (body)
  (4-times

   (kick) (clap)

   (-.-)

                 (hh)
   
   (-.-)

   (kick) (cowbell) 

   (-.-)

          (cowbell) (hh)

   (-.-)

   
  )
)

(define (song)
  (intro)
  (body)
)

(song)
