(ns tinkerbell.tests.example
 (require pixie.test :as t :refer :all)
 (require tinkerbell.core :as tc ))

(deftest test-example
  (assert= 1 1))
