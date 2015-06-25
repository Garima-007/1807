@echo off
set "file=../JSFileList.txt"
echo -----------------------------------------------------------
echo Script list down all the .js files int the Files.txt 		
echo -----------------------------------------------------------
echo Creating a File List..May take some time ..
echo Starting..
SLEEP 2
cls
echo -----------------------------------------------------------------------------------------------------------------
echo 			1 		
echo -----------------------------------------------------------------------------------------------------------------
SLEEP 1
cls
echo ------------------------------------------------------------------------------------------------------------------
echo 						2 		
echo ------------------------------------------------------------------------------------------------------------------
SLEEP 1
cls
echo ------------------------------------------------------------------------------------------------------------------
echo 								3 		
echo ------------------------------------------------------------------------------------------------------------------
SLEEP 1
cls
echo ------------------------------------------------------------------------------------------------------------------
echo 										4 		
echo ------------------------------------------------------------------------------------------------------------------
SLEEP 1
cls
echo -----------------------------------------------------------
echo File List with .js extension in the folder /js 		
echo -----------------------------------------------------------
SLEEP 1

ls *.js

ls *.js >  %file%

echo -----------------------------------------------------------
echo File List written to the file	%file%	
echo -----------------------------------------------------------
SLEEP 3
cls
echo -----------------------------------------------------------
echo Changing Directory to /1807/.... 		
echo -----------------------------------------------------------
SLEEP 1
cd ..
cls
echo -----------------------------------------------------------
echo Wait for 3 seconds.... 		
echo -----------------------------------------------------------
SLEEP 1
echo -----------------------------------------------------------
echo 1.... 		
echo -----------------------------------------------------------
SLEEP 1
echo -----------------------------------------------------------
echo 		2.... 		
echo -----------------------------------------------------------
SLEEP 1
echo -----------------------------------------------------------
echo 				3.... 		
echo -----------------------------------------------------------
SLEEP 1
cls
echo -----------------------------------------------------------
echo Listing All JS HTML script in JsIncludeHTMLList.txt ...		
echo -----------------------------------------------------------
SLEEP 2

GetJSScriptWritten.exe

GetJSScriptWritten.exe > JsIncludeHTMLList.txt
SLEEP 3
CLS
echo -----------------------------------------------------------
echo Wait for 3 seconds.... 		
echo -----------------------------------------------------------
SLEEP 1
echo -----------------------------------------------------------
echo 1.... 		
echo -----------------------------------------------------------
SLEEP 1
echo -----------------------------------------------------------
echo 		2.... 		
echo -----------------------------------------------------------
SLEEP 1
echo -----------------------------------------------------------
echo 				3.... 		
echo -----------------------------------------------------------
SLEEP 1
CLS
echo -----------------------------------------------------------
echo Listing All functions in the File JsFunctionList.txt ...		
echo -----------------------------------------------------------
SLEEP 2

python CreateJSListAndFiles.py

python CreateJSListAndFiles.py > JsFunctionList.txt

echo -----------------------------------------------------------
echo And we are done :D !!!	
echo now use %file% for knowing which js files are there in js/
echo now use ../JsIncludeHTMLList.txt for including your js function into the HTML
echo now use ../JsFunctionList.txt  for seeing the various functions in your js file	
echo -----------------------------------------------------------

cd js
echo Press any key to exit ...
PAUSE