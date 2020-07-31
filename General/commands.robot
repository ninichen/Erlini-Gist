*** Settings ***
Documentation                               General commands for Gist
Library                                     SeleniumLibrary     run_on_failure=Capture Page Screenshot            implicit_wait=5 s      timeout=5
Library                                     String
Resource                                    ../General/env.robot

*** Variables ***
#prepare 3 most using browser
@{BROWSERS}                                 chrome    firefox     safari

*** Keywords ***
open Github
    open browser                            about:blank	      ${BROWSERS}      remote_url=${seleniumPort.${portSelenium}}
    Delete All Cookies
    Set Selenium Timeout                    ${setseleniumtimeout}
	Set Browser Implicit Wait               1
	Set Selenium Implicit Wait              1