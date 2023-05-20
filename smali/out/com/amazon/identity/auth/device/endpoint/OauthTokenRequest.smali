.class Lcom/amazon/identity/auth/device/endpoint/OauthTokenRequest;
.super Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;
.source "OauthTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest<",
        "Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.endpoint.OauthTokenRequest"

.field protected static final REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field protected static final REFRESH_TOKEN_GRANT:Ljava/lang/String; = "refresh_token"


# instance fields
.field private final mRefreshToken:Lcom/amazon/identity/auth/device/token/RefreshAtzToken;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/token/RefreshAtzToken;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p3}, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V

    .line 25
    iput-object p2, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenRequest;->mRefreshToken:Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    return-void
.end method


# virtual methods
.method protected generateResponse(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;
    .registers 5

    .line 35
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenRequest;->getAppFamilyId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;-><init>(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic generateResponse(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)Lcom/amazon/identity/auth/device/endpoint/Response;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenRequest;->generateResponse(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)Lcom/amazon/identity/auth/device/endpoint/OauthTokenResponse;

    move-result-object p1

    return-object p1
.end method

.method protected getExtraOauthTokenRequestParameters()Ljava/util/List;
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

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenRequest;->mRefreshToken:Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "refresh_token"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getGrantType()Ljava/lang/String;
    .registers 2

    const-string v0, "refresh_token"

    return-object v0
.end method

.method protected logRequest()V
    .registers 5

    .line 47
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing OAuth access token exchange. appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/OauthTokenRequest;->getAppFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshAtzToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/OauthTokenRequest;->mRefreshToken:Lcom/amazon/identity/auth/device/token/RefreshAtzToken;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/token/RefreshAtzToken;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
