#! /bin/bash


make_directory () {

mkdir demo

}

if ! make_directory; then
       echo "The directory is already exists"
       exit 1
fi

echo "This is not work becuase code is interrupted"
