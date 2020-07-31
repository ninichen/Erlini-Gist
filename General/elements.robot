*** Settings ***
Documentation                   General element for Gist

*** Variables ***
${titleSignIn}                  css=h1
${inputUsername}                css=input#login_field
${inputPassword}                css=input#password
${buttonSignIn}                 css=input[name='commit']
${titleMyUsername}              css=.dashboard-sidebar.js-sticky.px-3.px-lg-4.px-md-4.top-0  .d-inline-block.details-reset.position-relative > summary[role='button'] > .css-truncate.css-truncate-target.ml-1
${gistdesc}                     css=div#gists > input[name='gist[description]']
${gistfileName}                 css=input[name='gist[contents][][name]']
${gistnotes}                    css=pre[role='presentation']
${buttonCreatePublicGist}       css=.form-actions > button:nth-of-type(1)
${titleGistNotes}               css=.blob-code.blob-code-inner.js-file-line
${buttonIconProfile}            css=.details-reset.js-feature-preview-indicator-container > summary[role='button']
${buttonSignOut}                css=form[method='post'] > button[role='menuitem']
${titleBuildForDev}             css=.h000-mktg.lh-condensed-ultra.mb-3.text-white
${buttonSignInHome}             css=.HeaderMenu-link.mr-3.no-underline
${buttonIconProfileGist}        css=div#user-links > .details-reset
${buttonSignOutGist}            css=button[role='menuitem']
${buttonSignOutGithub}          css=input[value='Sign out']
${buttonSeeAllGists}            css=.f6.flex-auto.lh-condensed.pt-2.text-bold.text-right > a
${buttonGistFile}               css=.gist-snippet .css-truncate-target
${buttonEditGist}               link=Edit
${buttonUpdateGist}             css=.btn.btn-primary
${editGistNotes}                css=pre[role='presentation'] > span[role='presentation']
${buttonDeleteGist}             css=form[method='post'] > .btn.btn-danger.btn-sm
${textYouDontHaveGists}         css=.blankslate > h3
${textTotalGists}               css=.reponav-item > span[title='2']
