#!/bin/bash

# <bitbar.title>DASH BTC price at Poloniex</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Dash.org</bitbar.author>
# <bitbar.author.github>Cofresi</bitbar.author.github>
# <bitbar.desc>Shows the last DASH price (in USD) on the Poloniex exchange.</bitbar.desc>
# <bitbar.image>https://raw.githubusercontent.com/monerohow/misc/master/mac-menu-bar-light-and-dark.jpg</bitbar.image>
# <bitbar.abouturl>https://www.dash.org</bitbar.abouturl>
#
# Visit https://www.dash.org for information about DASH
#

dashIconBase64='iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAAqFBMVEUAAAAcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwcdbwIlcYsAAAAN3RSTlMAAgMECgsNEhUaGyMmLi8wNFNUV1tiY3N1goeUlp2en6CnqrCxsrO6vcfW2Nns7e7w8fL19/n68t+ccgAAAIxJREFUeNqNj9cSgjAURBeCPSQ27CGo2FAM1vv/f2biOOaV87ZnZm8B6hCwP+E3T/fbH/l6ZEW3IE9pBV+lSmcWfSa6oRVLKWTHdRtHoh3mxnIdO9Ev6ZXgVBlTFdyJGdGlh1gIITmzOToQ6RDtRapU6kZu7vQcAMOH3/leRsAk91clTdv0Z7Og1qP4APMIEsq8xqseAAAAAElFTkSuQmCC'

dashLast=$(curl -s https://poloniex.com/public?command=returnTicker | tr '}' '\n' | grep BTC_DASH | tr -d '{}"' | tr ':,' '\n' | grep -A1 "last" | tail -1)
printf "%.*f | image=%s\n" 5 "$dashLast" "$dashIconBase64"
echo "---"
echo "Live chart | href=\"https://cryptowatch.de/poloniex/dashbtc""
echo "dash.org homepage | href=\"https://www.dash.org\""

