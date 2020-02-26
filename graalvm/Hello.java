/*
set JAVA_HOME=C:/Users/smalnuit/.sdkman/candidates/java/19.3.1.r8-grl/
%JAVA_HOME%/bin/javac Hello.java
"C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd"
%JAVA_HOME%/bin/native-image --language:js Hello

*/

import org.graalvm.polyglot.*;
import org.graalvm.polyglot.proxy.*;

public class Hello {

    // Embedding JavaScript
    public static void jsAbs(int input) {
        try (Context context = Context.create("js")) {
            Value jsBindings = context.getBindings("js");
            context.eval("js", "print('running abs in JavaScript!')");
            System.out.println(jsBindings.getMember("Math").getMember("abs").execute(input));
        }
    }

    public static void javaAbs(int input) {
        System.out.println("running abs in Java!");
        System.out.println(Math.abs(input));
    }

    public static void main(String[] args) {
        System.out.println("This polyglot example runs abs functions.");
        jsAbs(-42);
        javaAbs(-42);
    }
}