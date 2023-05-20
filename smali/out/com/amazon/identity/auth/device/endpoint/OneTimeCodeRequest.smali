.class public Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;
.super Lcom/amazon/identity/auth/device/endpoint/AbstractJsonPandaRequest;
.source "OneTimeCodeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/endpoint/AbstractJsonPandaRequest<",
        "Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCESS_TOKEN_PARAMETER:Ljava/lang/String; = "accessToken"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.endpoint.OneTimeCodeRequest"

.field private static final ONE_TIME_CODE_ENDPOINT:Ljava/lang/String; = "/auth/create/oneTimeCode"

.field private static final WORKFLOW_CLIENT_ID_PARAMETER:Ljava/lang/String; = "workflowClientId"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private workflowClientId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V
    .registers 5

    .line 23
    invoke-direct {p0, p1, p4}, Lcom/amazon/identity/auth/device/endpoint/AbstractJsonPandaRequest;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V

    .line 24
    iput-object p2, p0, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->workflowClientId:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->accessToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 64
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 65
    :cond_13
    check-cast p1, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;

    .line 66
    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->accessToken:Ljava/lang/String;

    if-nez v2, :cond_1e

    iget-object v2, p1, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->accessToken:Ljava/lang/String;

    if-eqz v2, :cond_1e

    return v1

    .line 67
    :cond_1e
    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->accessToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->accessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    return v1

    .line 68
    :cond_29
    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->workflowClientId:Ljava/lang/String;

    if-nez v2, :cond_32

    iget-object v2, p1, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->workflowClientId:Ljava/lang/String;

    if-eqz v2, :cond_32

    return v1

    .line 69
    :cond_32
    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->workflowClientId:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->workflowClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3d

    return v1

    :cond_3d
    return v0
.end method

.method protected generateResponse(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeResponse;
    .registers 3

    .line 43
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeResponse;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeResponse;-><init>(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)V

    return-object v0
.end method

.method protected bridge synthetic generateResponse(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)Lcom/amazon/identity/auth/device/endpoint/Response;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->generateResponse(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeResponse;

    move-result-object p1

    return-object p1
.end method

.method public getEndPoint()Ljava/lang/String;
    .registers 2

    const-string v0, "/auth/create/oneTimeCode"

    return-object v0
.end method

.method protected getExtraParameters()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->workflowClientId:Ljava/lang/String;

    const-string/jumbo v3, "workflowClientId"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->accessToken:Ljava/lang/String;

    const-string v3, "accessToken"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->accessToken:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 56
    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->workflowClientId:Ljava/lang/String;

    if-nez v2, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    return v0
.end method

.method protected logRequest()V
    .registers 5

    .line 48
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing create one time code request. workflowClientId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->workflowClientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accessToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/OneTimeCodeRequest;->accessToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
