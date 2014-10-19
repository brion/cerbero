SOURCEDIR="$HOME/cerbero/dist/darwin_x86_64"

mkdir -p "Pitivi.app/Contents/MacOS"
mkdir -p "Pitivi.app/Contents/Resources"

cp Info.plist "Pitivi.app/Contents/Info.plist"
cp Pitivi.icns "Pitivi.app/Contents/Resources/Pitivi.icns"

# Binaries!
rsync -av "$SOURCEDIR/" "Pitivi.app/Contents/MacOS"
cp Pitivi "Pitivi.app/Contents/MacOS/Pitivi"

echo "todo: fix library paths"
