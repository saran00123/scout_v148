.class Lcom/huawei/hms/api/HuaweiApiClientImpl$e;
.super Lcom/huawei/hms/support/api/PendingResultImpl;
.source "HuaweiApiClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/api/HuaweiApiClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/support/api/PendingResultImpl<",
        "Lcom/huawei/hms/support/api/client/Status;",
        "Lcom/huawei/hms/core/aidl/IMessageEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/support/api/PendingResultImpl;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/support/api/client/Result;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl$e;->onComplete(Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/support/api/client/Status;

    move-result-object p1

    return-object p1
.end method

.method public onComplete(Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/support/api/client/Status;
    .registers 3

    .line 2
    new-instance p1, Lcom/huawei/hms/support/api/client/Status;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    return-object p1
.end method
