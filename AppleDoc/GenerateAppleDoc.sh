#! /bin/sh

# Input arguments: 
# $1 -> project name
# $2 -> project path
# $3 -> company name

# dynamic variables
docsURL="http://www.$3.com/docs";
projectsPath="$2/../";
docsPath="${projectsPath}/AppleDocOutput";

#say "project is: $1";
#say "path is: $2";
#say "company is: $3";
#say "project path is: ${projectsPath}";

# create AppleDocOutput folder if not exists
if [ ! -d $docsPath ];
then
    #say "create output folder";
    mkdir "${docsPath}";
fi

#say "run appledoc";

#invoke appledoc passing computed arguments
/usr/local/bin/appledoc \
--project-name "$1" \
--project-company "$3" \
--output "${docsPath}/$1/" \
--docset-feed-url "${docsURL}/%DOCSETATOMFILENAME" \
--docset-package-url "${docsURL}/%DOCSETPACKAGEFILENAME" \
--docset-fallback-url "${docsURL}/$1Doc/" \
--ignore "$1Tests" \
"$2" > "${docsPath}/AppleDoc.log"