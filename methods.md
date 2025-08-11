1)Create a project and declare a class. Create another project, use the class that is declared in the another project



### Methods:



A method signature is name of the method, number of args of the method, arg datatype and order of the method.

Ex. int add(int x, int y)

&nbsp;   int add(int x)

&nbsp;   int add(int x, long y)

&nbsp;   int add(long x, int y)

&nbsp;   Addition add(int x, int y)



Note 1: Return type is not a method signature.

Note 2: Argument and return type can be of type primitive or of type class.



Methods are of 2 types:



Instance method

Class Method



Instance method- No static keyword

Class method- has static keyword



Note1: Instance method can call instance variable and class variables, It can also call instance methods and class methods. Instance methods can be called before the object goes for garbage collection(gc).



Note2: Class method can call only the class variables or class methods. It directly cannot call instance methods and instance variables. However class method can call instance method and instance variables by the object reference.





