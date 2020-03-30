(defun diff (lst1 lst2)
	(cond 
		((or (null lst1) (null lst2)) nil)
		((or (atom lst1) (atom lst2)) nil)
		((/= (list-length lst1) (list-length lst2)) nil)
		(t
			(let 
				(
					(ediff (- (car lst1) (car lst2)))
				)
				(cons 
					(* ediff ediff ediff)
					(diff (cdr lst1) (cdr lst2))
				)
         	)	
    	)         
	)	
)