*** Settings ***
Documentation                               Keyword for delete gist
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

check gist file before delete
    wait until element is visible           ${buttonGistFile}

click button delete
    wait until element is visible           ${buttonDeleteGist}
    click element                           ${buttonDeleteGist}
    #click on OK button when pop up appear
    handle alert    accept

check gist file after delete
    #1st verify, file is not exist
    wait until page does not contain element        ${buttonGistFile}
    #2nd verify
    wait until element is visible           ${textYouDontHaveGists}