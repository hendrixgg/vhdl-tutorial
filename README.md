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

This statement is only to be used in simulations. This doesn't actually work in hardware.
### loop
This causes the process to loop. You end the loop block by writing "end loop;" on a newline. 

You exit a loop by writing "exit;" on a line inside of the loop block. This causes the loop to stop looping.
### for loop

## report
prints to the screen when running the simulation in ModelSim.
## Running Hardware Simulation in ModelSim
follow this video: https://youtu.be/h4ZXge1BE80?si=6p-A6naXtoKG95s6
## comments
Comments in VHDL always start with a "--".
## variable
Variables are values that are local to a [[process]].

To use a variable in a process, you need to declare it at the top of the process before the begin keyword.

The syntax to delcare a variable is (without the angle brackets):
```
variable VariableName : VariableType := InitialValue;
```

See T05_WhileLoopTb for an example.

The ":=" is the variable assignment operator that allows you to assign a new value to a variable.
## signal
Signals are values that are local to a specific [[architecture]].

To use a signal in an architecture, you need to declare it at the top of the architecture before the begin keyword.

The syntax to delcare a signal is similar to a variable:
```
signal SignalName : Signaltype := InitialValue;
```

The "<=" is the signal assignment operator that allows you to assign a new value to a signal.

Signals only get updated when the process is paused, their new value is assigned according to the last signal assignment in the process.