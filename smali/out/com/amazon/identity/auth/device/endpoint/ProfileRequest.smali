.class public Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;
.super Lcom/amazon/identity/auth/device/endpoint/AbstractPandaGetRequest;
.source "ProfileRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/endpoint/AbstractPandaGetRequest<",
        "Lcom/amazon/identity/auth/device/endpoint/ProfileResponse;",
        ">;"
    }
.end annotation


# static fields
.field protected static final API_PREFIX_DEVO_SANDBOX:Ljava/lang/String; = "api-sandbox.integ"

.field protected static final API_PREFIX_PRE_PROD_SANDBOX:Ljava/lang/String; = "api.sandbox"

.field protected static final API_PREFIX_PROD_SANDBOX:Ljava/lang/String; = "api.sandbox"

.field private static final AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field private static final BEARER_PREFIX:Ljava/lang/String; = "Bearer "

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.endpoint.ProfileRequest"

.field private static final PROFILE_ENDPOINT:Ljava/lang/String; = "/user/profile"


# instance fields
.field private authzToken:Ljava/lang/String;

.field private sandboxMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Ljava/lang/String;Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V
    .registers 5

    .line 29
    invoke-direct {p0, p3, p4}, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaGetRequest;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V

    .line 30
    iput-object p2, p0, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->authzToken:Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 32
    sget-object p2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->SANDBOX:Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;

    iget-object p2, p2, Lcom/amazon/identity/auth/device/authorization/api/AuthzConstants$BUNDLE_KEY;->val:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->sandboxMode:Z

    :cond_12
    return-void
.end method


# virtual methods
.method protected generateResponse(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)Lcom/amazon/identity/auth/device/endpoint/ProfileResponse;
    .registers 3

    .line 38
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/ProfileResponse;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/endpoint/ProfileResponse;-><init>(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)V

    return-object v0
.end method

.method protected bridge synthetic generateResponse(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)Lcom/amazon/identity/auth/device/endpoint/Response;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->generateResponse(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)Lcom/amazon/identity/auth/device/endpoint/ProfileResponse;

    move-result-object p1

    return-object p1
.end method

.method protected getEndPoint()Ljava/lang/String;
    .registers 2

    const-string v0, "/user/profile"

    return-object v0
.end method

.method protected getExtraHeaders()Ljava/util/List;
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

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->authzToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Authorization"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getExtraParameters()Ljava/util/List;
    .registers 2
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

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected isSandboxEnabled()Z
    .registers 2

    .line 60
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->sandboxMode:Z

    return v0
.end method

.method protected logRequest()V
    .registers 4

    .line 65
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/ProfileRequest;->authzToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Executing profile request"

    invoke-static {v0, v2, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
