(defun computer-choice ()
    (let ((choice (random 3 (make-random-state t))))
    (if (= choice 0) "ROCK"
    (if (= choice 1) "PAPER"
    (if (= choice 2) "SCISSORS")))))

(defun play ()
    (let ((choice (read)))
    (if (and (string= choice "PAPER") (string= *computer* "ROCK")) (format t "You win, you chose ~A and the computer chose ~A." choice *computer*)
    (if (and (string= choice "SCISSORS") (string= *computer* "PAPER")) (format t "You win, you chose ~A and the computer chose ~A." choice *computer*)
    (if (and (string= choice "ROCK") (string= *computer* "SCISSORS")) (format t "You win, you chose ~A and the computer chose ~A." choice *computer*)

    (if (and (string= choice "ROCK") (string= *computer* "PAPER")) (format t "You lose, you chose ~A and the computer chose ~A." choice *computer*)
    (if (and (string= choice "PAPER") (string= *computer* "SCISSORS")) (format t "You lose, you chose ~A and the computer chose ~A." choice *computer*)
    (if (and (string= choice "SCISSORS") (string= *computer* "ROCK")) (format t "You lose, you chose ~A and the computer chose ~A." choice *computer*)
    (format t "Nobody won, you chose ~A and the computer chose ~A." choice *computer*)
    ))))))))
(defvar *computer* (computer-choice))
(play)

;; PR
;; SP
;; RS
