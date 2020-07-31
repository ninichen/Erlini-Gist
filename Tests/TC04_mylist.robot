*** Settings ***
Documentation           Test cases for My List of Gists
#need K04_mylist.robot as resource to get the keyword
Resource                ./../Keywords/K04_mylist.robot
#need keyword.robot as resource to do : open github login page & close github page
Resource                ./../General/keyword.robot
#each test case need to `open github login page` before start the scenario
Suite Setup             Open Github login page
#each test case need to `close github page` after scenario done
Suite Teardown          close github page

*** Test Cases ***
As a user, before I see my list of gists, i want to create 2 gist file
    [Tags]      ready
    #do login github and go to gist page
    do login and go to gist url
    #create first gist file
    create 1st gist file
    #create second gist file
    create 2nd gist file
    #after logged in, do logout. so,each test case is not dependent each other and also can be run seperately
    logged out user gist

As a user, I want to see my list of gists
    [Tags]      ready
    #click sign in to go to github login page
    click button sign in home
    #do login on github and go to gist page
    do login and go to gist url
    #click button see all gists to see all gist collection
    click button see all gists
    #verify added gists is all displayed on gist collection
    verify total gists match with added gist
    #after logged in, do logout. so,each test case is not dependent each other and also can be run seperately
    logged out user gist

