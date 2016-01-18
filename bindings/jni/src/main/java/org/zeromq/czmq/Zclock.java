/*
################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################
*/
package org.zeromq.czmq;

public class Zclock {
    static {
        try {
            System.loadLibrary ("czmqjni");
        }
        catch (Exception e) {
            System.exit (-1);
        }
    }
    public long self;
    /*
    Sleep for a number of milliseconds
    */
    native static void __sleep (int msecs);
    public void sleep (int msecs) {
        __sleep (msecs);
    }
    /*
    Return current system clock as milliseconds. Note that this clock can  
    jump backwards (if the system clock is changed) so is unsafe to use for
    timers and time offsets. Use zclock_mono for that instead.             
    */
    native static long __time ();
    public long time () {
        return __time ();
    }
    /*
    Return current monotonic clock in milliseconds. Use this when you compute
    time offsets. The monotonic clock is not affected by system changes and  
    so will never be reset backwards, unlike a system clock.                 
    */
    native static long __mono ();
    public long mono () {
        return __mono ();
    }
    /*
    Return current monotonic clock in microseconds. Use this when you compute
    time offsets. The monotonic clock is not affected by system changes and  
    so will never be reset backwards, unlike a system clock.                 
    */
    native static long __usecs ();
    public long usecs () {
        return __usecs ();
    }
    /*
    Return formatted date/time as fresh string. Free using zstr_free().
    */
    native static String __timestr ();
    public String timestr () {
        return __timestr ();
    }
    /*
    Self test of this class.
    */
    native static void __test (boolean verbose);
    public static void test (boolean verbose) {
        __test (verbose);
    }
}
