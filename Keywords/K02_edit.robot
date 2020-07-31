*** Settings ***
Documentation                               Keyword for edit gist
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

click see all of your gists
    wait until element is visible           ${buttonSeeAllGists}
    click element                           ${buttonSeeAllGists}

click gist file on list gists
    wait until element is visible           ${buttonGistFile}
    click element                           ${buttonGistFile}

click edit button
    wait until element is visible           ${buttonEditGist}
    click element                           ${buttonEditGist}

verify edit page
    wait until element is visible           ${buttonUpdateGist}
    ${text}     get text                    ${buttonUpdateGist}
    should be equal as strings              ${text}     ${titleUpdateGist}

click button update public gist
    wait until element is visible           ${buttonUpdateGist}
    click element                           ${buttonUpdateGist}