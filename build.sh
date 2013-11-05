#!/bin/bash

svn export http://svn.code.sf.net/p/subsonic/code/tags/release-4.8/
cd release-4.8
patch -p0 < ../patches-4.8/HomeController.java.patch
patch -p0 < ../patches-4.8/home.jsp.patch
mvn install
