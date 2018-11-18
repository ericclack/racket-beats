#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "lib/beats.rkt")

(bpm 125)

(define (pattern1)
  (kick)      (cymbal)
  (-1-)

  (snare-j)   (cymbal)
  (-1-)

  (kick)      (cymbal)
  (-1-)

  (snare-j)   (cymbal-r)
  (-1/3-)
  (-1/3-)     (cymbal)
  (-1/3-)     
)

(4-times
 (pattern1))