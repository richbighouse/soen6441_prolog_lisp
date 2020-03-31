(defun filter (lst num)
	(cond
		((null lst) nil)
		((not (listp lst)) nil)
		((not (numberp num)) nil)
		((> 0 num) nil)
		((not (every 'integerp lst)) nil)
		(t
			(if (> (car lst) num)
				(cons (car lst) (filter (cdr lst) num))
				(filter (cdr lst) num)
			)
		)
	)
)
 
