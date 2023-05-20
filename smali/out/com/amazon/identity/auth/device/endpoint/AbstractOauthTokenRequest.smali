.class public abstract Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;
.super Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;
.source "AbstractOauthTokenRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/identity/auth/device/endpoint/Response;",
        ">",
        "Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final APP_CLIENT_ID_PARAM:Ljava/lang/String; = "client_id"

.field protected static final GRANT_TYPE_PARAM:Ljava/lang/String; = "grant_type"

.field protected static final OAUTH_END_POINT:Ljava/lang/String; = "/auth/o2/token"


# instance fields
.field private final appFamilyId:Ljava/lang/String;

.field private final clientId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V

    if-eqz p2, :cond_12

    .line 27
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getAppFamilyId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->appFamilyId:Ljava/lang/String;

    .line 28
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->clientId:Ljava/lang/String;

    return-void

    .line 25
    :cond_12
    new-instance p1, Lcom/amazon/identity/auth/device/AuthError;

    sget-object p2, Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;->ERROR_UNKNOWN:Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;

    const-string v0, "Appinfo can not be null to make an OAuthTokenRequest"

    invoke-direct {p1, v0, p2}, Lcom/amazon/identity/auth/device/AuthError;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/AuthError$ERROR_TYPE;)V

    throw p1
.end method


# virtual methods
.method protected getAppFamilyId()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->appFamilyId:Ljava/lang/String;

    return-object v0
.end method

.method protected getEndPoint()Ljava/lang/String;
    .registers 2

    const-string v0, "/auth/o2/token"

    return-object v0
.end method

.method protected getExtraHeaders()Ljava/util/List;
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

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected abstract getExtraOauthTokenRequestParameters()Ljava/util/List;
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

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->getGrantType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "grant_type"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->clientId:Ljava/lang/String;

    const-string v3, "client_id"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractOauthTokenRequest;->getExtraOauthTokenRequestParameters()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 47
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_28
    return-object v0
.end method

.method protected abstract getGrantType()Ljava/lang/String;
.end method
