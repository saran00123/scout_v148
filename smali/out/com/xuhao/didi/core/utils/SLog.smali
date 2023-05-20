.class public Lcom/xuhao/didi/core/utils/SLog;
.super Ljava/lang/Object;
.source "SLog.java"


# static fields
.field private static isDebug:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 4

    .line 20
    sget-boolean v0, Lcom/xuhao/didi/core/utils/SLog;->isDebug:Z

    if-eqz v0, :cond_1a

    .line 21
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OkSocket, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 4

    .line 26
    sget-boolean v0, Lcom/xuhao/didi/core/utils/SLog;->isDebug:Z

    if-eqz v0, :cond_1a

    .line 27
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OkSocket, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public static isDebug()Z
    .registers 1

    .line 16
    sget-boolean v0, Lcom/xuhao/didi/core/utils/SLog;->isDebug:Z

    return v0
.end method

.method public static setIsDebug(Z)V
    .registers 1

    .line 12
    sput-boolean p0, Lcom/xuhao/didi/core/utils/SLog;->isDebug:Z

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 1

    .line 32
    invoke-static {p0}, Lcom/xuhao/didi/core/utils/SLog;->i(Ljava/lang/String;)V

    return-void
.end method
