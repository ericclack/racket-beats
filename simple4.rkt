#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "beats.rkt" "samples.rkt")

(define (intro)
  (2-times
   (stick)
   (---)
   (cymbal)
   (---)
   (clap)
   (---)
   (clap)
   (---)
   ))

(define (body)
  (4-times
   (clap)
   (---)
   (kick)
   (---)))

(define (outro)
  (4-times
   (kick)
   (---)
   (---)
   (---)))

(define (song)
  (intro)
  (body)
  (outro))

(song)
