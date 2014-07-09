import Control.Monad (replicateM)
import System.Random
diff_select num end 
    | otherwise = replicateM num rand
        where rand = do r <- randomRIO (0, end)
                        return (r)