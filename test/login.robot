*** Settings ***
Library     SeleniumLibrary
Resource    ../page_object/login_page.robot
Resource            ../var/Var.robot

*** Keywords ***
open saucedemo
    open the Browser saucedemo
input login using invalid data
    [Arguments]     ${user1}    ${pass1}
    invalid data    ${user1}    ${pass1}
input login using valid data
    [Arguments]     ${user1}    ${pass1}
    valid data      ${user1}    ${pass1}
