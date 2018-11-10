#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require racket/gui/base)

(define (clap)
  (play-sound "mp3/clap_Dry_c.mp3" true))

(define (kick)
  (play-sound "mp3/kick_Dry_b.mp3" true))



(define (song)
  (clap)(kick)
  (sleep .25)
  (kick)
  (sleep .25)
  (clap)
  (sleep .25)
  (song))


(song)


