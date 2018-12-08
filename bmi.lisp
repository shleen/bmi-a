(defun prompt-read(prompt)
    (format *query-io* "~a: " prompt)
    (force-output *query-io*)
    (read))

(defun calculate-bmi (weight height)
    (/ weight (* height height)))

(defun main ()
    (format t "Bmi is ~a"
        (calculate-bmi 
            (prompt-read "Weight")
            (prompt-read "Height"))))

(main)
