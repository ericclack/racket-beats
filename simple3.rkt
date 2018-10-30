#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require racket/gui/base)

(define-syntax-rule (2-times body ...)
  (begin body ... body ...))

(define-syntax-rule (4-times body ...)
  (begin body ... body ... body ... body ... body ... body ...))


(define (---)
  (sleep .25))

(define (clap)
  (play-sound "mp3/clap_Dry_c.mp3" true))

(define (kick)
  (play-sound "mp3/kick_Dry_b.mp3" true))

(define (cymbal)
  (play-sound "mp3/cra_Jazz.mp3" true))

  

(define (intro)
  (2-times
   (clap)(kick)
   (---)
   (cymbal)
   (---)
   (clap)
   (---)
   (clap)
   (---)
   ))

(define (body)
  (4-times
   (clap)
   (---)
   (kick)
   (---)))

(define (outro)
  (4-times
   (kick)
   (---)
   (kick)
   (---)
   (kick)
   (---)))

(define (song)
  (intro)
  (body)
  (outro))

(song)
