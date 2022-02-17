*** Settings ***
Documentation           Youtube Music Automation Test
Library                 Selenium2Library
Resource                ../Keywords/Search_and_play.robot




*** Test Cases ***
Open Youtube Music
    Given Open Youtube Music website in chrome
    Then User will see Youtube Music landing home page

Go To Explore Page
    Given User on Home page
    When Click Explore button
    Then User will see Explore page

Search a Singer
    Given User on Explore page
    When Click Search button
    And Type a Singer Oh Wonder
    Then Oh Wonder's Songs Will be Displayed

Play the Song
    Given List of Song
    When Click Song Title
    Then The Song Will Play

Pause the Song
    Given Song is Playing
    When Click Pause button
    Then The Song Pause

Play Next Song
    Given The Song Pause
    When Click Next button
    Then The Next Song Will Play

Play Previous Song
    Given The Next Song is Playing
    When Click Previous button twice
    Then The Previous Song Will Play