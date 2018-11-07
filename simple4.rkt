#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "lib/beats.rkt" "lib/samples.rkt")

(bpm 90)

(define (pre-intro)
  (4-times
   (stick)
   (-1/2-)))

(define (intro)
  (4-times
   (stick)
   (-1/2-)
   (cymbal)
   (-1/2-)
   (clap)(stick)
   (-1/2-)
   (cowbell)
   (-1/2-)
   ))

(define (body)
  (4-times
   (clap)
   (-1/2-)
   (kick)
   (-1/4-)
   (kick) (cowbell)
   (-1/4-)
   (cowbell)
   (-1/2-)))

(define (outro)
  (4-times
   (kick)
   (-1-)))

(define (song)
  (pre-intro)
  (intro)
  (body)
  (outro))

(song)
