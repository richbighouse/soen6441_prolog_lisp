(defun mins (lst1 lst2 lst3)
	(cond
		((or (null lst1) (null lst2) (null lst3)) nil)
		((or (atom lst1) (atom lst2) (atom lst3)) nil)
		((/= (list-length lst1) (list-length lst2)) nil)
                ((/= (list-length lst1) (list-length lst3)) nil)
		(t
			(let 
				(
					(emin (min (car lst1) (car lst2) (car lst3)))
				)
				(cons
					(* emin emin emin)
					(mins (cdr lst1) (cdr lst2) (cdr lst3))
				)
			)
		)
	)
)
