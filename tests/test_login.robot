*** Settings ***
Library    AppiumLibrary
Library    Process
Library    BuiltIn

*** Variables ***
${EMAIL}         mateusrodrigues.bass@gmail.com
${PASSWORD}      Qa270300#

*** Test Cases ***
Login E Validar Tela Meus Pedidos
    # Abrir o aplicativo
    Open Application    http://localhost:4723
    ...    platformName=Android
    ...    platformVersion=11.0
    ...    deviceName=emulator-5554
    ...    appPackage=com.upmenu.test
    ...    appActivity=com.upmenu.MainActivity
    ...    automationName=UiAutomator2
    Sleep    3s

    # Inserir o e-mail
    Tap With Positions    200    500
    Sleep    1s
    Run Process    adb    shell    input text "${EMAIL}"
    Sleep    1s

    # Inserir a senha
    Tap With Positions    200    650
    Sleep    1s
    Run Process    adb    shell    input text "${PASSWORD}"
    Sleep    1s

    # Clicar no botão "Log in"
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@text="Log in"]    10s
    Click Element                    xpath=//android.widget.TextView[@text="Log in"]
    Sleep    7s