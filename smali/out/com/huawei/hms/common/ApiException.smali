.class public Lcom/huawei/hms/common/ApiException;
.super Ljava/lang/Exception;
.source "ApiException.java"


# instance fields
.field protected final mStatus:Lcom/huawei/hms/support/api/client/Status;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/support/api/client/Status;)V
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_1c
    const-string v1, ""

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/common/ApiException;->mStatus:Lcom/huawei/hms/support/api/client/Status;

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/ApiException;->mStatus:Lcom/huawei/hms/support/api/client/Status;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/ApiException;->mStatus:Lcom/huawei/hms/support/api/client/Status;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
