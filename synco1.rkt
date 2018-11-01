#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "beats.rkt" "samples.rkt")

(bpm 125)

(define (pattern1)
  (808-hh-p) (808-kick)
  (-1/2-)
   
  (808-hh-p)
  (-1/2-)

  (808-hh-p) (808-kick)
  (-1/2-)

  (808-hh-p)
  (-1/2-)

  (808-hh-p)
  (-1/4-)
              (808-kick)
  (-1/4-)  

  (808-hh-p)
  (-1/2-)

  (808-hh-p) (808-kick)
  (-1/2-)

  (808-hh-p)
  (-1/2-)
)

(define (pattern2)

  (808-hh-p) (808-kick)
  (-1/2-)
   
  (808-hh-p)
  (-1/2-)

  (808-hh-p) (808-kick)
  (-1/2-)

  (808-hh-p)
  (-1/2-)

  (808-hh-p)
  (-1/4-)
              (808-kick)
  (-1/8-)  
                          (kick)
  (-1/16-)  

  (808-hh-p)
  (-1/2-)

  (808-hh-p) (808-kick)
  (-1/2-)

  (808-hh-p)
  (-1/2-)
)

(4-times
 (pattern1)
 (pattern2))