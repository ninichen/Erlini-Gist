*** Settings ***
Documentation           Test cases for Delete Gist
#need K03_delete.robot as resource to get the keyword
Resource                ./../Keywords/K03_delete.robot
#need keyword.robot as resource to do : open github login page & close github page
Resource                ./../General/keyword.robot
#each test case need to `open github login page` before start the scenario
Suite Setup             Open Github login page
#each test case need to `close github page` after scenario done
Suite Teardown          close github page

*** Test Cases ***
As a user, I want to delete an existing gist
    [Tags]  ready
    #do login to github and go to gist page
    do login and go to gist url
    #go to all gists collection
    click see all of your gists
    #check the gist file before do delete
    check gist file before delete
    #click gist file to start deleting the file
    click gist file on list gists
    #delete the gist file
    click button delete
    #check the gist is succesfully deleted
    check gist file after delete
