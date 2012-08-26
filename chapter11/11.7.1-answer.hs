import Countdown

choices :: [a] -> [[a]]
choices xs = [pe | e <- subs xs, pe <- perms e]
