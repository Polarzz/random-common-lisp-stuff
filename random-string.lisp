(defun random-string-of-letters (length)
  (let ((chars "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"))
    (coerce (loop repeat length collect (aref chars (random (length chars))))
            'string)))

(defun random-string-of-integers (length)
  (let ((chars "0123456789"))
    (coerce (loop repeat length collect (aref chars (random (length chars))))
            'string)))

(defun random-string-of-chars (length)
  (let ((chars "!\"£$%^&*()_+{}:@~<>?/.,;'#][-=\\|`¬"))
    (coerce (loop repeat length collect (aref chars (random (length chars))))
            'string)))

;; (format t (random-string-of-letters 10))
;; (format t (random-string-of-integers 10))
;; (format t (random-string-of-chars 10))
