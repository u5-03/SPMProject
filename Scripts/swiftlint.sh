echo $1
echo $2
# If changed .swiftlint.yml file by Configuration, we can apply different lint rules to code.
if [ "${CONFIGURATION}" = "Debug" ]; then
    $1 lint --no-cache --format --config $2/.swiftlint.yml
else
    $1 lint --no-cache --format --config $2/.swiftlint.yml
fi
