recursion list newlist =if (length list) == 0
							then newlist
						else	 
							if (length (init list)) /= 0 && (last list) == (last (init list))
								then recursion (init list) newlist
						 	else
						 		recursion (init list) ((last list) : newlist)

compress list = recursion list []					