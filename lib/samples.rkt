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

(require rsound)

(define (clap)         (p "wav/clap_Dry_c.wav"))
(define (kick)         (p "wav/kick_Dry_b.wav"))
(define (cowbell)      (p "wav/misc_Cowbell.wav"))
(define (stick)        (p "wav/stick_Woody.wav"))

(define (cymbal)       (p "wav/cym_Jazz.wav"))
(define (cymbal-j)     (p "wav/cra_Jazz.wav"))
(define (cymbal-r)     (p "wav/cym_Rock_b.wav"))
(define (hh)           (p "wav/hhc_Dry_a.wav"))
(define (hh-r)         (p "wav/hhc_Rock_b.wav"))
(define (hh2)          (p "wav/hhp_Dry_a.wav"))
(define (hh2-q)        (p "wav/hhp_Dry_a-quiet.wav"))

(define (snare-j)      (p "wav/sn_Jazz_c.wav"))
(define (snare)        (p "wav/sn_Wet_b.wav"))

(define (tom-hi)       (p "wav/tom_Rock_hi.wav"))
(define (tom-lo)       (p "wav/tom_Rock_lo.wav"))
(define (tom-mid)      (p "wav/tom_Rock_mid.wav"))


(define (808-clave)    (p "wav/808_Clave.wav"))
(define (808-clap)     (p "wav/808_Clap.wav"))

(define (808-conga)    (p "wav/808_Conga.wav"))
(define (808-cowbell)  (p "wav/808_Cowbell.wav"))
(define (808-cymbal)   (p "wav/808_Cymbal.wav"))
(define (808-shaker)   (p "wav/808_Shaker.wav"))

(define (808-snare1)   (p "wav/808_Snare_1.wav"))
(define (808-snare2)   (p "wav/808_Snare_2.wav"))

(define (808-tom-hi)   (p "wav/808_Tom_Hi.wav"))
(define (808-tom-low)  (p "wav/808_Tom_Low.wav"))
(define (808-tom-mid)  (p "wav/808_Tom_Mid.wav"))

(define (808-hh-c)     (p "wav/808_Hat_Closed.wav"))
(define (808-hh-o)     (p "wav/808_Hat_Open.wav"))
(define (808-hh-p)     (p "wav/808_Hat_Pedal.wav"))

(define (808-kick . args)     (apply p "wav/808_Kick_Short.wav" args))
(define (808-kick-l)   (p "wav/808_Kick_Long.wav"))

(define sound-stream (make-pstream))

(define (p wav-file . args)
  ;; args is an optional list of (volume) ... more to come
  ;; volume is 0-1
  (let ([sound (rs-read wav-file)])
    (if (> (length args) 0)
        (pstream-play sound-stream (rs-scale (min 1 (first args))
                                             sound))
        (pstream-play sound-stream sound))))
   