*** Settings ***
Library    Browser
Library    SeleniumLibrary

*** Test Cases ***
(Chrome) Search หม้อทอดไร้น้ำมัน In Pantip via Browser
    [Tags]  ui    gc
    Browser.Open Browser    https://pantip.com/    chromium    headless=False
    Browser.Fill Text    xpath=//*[@id="inSearchNav"]/input   หม้อทอดไร้น้ำมัน
    Browser.Click    xpath=//*[@id="inSearchNav"]/i
    Wait For Elements State   xpath=//*[@id="searchresult"]/div[1]   visible
    [Teardown]    Browser.Close Browser

(Chrome) Search หม้อทอดไร้น้ำมัน In Pantip via SeleniumLibrary
    [Tags]    ui    gc
    SeleniumLibrary.Open Browser    https://pantip.com/   gc
    Input Text    xpath=//*[@id="inSearchNav"]/input    หม้อทอดไร้น้ำมัน
    Click Element  xpath=//*[@id="inSearchNav"]/i
    Wait Until Element Is Visible    xpath=//*[@id="searchresult"]/div[1]
    [Teardown]    SeleniumLibrary.Close Browser
