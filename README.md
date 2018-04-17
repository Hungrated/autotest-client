# autotest-client
An exact environment for web testing based on macaca, with flexbility.

initial commit on Feb 24 2018

## SETUP

```bash
# 1 install dependencies
npm i
npm i macaca-cli -g

# 2 see demo:
# desktop chrome test
npm run desktop

# android chrome test
npm run android

# ios safari test
npm run ios

# 3 use uirecorder:
# new record
npm run rec

# replay record (macOS)
npm run autorep

# replay record (Windows)
npm run server
npm run rep  # (requires a new terminal)
npm run stop

# delete previous js file
npm run delrec

# delete previous js file & record again
npm run rerec

```

## DETAILS

See: [test-env.md](test-env.md)
