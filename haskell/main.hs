import Network.HTTP.Simple
import Data.Aeson

getExchangeRate :: IO Double
getExchangeRate = do
    response <- httpJSON "https://api.exchangerate-api.com/v4/latest/JPY"
    let rate = (getResponseBody response) .: "rates" .: "USD"
    return rate
