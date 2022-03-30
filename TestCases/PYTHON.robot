*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      chrome
${url}      https://www.google.co.in/

*** Test Cases ***
GoogleSearch
    open browser      ${url}      ${browser}
    maximize browser window
    set selenium speed  1seconds
    ${"search_box"}     set variable    xpath://input[@type='text']
    input text  ${"search_box"}     python
    press keys  ${"search_box"}     ENTER

    ${AllLinksCount}=   get element count   xpath://h3
    log to console      ${AllLinksCount}

    @{LinkItems}    create list

    : FOR   ${i}    IN RANGE    1
    \   ${LinkText}  get text    xpath:(//h3)[${1}]
    \   log to console  ${LinkText}

    : FOR   ${i}    IN RANGE    1
    \   ${LinkText}  get text    xpath:(//h3)[${6}]
    \   log to console  ${LinkText}

    : FOR   ${i}    IN RANGE    1
    \   ${LinkText}  get text    xpath:(//h3)[${12}]
    \   log to console  ${LinkText}

    : FOR   ${i}    IN RANGE    1
    \   ${LinkText}  get text    xpath:(//h3)[${13}]
    \   log to console  ${LinkText}


    ${AllLinksCount1}=   get element count   xpath://cite
    log to console      ${AllLinksCount}

    @{LinkItems1}    create list

    : FOR   ${i}    IN RANGE    1
    \   ${LinkText1}  get text    xpath:(//cite)[${1}]
    \   log to console  ${LinkText1}

    : FOR   ${i}    IN RANGE    1
    \   ${LinkText1}  get text    xpath:(//cite)[${3}]
    \   log to console  ${LinkText1}

    : FOR   ${i}    IN RANGE    1
    \   ${LinkText1}  get text    xpath:(//cite)[${13}]

    \   log to console  ${LinkText1}

    : FOR   ${i}    IN RANGE    1
    \   ${LinkText1}  get text    xpath:(//cite)[${15}]
    \   log to console  ${LinkText1}











