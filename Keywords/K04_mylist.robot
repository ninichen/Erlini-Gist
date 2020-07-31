*** Settings ***
Documentation                               Keyword for my list of gists
#need text.robot to verify the value taken is match with defined text
Resource                                    ../General/text.robot
#need elements.robot to get the elements defined
Resource                                    ../General/elements.robot
#need K01_create.robot because there is an keyword from there needed to be used in this file
Resource                                    ../Keywords/K01_create.robot

*** Keywords ***
do login and go to gist url
    verify login page
    #input username, change XXX to the real github username
    input github username XXX
    #input password, change YYY to the real github password
    input github password YYY
    click sign in button
    #after logged in, redirect to gist page
    go to  https://gist.github.com/

create 1st gist file
    create gist description This is Gist 1
    create gist file name Gist1.txt
    create gist notes This is 1st gist file
    ${get_data_notes}=   get gist data
    click button create public gist
    verify gist succesfully created      ${get_data_notes}

create 2nd gist file
    go to  https://gist.github.com/
    create gist description This is Gist 2
    create gist file name Gist2.txt
    create gist notes This is 2nd gist file
    ${get_data_notes}=   get gist data
    click button create public gist
    verify gist succesfully created      ${get_data_notes}

click button see all gists
    wait until element is visible           ${buttonSeeAllGists}
    click element                           ${buttonSeeAllGists}

verify total gists match with added gist
    wait until element is visible           ${textTotalGists}
    ${total}        get text                ${textTotalGists}
    should be equal as strings              ${total}        ${textTitleTotalGists}
