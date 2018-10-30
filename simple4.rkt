#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "beats.rkt" "samples.rkt")

(bpm 90)

(define (pre-intro)
  (8-times
   (stick)
   (-.-)))

(define (intro)
  (4-times
   (stick)
   (-..-)
   (cymbal)
   (-..-)
   (clap)(stick)
   (-..-)
   (cowbell)
   (-..-)
   ))

(define (body)
  (4-times
   (clap)
   (-..-)
   (kick)
   (-.-)
   (kick) (cowbell)
   (-.-)
   (cowbell)
   (-.-)(-.-)))

(define (outro)
  (4-times
   (kick)
   (-..-)))

(define (song)
  (pre-intro)
  (intro)
  (body)
  (outro))

(song)
