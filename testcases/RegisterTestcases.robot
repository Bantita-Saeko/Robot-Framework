*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/RegisterPageKeywords.robot
Resource        ../keywords/HomePageKeywords.robot
Variables       ../resources/config/config.yaml
Variables       ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser


*** Test Cases ***
Open Browser To Home Page
    Maximize Browser Window
    Set Selenium Speed    ${delay}

As a user, I want to user register to future skill platform
    When future skill should display page and display message as "คอร์สออนไลน์"
    Then user register to future skill platform with ${email} and ${firstName} and ${lastName} and ${phoneNumber} and ${newPassword} and ${confirmPassword}
    future skill should display page and display message as "OTP"
    [Teardown]    Close Browser