#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "lib/beats.rkt" "lib/samples.rkt")

(define (hh-pattern)
  (3-times
   (-1/2-)
   (hh2)
   (-1/2-)
   )
  (-1-))

(define (drum-pattern)
  (kick)
  (-1-)

  (kick)
  (-1-)

  (kick)
  (-1-)

  (snare)(kick)
  (-1/3-)
  (snare)
  (-1/3-)
  (snare)
  (-1/3-)
)

(bpm 150)

;; count in
(4-times
 (hh2)
 (-1-))

;; main pattern
(4-times
 (parallel (hh-pattern) (drum-pattern))
)