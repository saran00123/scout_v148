.class public final Lcom/google/android/exoplayer2/ExoTimeoutException;
.super Ljava/lang/Exception;
.source "ExoTimeoutException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ExoTimeoutException$TimeoutOperation;
    }
.end annotation


# static fields
.field public static final TIMEOUT_OPERATION_DETACH_SURFACE:I = 0x3

.field public static final TIMEOUT_OPERATION_RELEASE:I = 0x1

.field public static final TIMEOUT_OPERATION_SET_FOREGROUND_MODE:I = 0x2

.field public static final TIMEOUT_OPERATION_UNDEFINED:I


# instance fields
.field public final timeoutOperation:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 60
    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoTimeoutException;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    iput p1, p0, Lcom/google/android/exoplayer2/ExoTimeoutException;->timeoutOperation:I

    return-void
.end method

.method private static getErrorMessage(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const-string p0, "Undefined timeout."

    return-object p0

    :cond_c
    const-string p0, "Detaching surface timed out."

    return-object p0

    :cond_f
    const-string p0, "Setting foreground mode timed out."

    return-object p0

    :cond_12
    const-string p0, "Player release timed out."

    return-object p0
.end method
