# **Bonus Assignment #8**

(Assembly Game)

# Project Plan

_October 2021_

**Authors**

_Filip Angheluta_

_Ionut Radu Ciobanu_

## Table of contents

**[Introduction](#_l8ut5sq531os) 3**

**[Build Instructions](#_l8snpimsc33e) 3**

**[Game Specification](#_jzrmp1ii0hbh) 3**

[Unit Types](#_h5jih7q1e5fo) 3

[Unit Stats](#_i1glt8cfvtda) 5

[Building Types](#_a27kab923og8) 5

[Map Tile Types](#_uhcczzm9y3wk) 5

[Game Mechanics](#_llf9dglb7iyh) 6

[Game Ending Conditions](#_7ht7gkfz8uij) 6

**[Code Specification](#_upyyk5az01wj) 7**

[Overview](#_frxewxarstid) 7

[Source files](#_cn3b9koicoi2) 7

##


## Introduction

This project is meant to be handed in as a **Bonus Assignmen** t for the **CSE1400 Computer Organization** course. **Game4x** (placeholder name) aims to be a 4X genre game with simple 2D graphics, which will be programmed in Assembly, while also writing the specification in C.

We make use of the following packages which are available for Debian Bullseye:

- [libglfw3-dev](https://packages.debian.org/bullseye/libdevel/libglfw3-dev)
- [libglew-dev](https://packages.debian.org/bullseye/libglew-dev)
- [libfreetype6-dev](https://packages.debian.org/bullseye/libfreetype6-dev)
- [Libst-dev](https://packages.debian.org/buster/libstb-dev)
- fonts-ttf-freefont

## Build Instructions

Run the following commands

Git clone [https://github.com/filipang/game4x](https://github.com/filipang/game4x)

And after that run the linux\_dependencies\_install.sh or install the dependencies manually

sudo apt-get update -y

sudo apt-get install -y fonts-ttf-freefont

sudo apt-get install libx11-6 libglfw3-dev libglew-dev libfreetype6-dev libstb-dev

(Tested on a fresh vm install of the OS provided on Brightspace)

And then you can build the project by running build\_asm.sh

## Game Specification

This game features **local 2-player PVP** (with the possibility of expanding the number of players in the future), **turn-based combat** , **resource management** and a **hexagonal tile-based map**.

During their turn, each player can use the **movement/action points** available for their units to **move** around the map and **attack** enemy units or workshops.

Each player starts with **one workshop** (and can&#39;t build more)and **one golem**.

## Unit Types

- **Golems** are the basic unit of the game and they can be used to **collect essence** by standing on top of **essence map tiles** , and **attack enemy units**. The workshop uses essence to spawn other **Golems** , **Wisps, Unbound Elementals** or an **Arcane Pulse** at the cost of essence.

![](RackMultipart20211030-4-1jkjfyy_html_aed27803e34ca541.png)

- **Unbound Elementals** are defensive units which can be bound at one of the 3 **Elemental Altars** (Fire, Water, Ice) on the map, which will turn the Unbound Elemental into either a **Fire, Water or Ice** elemental depending on which altar they activated. ![](RackMultipart20211030-4-1jkjfyy_html_834d35001242ff63.png)
- **Fire** / **Water** / **Ice Elementals** are offensive units which interact with each other the style of Rock Paper Scissors (Fire Water Ice, respectively in this case), which means that **Fire Elementals** are extremely strong against **Ice Elementals** , but extremely weak against **Water Elementals** , and so on. Three different Elementals can merge into an **Arcane Elemental**.

![](RackMultipart20211030-4-1jkjfyy_html_7e186765e6a73c97.png) ![](RackMultipart20211030-4-1jkjfyy_html_15619a4a84e2df8d.png) ![](RackMultipart20211030-4-1jkjfyy_html_7a0b34567458119c.png)

- **Wisps** are fairly weak and cheap to spawn aggressive units, which are fast and inflict moderate damage, but are also very easy to kill.

![](RackMultipart20211030-4-1jkjfyy_html_a053bd50955a5d97.png)

- **Arcane Elementals** are by far the most powerful unit in the game (other than the **Arcane Pulse** , if you consider that a unit). They are spawned when 3 different **Bound Elementals** merge together. This unit can only be matched by another **Arcane Elemental**.

![](RackMultipart20211030-4-1jkjfyy_html_7deb4cf5949c7a8d.png)

- **Arcane Pulses** are spawned when a player commits an **enormous amount of essence** (600 Essence) towards building one, and upon completion they **kill** a **ll enemy units** without, but touching the workshop (So the game isn&#39;t over technically, comebacks are possible!). The players can see whenever the enemy is summoning an Arcane Pulse in the bottom right corner, and it takes 6 turns since the turn a player has committed the resources for the pulse to summon.

## Unit Stats

Each unit in the game has the following stats:

- **Starting Health** (Max Health) - This is the amount of **Current Health** points a unit has when spawned.

- **Current Health** - Current number of health points. When this reaches 0 the unit is destroyed.

- **Starting Movement Points** - At the start of the player turn each unit the player owns has their **Current Movement Points** refilled up to this value.

- **Current Movement Points** - Each of these points can be used during a turn to move around the map (1 Movement Point per tile traversed) or to attack enemy units (costs all remaining MP and can&#39;t attack unless the unit has at least 1 MP).

- **Vision Range** - The player can only see the game map as far as their units can see in a tile radius equal to each unit&#39;s Vision Range. The rest of the map is covered in Fog of War.

- **Attack Range -** Each unit can attack any unit within a tile radius equal to this value.

- **Attack Damage** &amp; **Damage Modifiers** - Each unit inflicts damage equal to their **Attack Damage** multiplied by the **Damage Modifier** corresponding to the attacked unit.

## Building Types

There is only one type of building and it is called a **Workshop**. Each player starts with **one Workshop** and can&#39;t build more at any point in the game. It serves as the player&#39;s **base** , which means that having your workshop destroyed will result in a **defeat** (unless the enemy Workshop is also destroyed during the same turn cycle).

![](RackMultipart20211030-4-1jkjfyy_html_140070f40759553a.png)

## Map Tile Types

The game map features a hexagonal tile based map which has the following types of tiles:

- **Normal Tile** - Basic tile which can be traversed at the cost of **1 Movement Point**.

![](RackMultipart20211030-4-1jkjfyy_html_906a568a7d4b317f.png)

- **Essence Tile** - Placing a golem on an essence tile will generate a fixed amount of essence for the player every turn, and can also be traversed like a **Normal Tile.**

![](RackMultipart20211030-4-1jkjfyy_html_db018697fbb522a4.png)

- **Non-traversable Tile** - Can&#39;t be traversed.

![](RackMultipart20211030-4-1jkjfyy_html_8d0ab9b2ca06e0bb.png)

## Game Mechanics

The game functions based on the following Game Mechanics:

- **Turn Cycles** - During each **Turn Cycle** , the players can play their **Turn**.

- **Turns** - At the start of each player&#39;s **Turn** , all of their units have their movement points refilled .

- **Movement Points** - Each point can be spent to move across one tile. You can attack an enemy unit

- **Movement** - Selecting a unit will let you move it around after pressing V

- **Attack** - Selecting a unit will let you attack

- **Workshop Unit Production** - Players can spend essence in their workshop to spawn **Golems** (moderate cost), **Wisps** (low cost), **Unbound Elementals** (moderate cost) and **Arcane Pulses** (extremely high cost)

- **Fog of War -** Tiles that aren&#39;t within the vision range of a player&#39;s unit are invisible to that player, being thus covered in fog.

## Game Ending Conditions

There are **2 Game Ending Conditions** :

- The game is over when there are **less than 2 Workshops** on the map at the end of a **turn cycle**. If there is one Workshop left standing, the player who owns it is the **Winner** , but if there are no Workshops left, the game is a **Stalemate.** This condition will hold even if we implement more than 2 player support, which isn&#39;t planned at this moment.

- The game is over when there are **no more units** on the map **and** no player can afford building units. This results in a **Stalemate**. (Not implemented, since it&#39;s a very rare case)

## Code Specification

Source files can be found at [https://github.com/filipang/game4x/](https://github.com/filipang/game4x/).

### Overview

The game components:

- The Game Input Layer - All the input data in each game frame is stored in a struct called input, located in _input.c_

- The Game Logic Layer - The game logic consists of a game\_state data structure which contains all the relevant information about the running game: the units, the map, resources, etc, and all the functions that are required for the game logic to work (e.g. turn() - function that ends the current player turn and starts the turn of the next player, step() - function that cycles through the units that can be moved, etc.). The game logic layer is mainly located in the _game.c_ file.

- The Game Graphics Layer - The layer that is spread across the _gl\_object.c_ files and _gl\_game.c_ files, and manages the graphic outputhist of the game which is updated every frame.

### Source files

- _utils.S_ - As the name suggests, a variety of useful functions used throughout the project.

- _input.S_ - Input layers

- _game.S_ - Game layer
  - S - Functions related to the creation of the different unit types

- _gl\_game.S_ - Graphical layer
  - gl\_object.S - Struct that holds the vertices of a graphical object and some associated functions
  - S - Text rendering functions
  - _texture.S_ - Functions for managing texture mapping
  - _colors.S_ - Holds the different colors used in the game

- S - File containing only the main function, which has the main game loop
