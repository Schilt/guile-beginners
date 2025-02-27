(use-modules (srfi srfi-64))

;; -- Your Solution Here

;; -- Validation

(test-begin "simple-calculator")

(test-eqv "Starts at 0"
  0
  (get-result))

(test-eqv "Adds 5"
  5
  (begin
    (add! 5)
    (get-result)))

(test-eqv "Subtracts 3"
  2
  (begin
    (subtract! 3)
    (get-result)))

(test-eqv "Multiplies by 4"
  8
  (begin
    (multiply! 4)
    (get-result)))

(test-eqv "Divides by 2"
  4
  (begin
    (divide! 2)
    (get-result)))

(test-eqv "Clears the result"
  0
  (begin
    (clear!)
    (get-result)))

(test-end)
