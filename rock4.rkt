#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "lib/beats.rkt" "lib/samples.rkt")

(bpm 140)

(define (pattern1)
  (808-kick)
  (-1/3-)
  (808-kick)
  (-1/3-)
  (-1/3-)

  (808-kick)
  (-1/3-)
  (cymbal)
  (-1/3-)
  (-1/3-)
  
  (-1-)
)

(define (pattern2)
  (808-kick)
  (-1/3-)
  (808-kick)
  (-1/3-)
  (-1/3-)

  (808-kick)
  (-1/3-)
  (cymbal)
  (-1/3-)
  (-1/3-)
  
  (cymbal)
  (-1-)
)

(define (pattern3)
  (808-kick)
  (-1/3-)
  (-1/3-)
  (808-kick)
  (-1/3-)

  (-1/3-)
  (808-kick)
  (-1/3-)
  (-1/3-)
  
  (hh2)
  (-1/3-)
  (-1/3-)
  (-1/3-)
  
)


(4-times
 (pattern1)
 (pattern2)
)

(pattern3)

(4-times
 (pattern1)
 (pattern2)
)
