#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "lib/beats.rkt")

(bpm 140)

(define (pattern1)
  (808-clap)(808-cowbell) ;; Clap and cowbell played together
  (-1-) ;; wait a beat
  (808-clap)
  (-1-) ;; wait a beat
  (808-clap)
  (-1-) ;; wait a beat
  ;; rest
  (-1-)
  )

(4-times
 (pattern1)
)