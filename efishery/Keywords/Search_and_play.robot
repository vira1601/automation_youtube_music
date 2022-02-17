*** Settings ***
Resource                ../Variables/Elements.robot

*** Keywords ***
Open Youtube Music website in chrome
    Open Browser                       ${url}                  ${browser}
    Maximize Browser Window

User will see Youtube Music landing home page
    Verify Home button
    Verify Explore button
    Verify Library button
    Verify Search button

User on Home page
    Verify Home button

User on Explore page
    Wait Until Page Contains Element            ${charts_menu}

Verify Home button
    Wait Until Page Contains Element            ${home_btn} 

User will see Explore page
    Wait Until Page Contains Element            ${charts_menu}

Verify Explore button
    Wait Until Page Contains Element            ${explore_btn}

Verify Library button
    Wait Until Page Contains Element            ${library_btn}

Verify Search button
    Wait Until Page Contains Element            ${search_btn}

Click Explore button
    Click Element                               ${explore_btn}
    Sleep                                       3

Click Search button
    Click Element                               ${search_btn}
    Sleep                                       3

Type a Singer Oh Wonder
    Input Text                                  ${search_inputText}             Oh Wonder
    Press Keys                                  ${search_inputText}             ENTER    

Oh Wonder's Songs Will be Displayed
    Wait Until Page Contains Element            ${result_search}

List of Song
    Wait Until Page Contains Element            ${list_of_song}

Click Song Title
    Set Focus To Element                        ${song_title}
    Click Element                               ${song_title}

The Song Will Play
    Wait Until Page Contains Element            ${play_pause_button}

Song is Playing
    Wait Until Page Contains Element            ${play_pause_button}
    Sleep                                       8
    Wait Until Page Contains Element            ${skip_ad}
    Click Element                               ${skip_ad}
    Sleep                                       5

The Next Song is Playing
    Wait Until Page Contains Element            ${play_pause_button}
    Sleep                                       3

Click Pause button
    Wait Until Page Contains Element            ${play_pause_button}
    Set Focus To Element                        ${play_pause_button}
    Click Element                               ${play_pause_button}

The Song Pause
    Wait Until Page Contains Element            ${play_button_bottom_bar}

Click Next button
    Click Element                               ${next_button}
    Wait Until Page Contains Element            ${play_pause_button}
    Sleep                                       3

Click Previous button twice
    Click Element                               ${previous_button}
    Click Element                               ${previous_button}
    Wait Until Page Contains Element            ${play_pause_button}

The Next Song Will Play
    Wait Until Page Contains Element            ${play_pause_button}

The Previous Song Will Play
    Wait Until Page Contains Element            ${play_pause_button}

Close The Browser
    Close Browser
