# vhdl-tutorial
 Following along with vhdlwiz.com youtube tutorial on how to use vhdl.
# Naming Conventions
Tb - stands for "Test Bench"
# Notes
## entity
Defines the inputs and outputs for a module.

The entity name should match the basename of the file this is defined in.
## architecture
Where we put logic and algorithms.
inside an architecture we can define [[processes]].
## process
Where most of the code is written.

Can be thought of as a [[program thread]]. 

The code inside of a process is executed sequentially, one line at a time from the top to the bottom.
### wait
This causes the process to wait at this line and not continue.
### wait for {{time amount}}
This causes the process to wait for the amount of time specified by {{time amount}}.
### loop
This causes the process to loop.
## report
prints to the screen when running the simulation in ModelSim.
## Running Hardware Simulation in ModelSim
follow this video: https://youtu.be/h4ZXge1BE80?si=6p-A6naXtoKG95s6
## comments
Comments in VHDL always start with a --.