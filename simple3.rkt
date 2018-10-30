#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require racket/gui/base)

(define-syntax-rule (2-times body ...)
  (begin body ... body ...))

(define (wait)
  (sleep .25))

(define (clap)
  (play-sound "mp3/clap_Dry_c.mp3" true))

(define (kick)
  (play-sound "mp3/kick_Dry_b.mp3" true))

  

(define (intro)
  (2-times
   (clap)(kick)
     (wait)
   (kick)
     (wait)
   (clap)
     (wait)
   (clap)
     (wait)
   ))

(define (body)
  (2-times
   (clap)
   (sleep .25)
   (kick)
   (sleep .25)))

(define (song)
  (intro)
  (body))

(song)


