#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "beats.rkt" "samples.rkt")

(bpm 125)

(define (pattern1)
  (kick)      (cymbal)
  (-1-)

  (snare-j)   (cymbal)
  (-1-)

  (kick)      (cymbal)
  (-1-)

  (snare-j)   (cymbal-r)
  (-1/5-)
  (-1/5-)     (cymbal-r)
  (-1/5-)     (cymbal)
  (-1/5-)     
  (-1/5-)
)

(4-times
 (pattern1)
 ;(pattern2)

 )