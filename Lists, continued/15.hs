replica num item newlist = if num==0
							then newlist
						   else
						   	replica (num - 1) item (item : newlist)	

recursion list num newlist = if length(list) == 0
								then newlist
							 else
							 	recursion (init(list)) num (replica num (last(list)) newlist) 									 	

repli list num = recursion list num []