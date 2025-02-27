(use-modules (srfi srfi-64))

;; -- Your Solution Here

;; -- Validation

(test-begin "find-value")

(test-eqv "Finds value for \"foo\""
  35
  (find-value "foo"
              '("foo" 35 "bar" "the value" "baz" yes)))

(test-eqv "Finds value for \"baz\""
  'yes
  (find-value "baz"
              '("foo" 35 "bar" "the value" "baz" yes)))

(test-eqv "Uses equal? for key comparison"
  'yes
  (find-value (substring "baz" 0 3)
              '("foo" 35 "bar" "the value" "baz" yes)))

(test-eqv "Returns #f when given a key that is found at the end of the list with no value"
  #f
  (find-value "baz" '("baz")))

(test-eqv "Returns #f for empty list"
  #f
  (find-value "baz" '()))

(test-end)
