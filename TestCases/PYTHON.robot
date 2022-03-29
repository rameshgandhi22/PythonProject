*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://www.google.co.in/

*** Test Cases ***
GoogleSearch
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1seconds
    ${"search_box"}     set variable    xpath://input[@type='text']
    input text  ${"search_box"}     python
    press keys  ${"search_box"}     ENTER

WelcomeToPython
    ${AllLinksCount}=   get element count   xpath://h3
    log to console      ${AllLinksCount}

    @{LinkItems}    create list

    : FOR   ${i}    IN RANGE    1
    \   ${LinkText}  get text    xpath:(//h3)[${1}]
    \   log to console  ${LinkText}
    close browser
PythonW3School
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  1seconds
    ${"search_box"}     set variable    xpath://input[@type='text']
    input text  ${"search_box"}     python
    press keys  ${"search_box"}     ENTER

    ${AllLinksCount}=   get element count   xpath://h3
    log to console      ${AllLinksCount}

    @{LinkItems}    create list

    : FOR   ${i}    IN RANGE    1
    \   ${LinkText}  get text    xpath:(//h3)[${6}]
    \   log to console  ${LinkText}
    close browser














