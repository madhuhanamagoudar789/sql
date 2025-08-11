Constructors:



* Constructors are methods which are executed at the time of object creation, only once. Once the object is created, constructors cannot be called again explicitly.
* Constructors should not have return types. Note: If any case return type is given it becomes a method, will not work at the time of object creation.
* The constructor name and the class name should be the same(including case sensitivity).
* Constructors can be overloaded( can have more than one constructors).
* If the construction is not given then default constructor will be automatically added, i.e. Zero Argument constructor.
* If we create any constructor, default constructor wont be added.
* One constructor can call another constructor, using a keyword called this for same class constructor and super for inheritance.
* In java every class we create will inherit Object Super Class. Note: Calling a constructor shouldn't be cyclic, it will lead to compilation error.
* When there is anonymous constructor, first all the anonymous constructor will executed, then move on to the named constructors.
* Constructor can be Static and also Private(doesn't lead to compilation error).
* Anonymous constructors can be created by opening a block 

&nbsp;  {...........}

* Static anonymous Constructor by using      

&nbsp;  static {..............}

* Static anonymous constructor will execute only once in the life cycle.
* Static anonymous > anonymous > named constructor.
* We need anonymous constructor to directly implement the interface.
* Note: Inside the constructor, this or super should be the first statement



