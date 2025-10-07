.class public Ljunit/runner/Version;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static id()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "4.13.2"

    .line 2
    .line 3
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-static {}, Ljunit/runner/Version;->id()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
