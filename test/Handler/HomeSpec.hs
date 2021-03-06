module Handler.HomeSpec (spec) where

import TestImport

spec :: Spec
spec = withApp $
    it "loads the index and checks if it looks right" $ do
        get HomeR
        statusIs 200

        htmlCount ".header" 1
        htmlCount ".splash" 1
        htmlCount ".splash" 1
        htmlCount ".content" 2
        htmlCount ".ribbon" 1
        htmlCount ".footer" 1
