.class public final Lcom/xuhao/didi/core/pojo/OriginalData;
.super Ljava/lang/Object;
.source "OriginalData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mBodyBytes:[B

.field private mHeadBytes:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBodyBytes()[B
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/xuhao/didi/core/pojo/OriginalData;->mBodyBytes:[B

    return-object v0
.end method

.method public getHeadBytes()[B
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/xuhao/didi/core/pojo/OriginalData;->mHeadBytes:[B

    return-object v0
.end method

.method public setBodyBytes([B)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/xuhao/didi/core/pojo/OriginalData;->mBodyBytes:[B

    return-void
.end method

.method public setHeadBytes([B)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/xuhao/didi/core/pojo/OriginalData;->mHeadBytes:[B

    return-void
.end method
