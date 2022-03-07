public class Java_exercise{
    public static void main(String[] args){
        String name = "Bob" ;
        System.out.println(name) ; 
        int myNum = 15 ; 
        System.out.println(myNum) ; 
        int num ;
        num = 20 ; 
        System.out.println(num) ; 
        num = 30 ; 
        System.out.println(num) ; 
        final int fixNum = 100 ;
        /* `final` keyword will declare the variable as "final" or "constant", which means unchangeable and read-only */
        System.out.println(fixNum) ; 
        float flNum = 5.3f ;
        double dbNum = 7.8d ;
        double dbBigNum = 12e4d ;
        char letter = 'Z' ;
        /* The character must be surrounded by single quotes, like 'A' or 'c'
        String values must be surrounded by double quotes */
        boolean bool = true ;
        System.out.println(flNum) ; 
        System.out.println(dbNum) ; 
        System.out.println(dbBigNum) ; 
        System.out.println(letter) ; 
        System.out.println(bool) ; 

        String firstName = "Jason" ;
        String lastName = "Bourne" ;
        String fullName = firstName + " " + lastName ;
        System.out.println(fullName) ;
        int x = 5, y = 10, z = 15 ;
        System.out.println(x+y+z) ;

        int myInt = 10 ;
        double myDouble = myInt ;
        System.out.println(myInt) ;
        System.out.println(myDouble) ;
        /* Narrowing casting must be done manually by 
        placing the type in parentheses in front of the value */
        double myDbNum = 3.14d ;
        int myIntNum = (int) myDouble ;
        System.out.println(myDbNum) ;
        System.out.println(myIntNum) ;

        int xx = 17;
        int yy = 5;
        System.out.println(xx % yy);
        xx++ ;
        yy-- ;
        System.out.println(xx) ;
        System.out.println(yy) ;
        xx += 100 ; 
        System.out.println(xx) ;

        /* A String in Java is actually an object, which contain methods that can perform certain operations on strings. 
        For example, the length of a string can be found with the length() method */
        String mytext = "This Is Natural Language" ;
        System.out.println("The length of the mytext string is : " + mytext.length() ) ;
        System.out.println(mytext.toUpperCase()) ;
        System.out.println(mytext.toLowerCase()) ;
        // The indexOf() method returns the index (the position) of the first occurrence of a specified text in a string (including whitespace)
        System.out.println(mytext.indexOf("Natural")) ;
        /* Java counts positions from zero. 
        0 is the first position in a string, 1 is the second, 2 is the third ... */
        System.out.println(firstName.concat(lastName)) ;

        String xxx = "100" ;
        int yyy = 30 ;
        System.out.println(xxx + yyy) ; // `xxx + yyy` will be "10030" (a String)
        
        System.out.println(Math.max(101,202)) ;
        System.out.println(Math.sqrt(169)) ;
        System.out.println(Math.abs(-9.802)) ;
        // `Math.random()` returns a random number between 0.0 (inclusive), and 1.0 (exclusive) 
        System.out.println(Math.random()) ;
        // To get more control over the random number, e.g. you only want a random number between 0 and 100, you can use the following formula
        int randomNum = (int) (Math.random() * 101) ; 
        System.out.println(randomNum) ;

        int time = 23;
        if (time < 4) {
            System.out.println("Good night.") ;
        } else if (time < 12) {
            System.out.println("Good morning.");
        } else if (time < 18) {
            System.out.println("Good afternoon.");
        } else if (time < 22) {
            System.out.println("Good evening.");
        } else {
            System.out.println("Good night.") ;
        }

        String AM_or_PM = (time <12) ? "AM" : "PM" ;
        System.out.println(AM_or_PM) ;

        int weekday = 5;
        switch (weekday) {
            case 1:
                System.out.println("Monday");
                break;
            case 2:
                System.out.println("Tuesday");
                break;
            case 3:
                System.out.println("Wednesday");
                break;
            case 4:
                System.out.println("Thursday");
                break;
            case 5:
                System.out.println("Friday");
                break;
            case 6:
                System.out.println("Saturday");
                break;
            case 7:
                System.out.println("Sunday");
                break;
            /* A break can save a lot of execution time 
            because it ignores the execution of all the rest of the code in the switch block. */
        }

        int day = 7;
        switch (day) {
            case 1:
                System.out.println("Monday");
                break;
            case 2:
                System.out.println("Tuesday");
                break;
            case 3:
                System.out.println("Wednesday");
                break;
            case 4:
                System.out.println("Thursday");
                break;
            case 5:
                System.out.println("Friday");
                break;
            default:
                System.out.println("It is the Weekend!") ;
            /* The default keyword specifies some code to run if there is no case match.
            Note that if the default statement is used as the last statement in a switch block, it does not need a break. */
        }

        int i = 0 ;
        while (i < 5) {
            System.out.println(i);
            i++ ;
        }

        int j = 0 ;
        do {
            System.out.println(j) ;
            j++ ;
        }
        while (j < 5) ;
        
        int jj = 25 ;
        do {
            System.out.println(jj) ;
            jj++ ;
        }
        while (jj < 25) ;
        /* The `do / while` loop will always be executed at least once, even if the condition is false
        because the code block is executed before the condition is tested */
        
        for(int k=0 ; k < 5 ; k++) {
            System.out.println("Studying For Loop") ;
        }
        
        
        for (int kk = 0; kk < 8; kk++) {
            if (kk == 4) {
                break;
            }
            System.out.println(kk);
        }
        
        for (int kk = 0; kk < 8; kk++) {
            if (kk == 4) {
                continue;
            }
            System.out.println(kk);
        }
        
        int[] myNums = {18, 29, 35, 49} ;
        System.out.println(myNums[0]) ;
        myNums[0] = 319 ;
        System.out.println(myNums[0]) ;
        System.out.println(myNums.length) ;
        
        // Loop Through an Array with For-Each loop
        
        String[] cars = {"Volvo", "BMW", "Ford", "Toyota"};
        for (String car : cars) {
            System.out.println(car);
        }

        // Multi-dimensional arrays
        String [][] computers = {{"Mac", "Air", "Pro", "iMac"}, {"HP", "Omen", "Envy", "Pavilion", "Spectre"}} ;
        System.out.println(computers[1][4]) ;
        System.out.println(computers.length) ;
        System.out.println(computers[0].length) ;

        
    }
}