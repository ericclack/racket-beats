#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "beats.rkt" "samples.rkt")

(bpm 125)

(define (pattern1)
  (kick)
  (-1-)
  (snare-j)
  (-1-)
  (kick)
  (-1-)
  (snare-j)
  (-1-)
)

(define (pattern2)
  (kick)      (cymbal)
  (-1-)
  
  (snare-j)   (cymbal)
  (-1/3-)
  (snare-j)
  (-1/3-)
  (snare-j)   
  (-1/3-)  
  
  (kick)      (cymbal)
  (-1-)
  
  (snare-j)   (cymbal-r)
  (-1/3-)
              (cymbal-r)
  (-1/3-)
  (snare-j)   (cymbal)
  (-1/3-)  
)

(4-times
 (pattern1)
 (pattern2)

 )