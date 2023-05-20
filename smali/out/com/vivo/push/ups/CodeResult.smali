.class public Lcom/vivo/push/ups/CodeResult;
.super Ljava/lang/Object;
.source "CodeResult.java"


# annotations
.annotation build Lcom/vivo/push/NoPorGuard;
.end annotation


# instance fields
.field returnCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/vivo/push/ups/CodeResult;->returnCode:I

    return-void
.end method


# virtual methods
.method public getReturnCode()I
    .registers 2

    .line 17
    iget v0, p0, Lcom/vivo/push/ups/CodeResult;->returnCode:I

    return v0
.end method
