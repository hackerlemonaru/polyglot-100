// polyglot-100 :: entry 019 :: Apex
public with sharing class Polyglot {
    public static Long fib(Integer n) {
        Long a = 0;
        Long b = 1;
        for (Integer i = 0; i < n; i++) {
            Long t = a + b;
            a = b;
            b = t;
        }
        return a;
    }

    public static void run() {
        Integer total = 0;
        for (Integer i = 1; i <= 10; i++) {
            total += i;
        }
        System.debug('Hello from Apex!');
        System.debug('sum(1..10) = ' + total);
        System.debug('fib(10)    = ' + fib(10));
        System.assertEquals(Long.valueOf(total), fib(10));
    }
}
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 100 in the polyglot-100 archive. Family: Application 
// Apex -- entry 019 of 1
