#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(provide clap kick cowbell stick cymbal cymbal-j cymbal-r
         hh hh-r hh2 snare-j snare tom-hi tom-lo tom-mid
         hh2-q)

(require racket/gui/base)

(define (clap)         (play "mp3/clap_Dry_c.mp3"))
(define (kick)         (play "mp3/kick_Dry_b.mp3"))
(define (cowbell)      (play "mp3/misc_Cowbell.mp3"))
(define (stick)        (play "mp3/stick_Woody.mp3"))

(define (cymbal)       (play "mp3/cym_Jazz.mp3"))
(define (cymbal-j)     (play "mp3/cra_Jazz.mp3"))
(define (cymbal-r)     (play "mp3/cym_Rock_b.mp3"))
(define (hh)           (play "mp3/hhc_Dry_a.mp3"))
(define (hh-r)         (play "mp3/hhc_Rock_b.mp3"))
(define (hh2)          (play "mp3/hhp_Dry_a.mp3"))
(define (hh2-q)        (play "mp3/hhp_Dry_a-quiet.mp3"))

(define (snare-j)      (play "mp3/sn_Jazz_c.mp3"))
(define (snare)        (play "mp3/sn_Wet_b.mp3"))

(define (tom-hi)       (play "mp3/tom_Rock_hi.mp3"))
(define (tom-lo)       (play "mp3/tom_Rock_lo.mp3"))
(define (tom-mid)      (play "mp3/tom_Rock_mid.mp3"))

(define (play sample)
  ;; Async play of sample
  (play-sound sample true))
