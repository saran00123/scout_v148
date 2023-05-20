.class public Lcom/vivo/push/util/VivoPushException;
.super Ljava/lang/Exception;
.source "VivoPushException.java"


# annotations
.annotation build Lcom/vivo/push/NoPorGuard;
.end annotation


# static fields
.field public static final REASON_CODE_ACCESS:I = 0x2710


# instance fields
.field private mReasonCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 21
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 22
    iput p1, p0, Lcom/vivo/push/util/VivoPushException;->mReasonCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x2710

    .line 17
    invoke-direct {p0, v0, p1}, Lcom/vivo/push/util/VivoPushException;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/vivo/push/util/VivoPushException;->mReasonCode:I

    return v0
.end method
