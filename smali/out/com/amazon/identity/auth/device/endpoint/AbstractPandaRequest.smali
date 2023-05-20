.class public abstract Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;
.super Lcom/amazon/identity/auth/device/endpoint/AbstractHTTPSRequest;
.source "AbstractPandaRequest.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "TrustAllX509TrustManager"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/identity/auth/device/endpoint/Response;",
        ">",
        "Lcom/amazon/identity/auth/device/endpoint/AbstractHTTPSRequest<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final AMZN_REQUEST_ID_HEADER:Ljava/lang/String; = "X-Amzn-RequestId"

.field protected static final ANDROID_OS_NAME:Ljava/lang/String; = "Android"

.field protected static final APP_NAME:Ljava/lang/String; = "app_name"

.field protected static final APP_VERSION:Ljava/lang/String; = "app_version"

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field protected static final DI_HW_NAME:Ljava/lang/String; = "di.hw.name"

.field protected static final DI_HW_VERSION:Ljava/lang/String; = "di.hw.version"

.field protected static final DI_OS_NAME:Ljava/lang/String; = "di.os.name"

.field protected static final DI_OS_VERSION:Ljava/lang/String; = "di.os.version"

.field protected static final DI_SDK_VERSION:Ljava/lang/String; = "di.sdk.version"

.field private static final HTTP_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.endpoint.AbstractPandaRequest"

.field private static final MAX_NUM_POST_PARAMS:I = 0xa


# instance fields
.field private appInfo:Lcom/amazon/identity/auth/device/dataobject/AppInfo;

.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private libVersion:Ljava/lang/String;

.field protected final postParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LWAAndroidSDK/3.0.6/Android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->DEFAULT_USER_AGENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractHTTPSRequest;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->context:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->appInfo:Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    .line 63
    invoke-static {p1}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->appName:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/amazon/identity/auth/device/utils/MAPUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->appVersion:Ljava/lang/String;

    const-string p1, "3.0.6"

    .line 65
    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->libVersion:Ljava/lang/String;

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->postParameters:Ljava/util/List;

    return-void
.end method

.method private addAppInfoParameters()V
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->postParameters:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->appName:Ljava/lang/String;

    const-string v3, "app_name"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 113
    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->postParameters:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "app_version"

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    return-void
.end method

.method private addDefaultHeaders()V
    .registers 5

    .line 189
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->headers:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->DEFAULT_USER_AGENT:Ljava/lang/String;

    const-string v3, "User-Agent"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->headers:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Accept-Language"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->headers:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->headers:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->headers:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "X-Amzn-RequestId"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addDeviceParams()V
    .registers 6

    .line 96
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "unknown"

    if-nez v0, :cond_21

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 97
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->postParameters:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "di.hw.name"

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_21
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 100
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->postParameters:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "di.hw.version"

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_3f
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->postParameters:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "di.os.name"

    const-string v4, "Android"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6b

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 104
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->postParameters:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "di.os.version"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_6b
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->postParameters:Ljava/util/List;

    new-instance v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->libVersion:Ljava/lang/String;

    const-string v3, "di.sdk.version"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addExtraHeaders()V
    .registers 3

    .line 203
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->getExtraHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 205
    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->headers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    return-void
.end method

.method private addExtraParameters()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->getExtraParameters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 120
    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->postParameters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    return-void
.end method

.method private getDeviceLanguage()Ljava/lang/String;
    .registers 5

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device Language is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getPostParameters()Ljava/util/List;
    .registers 6
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

    .line 210
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->postParameters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_3d

    .line 212
    sget-object v2, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " val="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Parameter Added to request"

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 214
    :cond_3d
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Parameter Added to request was NULL"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 217
    :cond_45
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->postParameters:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected abstract getEndPoint()Ljava/lang/String;
.end method

.method protected abstract getExtraHeaders()Ljava/util/List;
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

.method protected abstract getExtraParameters()Ljava/util/List;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->getEndPoint()Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->appInfo:Lcom/amazon/identity/auth/device/dataobject/AppInfo;

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/env/LWAEnvironment;->getEndpointDomainBuilder(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;

    move-result-object v1

    .line 83
    sget-object v2, Lcom/amazon/identity/auth/device/authorization/Service;->PANDA:Lcom/amazon/identity/auth/device/authorization/Service;

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->forService(Lcom/amazon/identity/auth/device/authorization/Service;)Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->isSandboxEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->forSandbox(Z)Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeHeaders()V
    .registers 1

    .line 131
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->addDefaultHeaders()V

    .line 132
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->addExtraHeaders()V

    return-void
.end method

.method protected initializePostParams()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->addExtraParameters()V

    .line 90
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->addAppInfoParameters()V

    .line 91
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->addDeviceParams()V

    return-void
.end method

.method protected isSandboxEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected prepareRequestBody()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/AuthError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->getPostParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 169
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_e

    :cond_2f
    if-eqz v2, :cond_33

    const/4 v2, 0x0

    goto :goto_38

    :cond_33
    const-string v4, "&"

    .line 175
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    :goto_38
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    .line 179
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 183
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Request body"

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected setHttpMethod(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    const-string v0, "POST"

    .line 126
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method protected writeBody(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/identity/auth/device/AuthError;
        }
    .end annotation

    const-string v0, "Couldn\'t close write body stream"

    const-string v1, "Couldn\'t flush write body stream"

    const/4 v2, 0x1

    .line 137
    invoke-virtual {p1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->prepareRequestBody()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    return-void

    :cond_13
    const-string v3, "UTF-8"

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 144
    array-length v3, v2

    invoke-virtual {p1, v3}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 146
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 149
    :try_start_21
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_39

    .line 152
    :try_start_24
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_2e

    :catch_28
    move-exception v2

    .line 154
    sget-object v3, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    :goto_2e
    :try_start_2e
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_38

    :catch_32
    move-exception p1

    .line 160
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_38
    return-void

    :catchall_39
    move-exception v2

    .line 152
    :try_start_3a
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_44

    :catch_3e
    move-exception v3

    .line 154
    sget-object v4, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v1, v3}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    :goto_44
    :try_start_44
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_4e

    :catch_48
    move-exception p1

    .line 160
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/AbstractPandaRequest;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    :goto_4e
    throw v2
.end method
