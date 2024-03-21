# Overview
    You are creating a basic game where players navigate through a maze.

# Functional Requirements

1. Command-Line Argument

    i. The program should accept a txt file as a command-line argument upon execution

    ii. The program should ensure that the number of rows and columns are entered and with a maximum of 100 and a minium of 5.

    iii. The program should ensure that each row and column should be the same length, which means the maze should be a rectangle.

2. Maze Details

    i. When the txt.file loads, the player will starting point 'S' and the maze will hava a exit point 'E'.

    ii. The player can move freely through path spaces(' '), but cannot move through walls or off the edge of the map. And if they try to do this, they should receive some message telling them not to do this.

    iii. Players can enter "M/m" to see the map of the maze, with their current location shown with "X".

    iv. When the player reaches the exit point, the game will close and the player should receive some message stating that they have won.

3. Funtionality

    i. When the game loads, the player will start at the starting point ‘S’ and can move through the maze using WASD movement:
        Key                 Direction
        W/w                 Up
        A/a                 Left
        S/s                 Down
        D/d                 Right

    Note: There is no expectation for these to be keypress triggered; you can expect the user to enter a newline between each direction. 

# Example Usage

    ./maze maze.txt 20 43

# Example Output

    File maze.txt successfully loaded.

    #####
    #S  #
    #  ##
    # E##
    #####

    Please enter next step : S

    #####
    #S  #
    #X ##
    # E##
    #####

    Please enter next step : A

    #####
    #S  #
    #X ##
    # E##
    #####

    Warning: You can only move in (' ') and can't try to cross the edge of the map !

# Error Outputs

If errors occur in the program, the following error messages will be displayed:

1. Invalid command line arguments: **Usage: ./maze filename width height**
2. File not found: Error: Bad filename
3. Invalid txt data: txt file does not have expected format
4. 
