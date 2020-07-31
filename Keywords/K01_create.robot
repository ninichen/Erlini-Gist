*** Settings ***
Documentation                               Keyword for create gist
#need text.robot as resource to verify the value taken is match with defined text
Resource                                    ../General/text.robot
#need elements.robot as resource to get the elements defined
Resource                                    ../General/elements.robot

*** Keywords ***
verify login page
    wait until element is visible           ${titleSignIn}
    ${text}     get text                    ${titleSignIn}
    should be equal as strings              ${text}     ${textTitleSignIn}

input github username ${username}
    wait until element is visible           ${inputUsername}
    input text                              ${inputUsername}    ${username}

input github password ${password}
    wait until element is visible           ${inputPassword}
    input text                              ${inputPassword}    ${password}

click button sign in home
    wait until element is visible           ${buttonSignInHome}
    click element                           ${buttonSignInHome}
    verify login page

click sign in button
    wait until element is visible           ${buttonSignIn}
    click element                           ${buttonSignIn}

verify user logged in
    wait until element is visible           ${titleMyUsername}

user logged out
    wait until element is visible           ${buttonIconProfile}
    click element                           ${buttonIconProfile}
    wait until element is visible           ${buttonSignOut}
    click element                           ${buttonSignOut}
    wait until element is visible           ${titleBuildForDev}

do login and go to gist page
    click button sign in home
    #input username, change XXX to the real github username
    input github username XXX
    #input password, change YYY to the real github password
    input github password YYY
    click sign in button
    verify user logged in
    #after logged in, redirect to gist page
    go to  https://gist.github.com/

logged out user gist
    wait until element is visible       ${buttonIconProfileGist}
    click element                       ${buttonIconProfileGist}
    wait until element is visible       ${buttonSignOutGist}
    click element                       ${buttonSignOutGist}
    wait until element is visible       ${buttonSignOutGithub}
    click element                       ${buttonSignOutGithub}
    wait until element is visible       ${titleBuildForDev}

verify button create public gist
    wait until element is visible           ${buttonCreatePublicGist}
    #make sure the create button is disable when no input value
    ${button}       get element attribute   ${buttonCreatePublicGist}       disabled

create gist description ${desc1}
    wait until element is visible           ${gistdesc}
    input text                              ${gistdesc}    ${desc1}

create gist file name ${filename}
    wait until element is visible           ${gistfileName}
    input text                              ${gistfileName}    ${filename}

create gist notes ${notes}
    wait until element is visible           ${gistnotes}
    click element                           ${gistnotes}
    input text                              ${gistnotes}       ${notes}

get gist data
    ${get_notes}  get text                  ${gistnotes}
    [Return]  ${get_notes}

click button create public gist
    wait until element is visible           ${buttonCreatePublicGist}
    click element                           ${buttonCreatePublicGist}

verify gist succesfully created
    [Arguments]  ${verify_notes}
    wait until element is visible          ${titleGistNotes}
    ${get_notes}            get text       ${titleGistNotes}
    should be equal as strings             ${verify_notes}      ${get_notes}