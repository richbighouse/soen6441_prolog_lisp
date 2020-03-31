(defun maxlist (lst1 lst2)
	(cond
		((not (listp lst1)) nil)
		((not (listp lst2)) nil)
		((not (every 'integerp lst1)) nil)
		((not (every 'integerp lst2)) nil)
		((null lst1) lst2)
		((null lst2) lst1)
		(t
			(cons
				(max (car lst1) (car lst2))
				(maxlist (cdr lst1) (cdr lst2))
			)
		)
	)
)
 
