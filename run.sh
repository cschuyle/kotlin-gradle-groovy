#!/usr/bin/env bash
set -e
end() {
    echo "Looks like you need to build the app first. Try this:

  ./gradlew build
"
  exit 1
}

if [[ ! -d ./build/libs ]]; then end; fi
jar=$(find build/libs -name \*-all.jar)
if [[ -z "$jar" ]]; then end; fi
if [[ -z "$jar" ]]; then end; fi

if [[ -z "$*" ]]
then
  java -jar "$jar"
else
  java -jar "$jar" $*
fi
