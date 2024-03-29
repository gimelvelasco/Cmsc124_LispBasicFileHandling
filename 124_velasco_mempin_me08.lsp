(defun test (person)
	(with-open-file (stream "family.txt")
		(do 
			(
				(line (read stream nil) (read stream nil))
			)
			((null line))
			(if (equal (car line) person)
				(format t "~&~A : ~A : ~A" (car line) (cadr line) (caddr line))
				(format t "")
			)
		)
	)
)

(defun father (person)
	(with-open-file (stream "family.txt")
		(do 
			(
				(line (read stream nil) (read stream nil))
			)
			((null line))
			(if (equal (car line) person)
				(format t "~&~A" (cadr line))
				()
			)
		)
	)
)
(defun mother (person)
	(with-open-file (stream "family.txt")
		(do 
			(
				(line (read stream nil) (read stream nil))
			)
			((null line))
			(if (equal (car line) person)
				(format t "~&~A" (caddr line))
				()
			)
		)
	)
)
(defun children (person)
	(with-open-file (stream "family.txt")
		(do 
			(
				(line (read stream nil) (read stream nil))
			)
			((null line))
			(if (OR (equal (cadr line) person) (equal (caddr line) person))
				(format t "~&~A" (car line))
				()
			)
		)
	)
)
(defun siblings (person)
	(with-open-file (stream "family.txt")
		(do 
			(
				(line (read stream nil) (read stream nil))
			)
			((null line))
			(if (equal (car line) person)
				(siblings2 (car line) (cadr line) (caddr line))
				()
			)
		)
	)
)

(defun siblings2 (sheshe erpat ermat)
	(with-open-file (stream "family.txt")
		(do 
			(
				(line2 (read stream nil) (read stream nil))
			)
			((null line2))
			(if (AND (NOT (equal sheshe (car line2))) (equal erpat (cadr line2)) (equal ermat (caddr line2)))
				(format t "~&~A" (car line2))
				()
			)
		)
	)
)