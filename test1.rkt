#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "lib/beats.rkt" "lib/samples.rkt")

(define (pattern0)
  (kick)
  (-1/2-)
  (808-hh-c)
  (-1/2-)

  (kick)
  (-1/2-)
  (808-hh-c)
  (-1/2-)

  (kick)
  (-1/2-)
  (808-hh-c)
  (-1/2-)

  (snare)(kick)
  (-1/2-)
  (808-hh-c)
  (-1/2-)
)

(define (pattern1)
  (kick)
  (-1/2-)
  (808-hh-c)
  (-1/2-)

  (kick)
  (-1/2-)
  (808-hh-c)
  (-1/2-)

  (kick)
  (-1/2-)
  (808-hh-c)
  (-1/2-)

  (snare)(kick)
  (-1/3-)
  (snare)
  (-1/3-)
  (snare)
  (-1/3-)
)


(bpm 180)
(4-times
 (pattern0)
 (pattern1)
)