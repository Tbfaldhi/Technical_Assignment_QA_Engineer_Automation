*** Settings ***
Library     SeleniumLibrary
Resource    ../test/login.robot
Resource    ../var/Var.robot

*** Test Cases ***
flow login  
    open saucedemo
    input login using invalid data      ${invalid_username}     ${invalid_pass}
    input login using valid data        ${valid_username}       ${valid_pass}