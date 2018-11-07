#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(provide clap kick cowbell stick cymbal cymbal-j cymbal-r
         hh hh-r hh2 snare-j snare tom-hi tom-lo tom-mid
         hh2-q
         808-clave 808-clap 808-conga 808-cowbell 808-cymbal
         808-shaker 808-snare1 808-snare2 808-tom-hi
         808-tom-low 808-tom-mid
         808-hh-c 808-hh-o 808-hh-p 808-kick 808-kick-l)

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


(define (808-clave)    (play "mp3/808_Clave.mp3"))
(define (808-clap)     (play "mp3/808_Clap.mp3"))

(define (808-conga)    (play "mp3/808_Conga.mp3"))
(define (808-cowbell)  (play "mp3/808_Cowbell.mp3"))
(define (808-cymbal)   (play "mp3/808_Cymbal.mp3"))
(define (808-shaker)   (play "mp3/808_Shaker.mp3"))

(define (808-snare1)   (play "mp3/808_Snare_1.mp3"))
(define (808-snare2)   (play "mp3/808_Snare_2.mp3"))

(define (808-tom-hi)   (play "mp3/808_Tom_Hi.mp3"))
(define (808-tom-low)  (play "mp3/808_Tom_Low.mp3"))
(define (808-tom-mid)  (play "mp3/808_Tom_Mid.mp3"))

(define (808-hh-c)     (play "mp3/808_Hat_Closed.mp3"))
(define (808-hh-o)     (play "mp3/808_Hat_Open.mp3"))
(define (808-hh-p)     (play "mp3/808_Hat_Pedal.mp3"))

(define (808-kick)     (play "mp3/808_Kick_Short.mp3"))
(define (808-kick-l)   (play "mp3/808_Kick_Long.mp3"))

(define (play sample)
  ;; Async play of sample
  (play-sound sample true))
