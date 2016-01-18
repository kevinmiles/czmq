/*
################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################
*/
#include <stdio.h>
#include <stdlib.h>
#include <jni.h>
#include "czmq.h"
#include "../../native/include/org_zeromq_czmq_Zclock.h"

JNIEXPORT void JNICALL
Java_org_zeromq_czmq_Zclock__1_1sleep (JNIEnv *env, jclass c, jint msecs)
{
    zclock_sleep ((int) msecs);
}

JNIEXPORT jlong JNICALL
Java_org_zeromq_czmq_Zclock__1_1time (JNIEnv *env, jclass c)
{
    jlong time_ = (jlong) zclock_time ();
    return time_;
}

JNIEXPORT jlong JNICALL
Java_org_zeromq_czmq_Zclock__1_1mono (JNIEnv *env, jclass c)
{
    jlong mono_ = (jlong) zclock_mono ();
    return mono_;
}

JNIEXPORT jlong JNICALL
Java_org_zeromq_czmq_Zclock__1_1usecs (JNIEnv *env, jclass c)
{
    jlong usecs_ = (jlong) zclock_usecs ();
    return usecs_;
}

JNIEXPORT jstring JNICALL
Java_org_zeromq_czmq_Zclock__1_1timestr (JNIEnv *env, jclass c)
{
    char *timestr_ = (char *) zclock_timestr ();
    jstring return_string_ = (*env)->NewStringUTF (env, timestr_);
    zstr_free (&timestr_);
    return return_string_;
}

JNIEXPORT void JNICALL
Java_org_zeromq_czmq_Zclock__1_1test (JNIEnv *env, jclass c, jboolean verbose)
{
    zclock_test ((bool) verbose);
}

