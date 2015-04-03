;; -*- mode: clojure -*-
;; vi: set ft=clojure :

(ns tinkerbell.core
   (require pixie.string :as s))

(defn show-usage []
  (println "
tink - tmate wrapper with a few enhancements.

Commands:
  version
  help
"))

(defn tmate-command [] "echo Running tmate")

(defn start-tmate-session [arguments]
  (sh (s/join " " (flatten [(tmate-command)  arguments]))))

(defn execute [arguments]
  (cond
    (= "help" (first arguments)) (show-usage)
    :else (start-tmate-session arguments)))
