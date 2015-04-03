;; -*- mode: clojure -*-
;; vi: set ft=clojure :

(ns tinkerbell.core
   (require pixie.string :as s)
   (require tinkerbell.commands.help :as help))

(defn tmate-command [] "echo Running tmate")

(defn start-tmate-session [arguments]
  (sh (s/join " " (flatten [(tmate-command)  arguments]))))

(defn execute [arguments]
  (cond
    (= "help" (first arguments)) (help/execute)
    :else (start-tmate-session arguments)))
