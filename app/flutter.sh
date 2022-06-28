# shellcheck disable=SC1090,SC2148

myzs:module:new "$0"

export _JAVA_HOME="/opt/homebrew/Cellar/openjdk/18.0.1.1/libexec/openjdk.jdk/Contents"
export JAVA_BIN="/opt/homebrew/opt/openjdk/bin"

if _myzs:internal:checker:folder-exist "$JAVA_BIN"; then
  _myzs:internal:path-push "${JAVA_BIN}"
fi

if _myzs:internal:checker:folder-exist "$_JAVA_HOME"; then
  export JAVA_HOME="$_JAVA_HOME"
fi
