# racket-beats
Is it possible to make a drum machine in Racket?
Might this be a good way to learn a bit of Scheme?

You can see the evolution of the library in the files `simple1.rkt` to `simple4.rkt`

Then take a look at the other files to see and hear some drum patterns.

The samples you can use are defined in `lib/samples.rkt` and are from (and Copyright) Hydrogen drum machine.

# Example

```
#lang racket

;; racket-beats: a drum machine experiment in Racket
;; Copyright Eric Clack, 2018
;; This program is distributed under the terms of the GNU GPL

(require "lib/beats.rkt" "lib/samples.rkt")

(bpm 120)

(define (pattern1)
  (clap)(hh) ;; Clap and High Hat played together
  (-1-) ;; wait a beat
  (clap)
  (-1-) ;; wait a beat
  (clap)
  (-1-) ;; wait a beat
  )

(4-times
 (pattern1)
)
```

# To Do


Almost everything! In no particular order yet...

* BPM - is the maths right especially with pause functions?
* Add generic n-times, where n is a natural number
* Change volume of samples
* Play multiple tracks (drums, bass) etc

# Done

* Can set BPM with `(bpm 180)`