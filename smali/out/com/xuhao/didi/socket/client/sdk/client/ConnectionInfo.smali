.class public final Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;
.super Ljava/lang/Object;
.source "ConnectionInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private mBackupInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

.field private mIp:Ljava/lang/String;

.field private mPort:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->mIp:Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->mPort:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;
    .registers 4

    .line 66
    new-instance v0, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    iget-object v1, p0, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->mIp:Ljava/lang/String;

    iget v2, p0, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->mPort:I

    invoke-direct {v0, v1, v2}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;-><init>(Ljava/lang/String;I)V

    .line 67
    iget-object v1, p0, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->mBackupInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    if-eqz v1, :cond_14

    .line 68
    invoke-virtual {v1}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->clone()Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->setBackupInfo(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;)V

    :cond_14
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->clone()Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 76
    :cond_4
    instance-of v0, p1, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 78
    :cond_a
    check-cast p1, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    .line 80
    iget v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->mPort:I

    iget v2, p1, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->mPort:I

    if-eq v0, v2, :cond_13

    return v1

    .line 81
    :cond_13
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->mIp:Ljava/lang/String;

    iget-object p1, p1, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->mIp:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBackupInfo()Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->mBackupInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->mPort:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->mIp:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget v1, p0, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->mPort:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setBackupInfo(Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;->mBackupInfo:Lcom/xuhao/didi/socket/client/sdk/client/ConnectionInfo;

    return-void
.end method
