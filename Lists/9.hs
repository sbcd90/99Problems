recursion list newlist templist=if (length list) == 0
									then newlist
								else	 
									if (length (init list)) /= 0 && (last list) == (last (init list))
										then recursion (init list) newlist ((last list) : templist)
						 			else
						 				recursion (init list) (((last list) : templist) : newlist) []

pack list = recursion list [] []