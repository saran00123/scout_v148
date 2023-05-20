.class public final Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;
.super Ljava/lang/Object;
.source "CreateCodePairRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest$Builder;
    }
.end annotation


# instance fields
.field private mListener:Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;

.field private mRequestContext:Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

.field private mScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/api/authorization/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_f

    .line 28
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;->mRequestContext:Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;->mScopes:Ljava/util/List;

    return-void

    .line 26
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "requestContext must be non-null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest$1;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;-><init>(Lcom/amazon/identity/auth/device/api/workflow/RequestContext;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;->mListener:Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;

    return-void
.end method

.method public addScope(Lcom/amazon/identity/auth/device/api/authorization/Scope;)V
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;->mScopes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addScopes([Lcom/amazon/identity/auth/device/api/authorization/Scope;)V
    .registers 3

    .line 41
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;->mScopes:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public getAppInfo()Lcom/amazon/identity/auth/device/dataobject/AppInfo;
    .registers 4

    .line 49
    new-instance v0, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;

    invoke-direct {v0}, Lcom/amazon/identity/auth/device/appid/ThirdPartyAppIdentifier;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/identity/auth/device/appid/AppIdentifier;->getAppInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;->mRequestContext:Lcom/amazon/identity/auth/device/api/workflow/RequestContext;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/workflow/RequestContext;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getListener()Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;->mListener:Lcom/amazon/identity/auth/device/api/authorization/CodePairListener;

    return-object v0
.end method

.method public getScopes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/identity/auth/device/api/authorization/Scope;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/authorization/CreateCodePairRequest;->mScopes:Ljava/util/List;

    return-object v0
.end method
