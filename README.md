The following folders are included in the design directory, alongside their description of contents.
Assets
  Processed: Contains the sprites, images, and sounds processed in the correct format for the ZedBoard.
  Sources: Contains the unprocessed images, sounds and songs.

Matlab_scripts
  soundProcessor.m: Matlab script to convert .wav files to .sound processed files
  spriteProcessor.m: Matlab script to convert .png files to .sprite processed files
  
Wolfenstein_core0: Vitis Core 0 Application Project
  Src (.h and .cpp files)
    Tests (folder)
      Code for testing audio and buttons
    WolfensteinCore0: Holds the game logic loop
    Main0: Contains the main function which runs WolfensteinCore0
    Addresses: Contains addresses for buffers and game assets
    AudioConfig: 
    Buttons: Functions to read button values
    Colour: Holds colours for the floors and walls
    Constants: Holds Timing, Screen, Rendering, Debug, Sound player, Gameplay, Player, Enemy, and Drop Params/Constants
    Controller: Provides the functions to set up and read from the joystick
    Drop: Holds the ammo/health drop data and functions
    Enemy: Holds the enemy data and functions
    Level/Levelbank: Holds the information about the levels and retrieval functions
    ObjectWithPosition: Class used for inheritance by Enemy, Player and Drop. Simple class that stores and gets position.
    Player: Holds necessary player data and functions
    SharedDataPacker: Holds struct with game data to transfer to drawing core
    SoundPlayer: Provides functions to play and stop sounds
    Sprite: Provides easy access functions to the processed data for each sprite
    ValidAckInterface: Holds valid and acknowledge flags to transfer data between cores
    
Wolfenstein_core1: Vitis Core 1 Application Project
  Src (.h and .cpp files)
    WolfensteinCore1: Holds the drawing loop
    Main1: Contains the main function that runs WolfensteinCore1
    Imports: Includes the files needed from core 0 
    
Wolfenstein_platform: Vivado Project
  Ip_repo: Contains the IP repos for the Vivado project (vga_controller, vivado_library, zed_audio_ctrl)
  Wolfenstein_platform.srcs
    Sources_1
      Modules: contains more custom IPs that aren’t officially in the IP repo or in the Vivado IP format. These are the audio_fetcher, btn_interrupt_gen, and debouncer

Wolfenstein_platform_wrapper: Vitis Platform project

Wolfenstein_system: Vitis System Project
