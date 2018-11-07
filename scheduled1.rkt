#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

;; Example code -- won't run

(require racket/gui/base)

(define (clap)
  (play-sound "mp3/clap_Dry_c.mp3" true))

(define (kick)
  (play-sound "mp3/kick_Dry_b.mp3" true))


(bpm 90)
(time-sig 4/4)

(every-beat (clap))
(every-half (kick))
;(off-beat (kick))

(play)
