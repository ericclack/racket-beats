# racket-beats
Is it possible to make a drum machine in Racket?
Might this be a good way to learn a bit of Racket (and therefore Scheme)?

Find out how to [Get Started](https://github.com/ericclack/racket-beats/wiki), or take a look at the files in the root directory to see and hear some drum patterns. 

The samples you can use are defined in [lib/samples.rkt](https://github.com/ericclack/racket-beats/blob/master/lib/samples.rkt) and are from (and Copyright) Hydrogen drum machine.

I should point out that I'm not a talented drummer! 

# Example

```
#lang racket
(require "lib/beats.rkt")

(bpm 120)

(define (pattern1)
  (clap)(hh) ;; Clap and High Hat played together
  (-1-) ;; wait a beat
  (clap)
  (-1-) ;; wait a beat
  (clap)
  (-1-) ;; wait a beat
  ;; rest
  (-1-))

(4-times
 (pattern1))
```

# To Do

* Change volume of samples
* Play more than 2 tracks in parallel (drums, bass) etc

## Done

* Play 2 tracks (drums, bass) simultaneously 
* Set BPM with `(bpm 180)`
* Add generic repeat n-times, where n is a natural number

# 

You can see the evolution of the library in the files `proto/evo1.rkt` to `proto/evo4.rkt`. 
