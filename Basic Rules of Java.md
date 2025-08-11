Basic Rules of Java



1)A java file should have extension called .java



2)A java file can have only one public class(Can have multiple classes but only one public class)



3)The java file name and public class name should be the same.



4)Package name should be the first statement in the file.



5)Variables can be declared inside the class, outside the methods, but execution statements should always be inside the methods.

--------------------------------------------------------------------------------------------------------

Scope of Variable



A variable exists or not is called scope of a variable



* local Scope
* Instance Scope
* Class Scope



1)Local Scope are of two types-

&nbsp;Method Scope( Any variable declared inside the method) 

&nbsp;Block Scope(Any variables declared inside the block

&nbsp;   Ex. if block, if else block, for loop etc..



Note: In local scope the variables will not be auto initialized, we have to initialize Explicitly. if the variable is used without initialization, then its compilation error.

-----------------

2)Instance Scope:



Any variables declared without static inside the class outside the methods 

-->variable will be recognized only in that instance.

-->the variable values will change from instance to instance.

-->Every instance will have the separate copy of the instance variable.

-->Variable called by reference Name

-----------------

3\) Class Scope:



Any variables declared with static inside the class outside the methods.

-->variable will be recognized  in every instance.

-->Variable exists even after the object goes for garbage collection.

--> Every instance will use the same copy(have common copy).

-->Variable called by Class Name









