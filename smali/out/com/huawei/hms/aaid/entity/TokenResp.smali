.class public Lcom/huawei/hms/aaid/entity/TokenResp;
.super Ljava/lang/Object;
.source "TokenResp.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field public belongId:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field public retCode:I
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field public subjectId:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/aaid/entity/TokenResp;->token:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/huawei/hms/aaid/entity/TokenResp;->retCode:I

    return-void
.end method


# virtual methods
.method public getBelongId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/aaid/entity/TokenResp;->belongId:Ljava/lang/String;

    return-object v0
.end method

.method public getRetCode()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/huawei/hms/aaid/entity/TokenResp;->retCode:I

    return v0
.end method

.method public getSubjectId()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/aaid/entity/TokenResp;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/aaid/entity/TokenResp;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setBelongId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/aaid/entity/TokenResp;->belongId:Ljava/lang/String;

    return-void
.end method

.method public setRetCode(I)V
    .registers 2

    .line 1
    iput p1, p0, Lcom/huawei/hms/aaid/entity/TokenResp;->retCode:I

    return-void
.end method

.method public setSubjectId(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/aaid/entity/TokenResp;->subjectId:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/aaid/entity/TokenResp;->token:Ljava/lang/String;

    return-void
.end method
