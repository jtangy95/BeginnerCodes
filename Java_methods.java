public class Java_methods {

    /* A method must be declared within a class.
    It is defined with the name of the method, followed by parentheses () */
    static void myMethod() {
        System.out.println("I just got executed!");
    }
    /* `static` means that the method belongs to the "Java_methods" class and not an object of the "Java_methods" class. 
    `void` means that this method does not have a return value. */

    static void Dunphy_fam(String firstname) {
        System.out.println(firstname + " " + "Dunphy") ;
    }
    
    static void Dunphy_fam2(String firstname, int age) {
        System.out.println(firstname + " " + "Dunphy" + " is " + age + " years old") ;
    }

    /* The `void` keyword, used in the examples above, indicates that the method should not return a value. 
    If you want the method to return a value, you can use a primitive data type (such as int, char, etc.) instead of void, 
    and use the `return` keyword inside the method */

    static double SumAndHalf(int x, int y){
        double z = x + y ;
        return z / 2 ;
    }

    /* Instead of defining two methods that should do the same thing, it is better to overload one.
    In the example below, we overload the `plus` method to work for both int and double: 
    Note : Multiple methods can have the same name as long as the number and/or type of parameters are different. */

    static int plus (int x, int y){
        return x + y ;
    }
    static double plus (double x, double y){
        return x + y ;
    }

    /* Adding two numbers together is easy to do, but adding a range of numbers is more complicated.
    In the following example, recursion is used to add a range of numbers together by
    breaking it down into the simple task of adding two numbers */

    public static int sum(int k) {
        if (k > 0) {
            return k + sum(k - 1) ;
        } else {
            return 0 ;
        }
    }

    /* Just as loops can run into the problem of infinite looping, recursive functions can run into the problem of infinite recursion.
    Infinite recursion is when the function never stops calling itself. 
    Every recursive function should have a halting condition, 
    which is the condition where the function stops calling itself. 
    In the previous example, the halting condition is when the parameter k becomes 0.

    In the following example, the function adds a range of numbers between a start and an end. 
    The halting condition for this recursive function is when end is not greater than start */
    
    public static int sum_fromto(int start, int end) {
        if (start < end) {
            return start + sum_fromto(start + 1 , end) ;
        } else {
            return end ;
        }
    }

    /* The developer should be very careful with recursion as it can be quite easy to slip into writing a function which never terminates, 
    or one that uses excess amounts of memory or processor power. 
    However, when written correctly recursion can be a very efficient and mathematically-elegant approach to programming. */


    public static void main(String[] args) {
        // To call a method in Java, write the method's name followed by two parentheses () and a semicolon ;
        myMethod();
        myMethod();
        Dunphy_fam("Haley") ;
        Dunphy_fam("Alex") ;
        Dunphy_fam("Luke") ;
        /* When a parameter is passed to the method, it is called an argument. 
        So, from the example of `Dunphy_fam` method above: `firstname` is a parameter, while "Haley", "Alex", "Luke" are arguments. */
        Dunphy_fam2("Haley", 20);
        Dunphy_fam2("Alex", 16);
        Dunphy_fam2("Luke", 13);

        System.out.println(SumAndHalf(5, 4)) ;
        System.out.println(plus(11, 22)) ;
        System.out.println(plus(1.1, 2.2)) ;
        
        System.out.println(sum(10)) ;
        /* When the sum() function is called, it adds parameter k to the sum of all numbers smaller than k and returns the result.
        When k becomes 0, the function just returns 0. When running, the program follows these steps :

        10 + sum(9)
        10 + ( 9 + sum(8) )
        10 + ( 9 + ( 8 + sum(7) ) )
        ...
        10 + 9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1 + sum(0)
        10 + 9 + 8 + 7 + 6 + 5 + 4 + 3 + 2 + 1 + 0

        Since the function does not call itself when k is 0, the program stops there and returns the result. */

        System.out.println(sum_fromto(5, 10)) ;
        /* When running, the program follows these steps :

        5 + sum_fromto(6, 10)
        5 + 6 + sum_fromto(7, 10)
        5 + 6 + 7 + sum_fromto(8, 10)
        5 + 6 + 7 + 8 + sum_fromto(9, 10)
        5 + 6 + 7 + 8 + 9 + sum_fromto(10, 10)
        5 + 6 + 7 + 8 + 9 + 10
        
        Since the function does not call itself when start == end , the program stops there and returns the result. */

    }


}