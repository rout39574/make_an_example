# make_an_example
Make an example of a technique.


What's going on here is the tokenizing of the target prefix. 

The idea is that foo_bar.compout is a complex piece of output, with
dependencies on foo and also bar.  This is to implement a
'parameterized rule', and show its execution over a set of values.

The dependency file is 'dynamic' (i.e. generated after the make
invocation).  In this example, it is generated by the terribly complex
task of copying it. ;)   Of course, you could do something that's
actually interesting to generate it, too. 


If you 'make everything', 