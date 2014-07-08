recursion list newlist = if length(list) /= 0
							then recursion (init(list)) ((last(list)) : (last(list)) : newlist)
						 else
						 	newlist	

dupli list = recursion list []