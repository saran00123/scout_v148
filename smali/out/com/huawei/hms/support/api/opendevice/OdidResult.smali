.class public Lcom/huawei/hms/support/api/opendevice/OdidResult;
.super Lcom/huawei/hms/support/api/client/Result;
.source "OdidResult.java"


# instance fields
.field public id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/support/api/client/Result;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/support/api/opendevice/OdidResult;->id:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/support/api/opendevice/OdidResult;->id:Ljava/lang/String;

    return-void
.end method
