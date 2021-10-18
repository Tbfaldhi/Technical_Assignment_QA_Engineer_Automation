*** Settings ***
Library     SeleniumLibrary
Resource            ../var/Var.robot


*** Variable ***
${url}              https://www.saucedemo.com/
${username}         id:user-name
${pass}             id:password
${btn_login}        id:login-button
${error_msg}        xpath://h3[contains(text(),'Epic sadface: Username and password do not match a')]
${title}            xpath://span[@class='title']


*** Keywords ***
open the Browser saucedemo
    Open Browser    ${url}      chrome #this to determine what browser to use 

invalid data
    [Arguments]     ${user}    ${passs}
    wait until Element is Visible           ${username}       10s    #default 5s
    input text          ${username}         ${user}
    input text          ${pass}             ${passs}
    Click Element       ${btn_login} 

valid data
    [Arguments]     ${user1}    ${pass1}
    clear element text          ${username}     # for remove value
    clear element text          ${pass}
    input text                  ${username}         ${user1}
    input text                  ${pass}             ${pass1}
    Click Element               ${btn_login} 
    Element Text Should Be      ${title}        PRODUCTS        #this keyword for validate corect homepage
