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
  (-1/3-)     (cymbal-j)
  (-1/3-)
)

(define (pattern2)
  (4-times
   (kick)      (cymbal)
   (-1/3-)
   (kick)      
   (-1/3-)
   (kick)      
   (-1/3-)
  )
)  


(2-times
 (pattern1))

(pattern2)

(4-times
 (pattern1))
