#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(provide ;clap kick cowbell stick cymbal cymbal-j cymbal-r
         ;hh hh-r hh2 snare-j snare tom-hi tom-lo tom-mid
         ;hh2-q
         ;808-clave 808-clap 808-conga 808-cowbell 808-cymbal
         ;808-shaker
         808-snare1 ;808-snare2 808-tom-hi
         ;808-tom-low 808-tom-mid
         ;808-hh-c 808-hh-o
         808-hh-p 808-kick 808-kick-l)

(require rsound)

(define-syntax-rule (define-sound name file)
  (begin
    ; Each sound has its sample and own stream
    (define sound (rs-read file))
    (define stream (make-pstream))
    (define (name . args)
      (apply play-sound stream sound args))))

;(define-sound clap "wav/clap_Dry_c.wav")
;(define-sound kick "wav/kick_Dry_b.wav")
;(define-sound cowbell "wav/misc_Cowbell.wav")
;(define-sound stick "wav/stick_Woody.wav")
;(define-sound cymbal "wav/cym_Jazz.wav")
;(define-sound cymbal-j "wav/cra_Jazz.wav")
;(define-sound cymbal-r "wav/cym_Rock_b.wav")
;(define-sound hh "wav/hhc_Dry_a.wav")
;(define-sound hh-r "wav/hhc_Rock_b.wav")
;(define-sound hh2 "wav/hhp_Dry_a.wav")
;(define-sound hh2-q "wav/hhp_Dry_a-quiet.wav")
;(define-sound snare-j "wav/sn_Jazz_c.wav")
;(define-sound snare "wav/sn_Wet_b.wav")
;(define-sound tom-hi "wav/tom_Rock_hi.wav")
;(define-sound tom-lo "wav/tom_Rock_lo.wav")

;(define-sound tom-mid "wav/tom_Rock_mid.wav")
;(define-sound 808-clave "wav/808_Clave.wav")
;(define-sound 808-clap "wav/808_Clap.wav")
;(define-sound 808-conga "wav/808_Conga.wav")
;(define-sound 808-cowbell "wav/808_Cowbell.wav")
;(define-sound 808-cymbal "wav/808_Cymbal.wav")
;(define-sound 808-shaker "wav/808_Shaker.wav")
(define-sound 808-snare1 "wav/808_Snare_1.wav")
;(define-sound 808-snare2 "wav/808_Snare_2.wav")
;(define-sound 808-tom-hi "wav/808_Tom_Hi.wav")
;(define-sound 808-tom-low "wav/808_Tom_Low.wav")
;(define-sound 808-tom-mid "wav/808_Tom_Mid.wav")
;(define-sound 808-hh-c "wav/808_Hat_Closed.wav")
;(define-sound 808-hh-o "wav/808_Hat_Open.wav")
(define-sound 808-hh-p "wav/808_Hat_Pedal.wav")
(define-sound 808-kick "wav/808_Kick_Short.wav")
(define-sound 808-kick-l "wav/808_Kick_Long.wav")

(define (play-sound stream sound . args)
  ;; args is an optional list of (volume) ... more to come
  ;; volume is 0-1
    (if (> (length args) 0)
        (pstream-play stream (rs-scale (min 1 (first args))
                                             sound))
        (pstream-play stream sound)))

