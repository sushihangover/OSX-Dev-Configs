cd monodevelop
git pull
export PATH="/Library/Frameworks/Mono.framework/Versions/Current/bin:$PATH"
export ACLOCAL_FLAGS="-I /Library/Frameworks/Mono.framework/Versions/Current/share/aclocal"
export DYLD_FALLBACK_LIBRARY_PATH=/Library/Frameworks/Mono.framework/Versions/Current/lib:/lib:/usr/lib
./configure --profile=mac
make
pushd main/build/MacOSX
make app
# open MonoDevelop.app
popd
pushd main/build/MacOSX
df | grep MonoDevelop| cut -f1 -d " " | xargs hdiutil detach 
rm MonoDevelop-?.?.*.*.dmg
make dmg
open MonoDevelop-*.dmg
popd

