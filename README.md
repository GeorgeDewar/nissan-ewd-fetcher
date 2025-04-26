# nissan-ewd-fetcher

A script for storing an offline copy of a Nissan Electronic Wiring diagram.

The Electronic Wiring Diagram (EWD) for many Nissan vehicles can be accessed from
https://www.nissan-techinfo.com/ via a subscription (ranging from one day to one year).

This script can be used to store a backup copy of the EWD for a Nissan Vehicle that can be used
offline, protecting vehicle owners' access to this information.

_Tested on 2015 Nissan Leaf and 2019 Nissan Leaf._

## Usage instructions

1. Purchase a one-day Online Viewing Subscription at https://www.nissan-techinfo.com/.
2. Find the Electronic Service Manual of the vehicle you are interested in.
3. Open the Electronic Wiring Diagram and note the URL.
4. Copy the URL up to /eWD, for example
   https://www.nissan-techinfo.com/abcdefg/sm/2019/Leaf/SM19EA1ZE1U2/eWD
5. Execute ./fetch-ewd.sh <path_from_above> (requires Linux or WSL)

The script should fetch all of the necessary files.

To use it, run a small web server at this location, for example `python -mhttp.server 8080` will
run the server on port 8080. Then you can navigate to http://localhost:8080 to use the EWD.
