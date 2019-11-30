#! /bin/bash

echo "-----------------readonly variable----------------------------"


var=33

readonly var

var=50

echo "var = $var"

echo "-----------------readonly function----------------------------"

sayHello() {
	echo "Hello"
}

readonly -f sayHello

sayHello() {
	echo "Hello Again"
}

sayHello
