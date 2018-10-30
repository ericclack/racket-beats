#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(provide stick clap kick cymbal)

(require racket/gui/base)

(define (clap)
  (play-sound "mp3/clap_Dry_c.mp3" true))

(define (kick)
  (play-sound "mp3/kick_Dry_b.mp3" true))

(define (cymbal)
  (play-sound "mp3/cra_Jazz.mp3" true))

(define (stick)
  (play-sound "mp3/stick_Woody.mp3" true))
