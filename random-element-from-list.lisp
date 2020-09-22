(defun random-element (from-this-list)
    (nth (random (length from-this-list) (make-random-state t)) from-this-list))

