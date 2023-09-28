; THIS IS THE PROGRAM TO RUN
(setq page '(html
       (header
            (title Marin Le BG du 64)
        )
        (body
            (h1 Magnifique Homme)
            (p Vaut 65 e chez amazon)
        )
    )
)
(defun make-html(L)
    (dolist (element L)
        (if (atom element)
            (progn
                (if (not(equal (car L) element))
                    (progn
                        (write element)
                        (write-char #\space))
                    (progn 
                        (write-string "<")
                        (write element)
                        (write-string ">")
                     )
                 )
                
              )
         (make-html element))
    )
    (write '</)
        (write (car L))
    (write '>)
    
T)

(make-html page)
