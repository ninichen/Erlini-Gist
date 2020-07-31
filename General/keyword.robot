*** Settings ***
Documentation                               General keyword for Gist
Library                                     String
Resource                                    ../General/env.robot
Resource                                    ../General/commands.robot

*** Keywords ***
Open Github login page
	open Github
    set window size                         ${BrowserWidth.desktop}  ${BrowserHeight.desktop}
    go to                                   https://github.com/login

close github page
    delete all cookies
    close browser