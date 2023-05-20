.class Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenRequest;
.super Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;
.source "OauthCodeForTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest<",
        "Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenResponse;",
        ">;"
    }
.end annotation


# static fields
.field protected static final AUTHORIZATION_CODE_GRANT:Ljava/lang/String; = "authorization_code"

.field protected static final AUTHORIZATION_CODE_PARAM:Ljava/lang/String; = "code"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.endpoint.OauthCodeForTokenRequest"

.field protected static final REDIRECT_URI_PARAM:Ljava/lang/String; = "redirect_uri"


# instance fields
.field private final mCode:Ljava/lang/String;

.field private final mCodeVerifier:Ljava/lang/String;

.field private final mDirectedId:Ljava/lang/String;

.field private final mRedirectUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/dataobject/AppInfo;Landroid/content/Context;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 27
    invoke-direct {p0, p6, p5}, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V

    .line 28
    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenRequest;->mCode:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenRequest;->mRedirectUri:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenRequest;->mDirectedId:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenRequest;->mCodeVerifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected generateResponse(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenResponse;
    .registers 5

    .line 41
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenResponse;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenRequest;->getAppFamilyId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenRequest;->mDirectedId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenResponse;-><init>(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected bridge synthetic generateResponse(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)Lcom/amazon/identity/auth/device/endpoint/Response;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenRequest;->generateResponse(Lcom/amazon/identity/auth/device/endpoint/HttpResponse;)Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenResponse;

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

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenRequest;->mCode:Ljava/lang/String;

    const-string v3, "code"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenRequest;->mRedirectUri:Ljava/lang/String;

    const-string v3, "redirect_uri"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenRequest;->mCodeVerifier:Ljava/lang/String;

    const-string v3, "code_verifier"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getGrantType()Ljava/lang/String;
    .registers 2

    const-string v0, "authorization_code"

    return-object v0
.end method

.method protected logRequest()V
    .registers 5

    .line 58
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing OAuth Code for Token Exchange. redirectUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenRequest;->mRedirectUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenRequest;->getAppFamilyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/endpoint/OauthCodeForTokenRequest;->mCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
