*** Settings ***
Documentation           Test cases for Create Gist
#need K01_create.robot as resource to get the keyword
Resource                ./../Keywords/K01_create.robot
#need keyword.robot as resource to do : open github login page & close github page
Resource                ./../General/keyword.robot
#each test case need to `open github login page` before start the scenario
Suite Setup             Open Github login page
#each test case need to `close github page` after scenario done
Suite Teardown          close github page

*** Test Cases ***
As a user, before I create a gist, i want to login
    [Tags]  ready
    #make sure user are correct in login page
    verify login page
    #input username, change XXX to the real github username
    input github username XXX
    #input password, change YYY to the real github password
    input github password YYY
    #click button sign in to login
    click sign in button
    #make sure user are logged in succesfully
    verify user logged in
    #after logged in, do logout. so,each test case is not dependent each other and also can be run seperately
    user logged out

As a user, I can't create gist when desc, filename, and notes is empty
    [Tags]  ready
    #do login github and go to url gist
    do login and go to gist page
    #verify button create is disable when there is no value on textfield
    verify button create public gist
    #after logged in, do logout. so,each test case is not dependent each other and also can be run seperately
    logged out user gist

As a user, I want to create a public gist
    [Tags]  ready
    #do login github and go to url GIST
    do login and go to gist page
    #input description : This is Gist 1
    create gist description This is Gist 1
    #input file name with file format : Gist 1
    create gist file name Gist1.txt
    #input notes : This is 1st gist file
    create gist notes This is 1st gist file
    #before click button create, get one of data inputted(get notes) to do verify after gist created
    ${get_data_notes}=   get gist data
    #click button create to create the gist file
    click button create public gist
    #do verify from data that has been taken before is match with data created
    verify gist succesfully created      ${get_data_notes}
    #after logged in, do logout. so,each test case is not dependent each other and also can be run seperately
    logged out user gist

