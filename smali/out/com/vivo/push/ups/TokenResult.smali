.class public Lcom/vivo/push/ups/TokenResult;
.super Lcom/vivo/push/ups/CodeResult;
.source "TokenResult.java"


# annotations
.annotation build Lcom/vivo/push/NoPorGuard;
.end annotation


# instance fields
.field token:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/vivo/push/ups/CodeResult;-><init>(I)V

    .line 15
    iput-object p2, p0, Lcom/vivo/push/ups/TokenResult;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/vivo/push/ups/TokenResult;->token:Ljava/lang/String;

    return-object v0
.end method
