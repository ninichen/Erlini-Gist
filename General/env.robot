*** Settings ***
Documentation                           General environment for Gist

*** Variables ***
${timeoutWait}                          0.9
${setSeleniumSpeed}                     0.8 s
${setSeleniumTimeOut}                   30 s
&{url}                                  test=https://github.com/
#...                                     prod=
&{BrowserWidth}                         desktop=1440
&{BrowserHeight}                        desktop=1120
${device}                               desktop
&{seleniumPort}                         local=
${portSelenium}                         local