#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

;; Beats inspired by A Tribe Called Quest, Luck of Lucien
;; and Billy Brooks, Fourty Days
;; https://www.whosampled.com/sample/2185/A-Tribe-Called-Quest-Lucien-Revolucien-Luck-of-Lucien-Billy-Brooks-Fourty-Days/

(require "lib/beats.rkt" "lib/samples.rkt")

(bpm 140)

(define (pattern1)
  (kick)
  (-1-)
  (clap)
  (-1-)
  (kick)
  (-1-)
  (clap)
  (-1-)
  )

(define (claps)
  (-1-)
  (clap)
  (-1-)
  (-1-)
  (clap)
  (-1-)
  )
  
(define (pattern2)
  (kick)
  (-1/4-)
  (kick)
  (-1/4-)
  (-1/4-)
  (-1/4-)
  
  (clap)
  (-1-)

  (kick)
  (-1/4-)
  (-1/4-)
  (-1/4-)
  (kick)
  (-1/4-)

  (clap)
  (-1-)
  )


(define (ticks)
  (repeat 16
   (808-hh-c)
   (-1/4-)))

(4-times
 (parallel (pattern1) (ticks))
 (parallel (pattern2) (ticks))
 )

(parallel (claps) (ticks))
