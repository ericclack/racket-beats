#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "lib/beats.rkt" "lib/samples.rkt")

(bpm 120)

(define (pattern1)
  (clap)(hh) ;; Clap and High Hat played together
  (-1-) ;; wait a beat
  (clap)
  (-1-) ;; wait a beat
  (clap)
  (-1-) ;; wait a beat
  )

(4-times
 (pattern1)
)