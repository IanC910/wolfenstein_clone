The following folders are included in the design directory, alongside their description of contents. <br>
Assets <br>
  Processed: Contains the sprites, images, and sounds processed in the correct format for the ZedBoard. <br>
  Sources: Contains the unprocessed images, sounds and songs. <br>

Matlab_scripts <br>
  soundProcessor.m: Matlab script to convert .wav files to .sound processed files <br>
  spriteProcessor.m: Matlab script to convert .png files to .sprite processed files <br>
  
Wolfenstein_core0: Vitis Core 0 Application Project <br>
  Src (.h and .cpp files) <br>
    Tests (folder) <br>
      Code for testing audio and buttons <br>
    WolfensteinCore0: Holds the game logic loop <br>
    Main0: Contains the main function which runs WolfensteinCore0 <br>
    Addresses: Contains addresses for buffers and game assets <br>
    AudioConfig: <br>
    Buttons: Functions to read button values <br>
    Colour: Holds colours for the floors and walls <br>
    Constants: Holds Timing, Screen, Rendering, Debug, Sound player, Gameplay, Player, Enemy, and Drop Params/Constants <br>
    Controller: Provides the functions to set up and read from the joystick <br>
    Drop: Holds the ammo/health drop data and functions <br>
    Enemy: Holds the enemy data and functions <br>
    Level/Levelbank: Holds the information about the levels and retrieval functions <br>
    ObjectWithPosition: Class used for inheritance by Enemy, Player and Drop. Simple class that stores and gets position. <br>
    Player: Holds necessary player data and functions <br>
    SharedDataPacker: Holds struct with game data to transfer to drawing core <br>
    SoundPlayer: Provides functions to play and stop sounds <br>
    Sprite: Provides easy access functions to the processed data for each sprite <br>
    ValidAckInterface: Holds valid and acknowledge flags to transfer data between cores <br>
    
Wolfenstein_core1: Vitis Core 1 Application Project <br>
  Src (.h and .cpp files) <br>
    WolfensteinCore1: Holds the drawing loop <br>
    Main1: Contains the main function that runs WolfensteinCore1 <br>
    Imports: Includes the files needed from core 0 <br>
    
Wolfenstein_platform: Vivado Project <br>
  Ip_repo: Contains the IP repos for the Vivado project (vga_controller, vivado_library, zed_audio_ctrl) <br>
  Wolfenstein_platform.srcs <br>
    Sources_1 <br>
      Modules: contains more custom IPs that aren’t officially in the IP repo or in the Vivado IP format. These are the audio_fetcher, btn_interrupt_gen, and debouncer <br>

Wolfenstein_platform_wrapper: Vitis Platform project <br>

Wolfenstein_system: Vitis System Project <br>
