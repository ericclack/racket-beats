#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "beats.rkt" "samples.rkt")

(bpm 115)

(define (pattern1)
  (808-kick) (808-hh-p)
  (-1-)

  (808-hh-p)
  (-pause- 3/4)
  (808-kick)  
  (-1/4-)
  
  (808-kick)  (808-hh-p)
  (-1-)

              (808-hh-p)
  (-1-)
)

(define (pattern2)
  (808-kick)   (808-hh-p)
  (-1/2-)
  (808-kick)
  (-1/2-)

  (-1-)
  
               (808-hh-p)
  (-1/2-)
  (808-kick)
  (-1/4-)
  (808-kick)
  (-1/4-)

  (kick)   (808-hh-p)
  (-1-)
)

(2-times
 (pattern1))

(2-times
 (pattern2))