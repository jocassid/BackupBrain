[README.md](README.md)

# jq

Command line utility to extract info from JSON files.  Command format is:

`jq [FILTER] [INPUT_FILE]`

I got a "Cannot find module" Node error when I tried running 
`jq "." ~/some_file.json`, but `more ~/some_file.json | jq "."` worked.
Is my installation broken?

Filter syntax is similar to XPATH but with `.` instead of `/`.  Square 
brackets surround indexes into lists.

Example:

`sudo docker inspect | jq ".[0].Config.Env`