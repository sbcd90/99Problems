recursion list num newlist index = if index > length(list)
										then newlist
							 	   else
							 			if (rem index num) == 0
							 				then recursion list num newlist (index + 1)
							 			else
							 				recursion list num (newlist ++ [list !! (index - 1)]) (index + 1)	 	

dropEvery list num = recursion list num [] 1