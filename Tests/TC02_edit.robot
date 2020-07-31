*** Settings ***
Documentation           Test cases for Edit Gist
#need K02_edit.robot as resource to get the keyword
Resource                ./../Keywords/K02_edit.robot
#need keyword.robot as resource to do : open github login page & close github page
Resource                ./../General/keyword.robot
#each test case need to `open github login page` before start the scenario
Suite Setup             Open Github login page
#each test case need to `close github page` after scenario done
Suite Teardown          close github page

*** Test Cases ***
As a user, I want to edit an existing gist
    [Tags]  ready
    #do login to github and go to gist page
    do login and go to gist url
    #go to all gists collection
    click see all of your gists
    #click gist file to go to detail gist
    click gist file on list gists
    #click edit button to start editing
    click edit button
    #make sure user are in edit page
    verify edit page
    #edit existing gist file notes
    create gist notes This is edited gist file
    #get the data after edit
    ${get_data_notes}=   get gist data
    #click button update to apply the changes
    click button update public gist
    #verify the edited data is match
    verify gist succesfully created      ${get_data_notes}
    #after logged in, do logout. so,each test case is not dependent each other and also can be run seperately
    logged out user gist