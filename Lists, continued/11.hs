data ListItem a b = Single a | Multiple b a
	deriving (Show)

single :: a -> b -> ListItem a b
single element num = Single element

multiple :: a -> b -> ListItem a b
multiple element num = Multiple num element

recursion list newlist templist=if (length list) == 0
									then newlist
								else	 
									if (length (init list)) /= 0 && (last list) == (last (init list))
										then recursion (init list) newlist ((last list) : templist)
						 			else
						 				if (length(templist) + 1) == 1
						 				then recursion (init list) ( (single (last list) 1) : newlist) []
						 				else
						 					recursion (init list) ( (multiple (last list) (length(templist) + 1)) : newlist) []

encodeModified list = recursion list [] []