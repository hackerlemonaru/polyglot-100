; polyglot-100 :: entry 015 :: Clojure
(ns polyglot.core)

(def fibs
  (map first (iterate (fn [[a b]] [b (+ a b)]) [0N 1N])))

(defn fib [n]
  (nth fibs n))

(defn -main [& _]
  (let [sum (reduce + (range 1 11))]
    (println "Hello from Clojure!")
    (println (str "sum(1..10) = " sum))
    (println (str "fib(10)    = " (fib 10)))
    (assert (= (bigint sum) (fib 10)))))

(-main)
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglot-100 archive. Family: Applicatio
; Clojure -- entry 015 of 100 in the polyglo
