#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

;; Beats inspired by A Tribe Called Quest, Luck of Lucien
;; and Billy Brooks, Fourty Days
;; https://www.whosampled.com/sample/2185/A-Tribe-Called-Quest-Lucien-Revolucien-Luck-of-Lucien-Billy-Brooks-Fourty-Days/

(require "lib/beats.rkt")

(bpm 180)

(define (pattern1)
  (808-hh-p)
  (808-kick)
  (-1-)

  (808-hh-p)
  (808-kick)
  (-1-)

  (808-hh-p)
  (808-kick)
  (-1-)

  (808-hh-p)
  (-1-)
)

(define (pattern2)
  (808-hh-p)
  (808-kick)
  (-1-)

  (808-hh-p)
  (808-kick)
  (-1-)

  (808-hh-p)
  (808-kick)
  (-1-)

  (808-hh-p)(808-snare1)
  (-1/3-)
  (-1/3-)
  (808-kick)
  (-1/3-)
)

(define (pattern3)
  (808-hh-p)
  (808-kick)
  (-1-)

  (808-hh-p)
  (-1-)

  (808-hh-p)
  (-1-)

  (808-hh-p)(808-snare1)
  (-1/3-)
  (-1/3-)
  
  (808-kick)
  (-1/3-)
)



(pattern1)
(4-times 
 (pattern3)
 (pattern2)
)
;(pattern1)