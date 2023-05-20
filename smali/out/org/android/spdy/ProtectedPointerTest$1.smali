.class final Lorg/android/spdy/ProtectedPointerTest$1;
.super Ljava/lang/Object;
.source "ProtectedPointerTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/spdy/ProtectedPointerTest;->test_close_with_work(Lorg/android/spdy/ProtectedPointer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pptr:Lorg/android/spdy/ProtectedPointer;


# direct methods
.method constructor <init>(Lorg/android/spdy/ProtectedPointer;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lorg/android/spdy/ProtectedPointerTest$1;->val$pptr:Lorg/android/spdy/ProtectedPointer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_28

    .line 40
    iget-object v1, p0, Lorg/android/spdy/ProtectedPointerTest$1;->val$pptr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {v1}, Lorg/android/spdy/ProtectedPointer;->enter()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 41
    iget-object v1, p0, Lorg/android/spdy/ProtectedPointerTest$1;->val$pptr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {v1}, Lorg/android/spdy/ProtectedPointer;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/android/spdy/ProtectedPointerTest$Data;

    .line 42
    invoke-virtual {v1}, Lorg/android/spdy/ProtectedPointerTest$Data;->work()V

    .line 43
    iget-object v1, p0, Lorg/android/spdy/ProtectedPointerTest$1;->val$pptr:Lorg/android/spdy/ProtectedPointer;

    invoke-virtual {v1}, Lorg/android/spdy/ProtectedPointer;->exit()V

    goto :goto_25

    .line 45
    :cond_1e
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "the data has been destroy"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_28
    return-void
.end method
