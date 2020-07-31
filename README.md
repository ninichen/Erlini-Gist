This script is using RobotFramework with Selenium, with Python programming language (with editor tools : Pycharm) 
So, before running the scripts, things need to prepare : 
- install python
- install robotframework
- install chromedriver

Project interpreter needed to set in Pycharm : 
- pip
- robotframework
- robotframework-selenium2library
- robotframework-seleniumlibrary
- robotremoteserver
- selenium
- setuptools
- urllib3

Run the test in terminal :  
robot --include [tag] --variable Browsers:[browser] [Tests file]
- Run all test script : robot --include ready --variable Browsers:chrome Tests/ 
- Run spesific test case :  
    - robot --include ready --variable Browsers:chrome Tests/TC01_create.robot
    - robot --include ready --variable Browsers:chrome Tests/TC02_edit.robot
    - robot --include ready --variable Browsers:chrome Tests/TC03_delete.robot
    - robot --include ready --variable Browsers:chrome Tests/TC04_mylist.robot
    


