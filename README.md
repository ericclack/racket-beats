# racket-beats
Is it possible to make a drum machine in Racket?
Might this be a good way to learn a bit of Scheme?

You can see the evolution of the library in the files `proto/evo1.rkt` to `proto/evo4.rkt`. Take a look at the other files to see and hear some drum patterns. Find out how to [Get Started](https://github.com/ericclack/racket-beats/wiki).

The samples you can use are defined in `lib/samples.rkt` and are from (and Copyright) Hydrogen drum machine.

# Example

```
#lang racket
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
* Change volume of samples
* Play more than 2 tracks in parallel (drums, bass) etc

# Done

* Play 2 tracks (drums, bass) etc
* Can set BPM with `(bpm 180)`
* Add generic n-times, where n is a natural number
