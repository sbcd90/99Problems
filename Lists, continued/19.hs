rotate list num = if num > 0
					then (drop num list) ++ (take num list)
				  else
				  	(drop (length(list) + num) list) ++ (take (length(list) + num) list)	