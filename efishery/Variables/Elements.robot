*** Variables ***
${browser}                      Chrome
${url}                          https://music.youtube.com/
${home_btn}                     //*[@tab-id='FEmusic_home']
${explore_btn}                  //*[@tab-id='FEmusic_explore']
${library_btn}                  //*[@tab-id='FEmusic_liked']
${search_btn}                   //*[contains(@class, 'ytmusic-search-box') and text() = 'Search']
${charts_menu}                  //*[contains(@class, 'ytmusic-navigation-button-renderer') and text() = 'Charts']
${search_inputText}             //*[@class='style-scope ytmusic-search-box' and @id='input']
${result_search}                css:a[aria-label="Oh Wonder"]
${list_of_song}                 //*[@class='style-scope ytmusic-shelf-renderer' and text()='Songs']
${song_title}                   //a[@href="watch?v=rrJtqh80rTQ&list=RDAMVMrrJtqh80rTQ"]
${play_pause_button}            play-pause-button
${play_button_bottom_bar}       //*[@title='Play']
${skip_ad}                      //*[@class='ytp-ad-skip-button-icon']
${next_button}                  //*[@title='Next song']
${previous_button}              //*[@title='Previous song']