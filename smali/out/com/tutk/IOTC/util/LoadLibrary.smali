.class public Lcom/tutk/IOTC/util/LoadLibrary;
.super Ljava/lang/Object;
.source "LoadLibrary.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LoadLibrary"

.field public static final TRACE:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/lang/String;)V
    .registers 2

    .line 11
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_e

    :catch_4
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LoadLibrary"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    return-void
.end method
