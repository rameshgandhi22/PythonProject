*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
*** Variables ***
${browser}      chrome
${url}      https://www.google.co.in/
${path}     ${CURDIR}/PrintTheResult.txt
*** Test Cases ***
GoogleSearch
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1seconds
    SearchPythonInGoogle
    close browser

PrintTheResult
    create file     ${path}     Test Passed
    file should exist   ${path}
    copy file  ${path}  ~/file.txt




*** Keywords ***
SearchPythonInGoogle
    ${"search_box"}     set variable    xpath://input[@type='text']
    input text  ${"search_box"}     python
    press keys  ${"search_box"}     ENTER

