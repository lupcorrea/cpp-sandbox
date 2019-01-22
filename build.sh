if [ $# -eq 0 ]
then
    echo "No build target supplied."
    echo "Please choose a build target ('debug' or 'release')."
elif [ $1 = "Debug" -o $1 = "Release" ]
then
    mkdir $1
    cd $1
    cmake -DCMAKE_BUILD_TYPE=$1 ..
    make
    cd ..
else
    echo "No valid build target supplied."
    echo "Please choose a valid build target ('debug' or 'release')."
fi
