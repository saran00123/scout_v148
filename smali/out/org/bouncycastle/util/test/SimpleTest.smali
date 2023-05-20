.class public abstract Lorg/bouncycastle/util/test/SimpleTest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/test/Test;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runTest(Lorg/bouncycastle/util/test/Test;)V
    .registers 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/bouncycastle/util/test/SimpleTest;->runTest(Lorg/bouncycastle/util/test/Test;Ljava/io/PrintStream;)V

    return-void
.end method

.method public static runTest(Lorg/bouncycastle/util/test/Test;Ljava/io/PrintStream;)V
    .registers 3

    invoke-interface {p0}, Lorg/bouncycastle/util/test/Test;->perform()Lorg/bouncycastle/util/test/TestResult;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {p0}, Lorg/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_11
    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static runTests([Lorg/bouncycastle/util/test/Test;)V
    .registers 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Lorg/bouncycastle/util/test/SimpleTest;->runTests([Lorg/bouncycastle/util/test/Test;Ljava/io/PrintStream;)V

    return-void
.end method

.method public static runTests([Lorg/bouncycastle/util/test/Test;Ljava/io/PrintStream;)V
    .registers 6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-eq v1, v2, :cond_2b

    aget-object v2, p0, v1

    invoke-interface {v2}, Lorg/bouncycastle/util/test/Test;->perform()Lorg/bouncycastle/util/test/TestResult;

    move-result-object v2

    invoke-interface {v2}, Lorg/bouncycastle/util/test/TestResult;->isSuccessful()Z

    move-result v3

    if-nez v3, :cond_18

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_18
    invoke-interface {v2}, Lorg/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Lorg/bouncycastle/util/test/TestResult;->getException()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_25
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2b
    const-string p0, "-----"

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3c

    const-string p0, "All tests successful."

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_80

    :cond_3c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Completed with "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " FAILURES:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :goto_5d
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_80

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=>  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/util/test/TestResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5d

    :cond_80
    :goto_80
    return-void
.end method

.method private success()Lorg/bouncycastle/util/test/TestResult;
    .registers 2

    const-string v0, "Okay"

    invoke-static {p0, v0}, Lorg/bouncycastle/util/test/SimpleTestResult;->successful(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected areEqual([BII[BII)Z
    .registers 7

    invoke-static/range {p1 .. p6}, Lorg/bouncycastle/util/Arrays;->areEqual([BII[BII)Z

    move-result p1

    return p1
.end method

.method protected areEqual([B[B)Z
    .registers 3

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method protected areEqual([[B[[B)Z
    .registers 8

    const/4 v0, 0x1

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p1, :cond_24

    if-nez p2, :cond_c

    goto :goto_24

    :cond_c
    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    move v2, v1

    :goto_12
    array-length v3, p1

    if-ge v2, v3, :cond_23

    aget-object v3, p1, v2

    aget-object v4, p2, v2

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/util/test/SimpleTest;->areEqual([B[B)Z

    move-result v3

    if-eqz v3, :cond_22

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_22
    return v1

    :cond_23
    return v0

    :cond_24
    :goto_24
    return v1
.end method

.method protected fail(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected fail(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method protected fail(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    new-instance v0, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;Ljava/lang/Throwable;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected isEquals(II)V
    .registers 3

    if-ne p1, p2, :cond_3

    return-void

    :cond_3
    new-instance p1, Lorg/bouncycastle/util/test/TestFailedException;

    const-string p2, "no message"

    invoke-static {p0, p2}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw p1
.end method

.method protected isEquals(JJ)V
    .registers 5

    cmp-long p1, p1, p3

    if-nez p1, :cond_5

    return-void

    :cond_5
    new-instance p1, Lorg/bouncycastle/util/test/TestFailedException;

    const-string p2, "no message"

    invoke-static {p0, p2}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw p1
.end method

.method protected isEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    :cond_7
    new-instance p1, Lorg/bouncycastle/util/test/TestFailedException;

    const-string p2, "no message"

    invoke-static {p0, p2}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw p1
.end method

.method protected isEquals(Ljava/lang/String;JJ)V
    .registers 6

    cmp-long p2, p2, p4

    if-nez p2, :cond_5

    return-void

    :cond_5
    new-instance p2, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw p2
.end method

.method protected isEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    if-nez p2, :cond_5

    if-nez p3, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_24

    if-eqz p3, :cond_1a

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    return-void

    :cond_10
    new-instance p2, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw p2

    :cond_1a
    new-instance p2, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw p2

    :cond_24
    new-instance p2, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw p2
.end method

.method protected isEquals(Ljava/lang/String;ZZ)V
    .registers 4

    if-ne p2, p3, :cond_3

    return-void

    :cond_3
    new-instance p2, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw p2
.end method

.method protected isTrue(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p2, :cond_3

    return-void

    :cond_3
    new-instance p2, Lorg/bouncycastle/util/test/TestFailedException;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw p2
.end method

.method protected isTrue(Z)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Lorg/bouncycastle/util/test/TestFailedException;

    const-string v0, "no message"

    invoke-static {p0, v0}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/util/test/TestFailedException;-><init>(Lorg/bouncycastle/util/test/TestResult;)V

    throw p1
.end method

.method public perform()Lorg/bouncycastle/util/test/TestResult;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/util/test/SimpleTest;->performTest()V

    invoke-direct {p0}, Lorg/bouncycastle/util/test/SimpleTest;->success()Lorg/bouncycastle/util/test/TestResult;

    move-result-object v0
    :try_end_7
    .catch Lorg/bouncycastle/util/test/TestFailedException; {:try_start_0 .. :try_end_7} :catch_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lorg/bouncycastle/util/test/SimpleTestResult;->failed(Lorg/bouncycastle/util/test/Test;Ljava/lang/String;Ljava/lang/Throwable;)Lorg/bouncycastle/util/test/TestResult;

    move-result-object v0

    return-object v0

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Lorg/bouncycastle/util/test/TestFailedException;->getResult()Lorg/bouncycastle/util/test/TestResult;

    move-result-object v0

    return-object v0
.end method

.method public abstract performTest()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
