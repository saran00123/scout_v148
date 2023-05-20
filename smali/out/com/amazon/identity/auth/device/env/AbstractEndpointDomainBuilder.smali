.class public abstract Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;
.super Ljava/lang/Object;
.source "AbstractEndpointDomainBuilder.java"


# static fields
.field private static final HTTPS:Ljava/lang/String; = "https://"

.field static final REGULAR:Z = false

.field static final SANDBOX:Z = true

.field private static allDomainsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static domainToRegionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/api/authorization/Region;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isSandbox:Z

.field private pandaEndpointFromAPIKey:Ljava/lang/String;

.field private region:Lcom/amazon/identity/auth/device/api/authorization/Region;

.field private service:Lcom/amazon/identity/auth/device/authorization/Service;

.field protected stage:Lcom/amazon/identity/auth/device/authorization/Stage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->allDomainsMap:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->domainToRegionMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/dataobject/AppInfo;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/amazon/identity/auth/device/authorization/Stage;->PROD:Lcom/amazon/identity/auth/device/authorization/Stage;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->stage:Lcom/amazon/identity/auth/device/authorization/Stage;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->isSandbox:Z

    .line 29
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/Region;->NA:Lcom/amazon/identity/auth/device/api/authorization/Region;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->region:Lcom/amazon/identity/auth/device/api/authorization/Region;

    .line 57
    invoke-static {p1}, Lcom/amazon/identity/auth/device/StoredPreferences;->getRegion(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/authorization/Region;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->region:Lcom/amazon/identity/auth/device/api/authorization/Region;

    if-eqz p2, :cond_1c

    .line 59
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/dataobject/AppInfo;->getExchangeHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->pandaEndpointFromAPIKey:Ljava/lang/String;

    :cond_1c
    return-void
.end method

.method static addEndpoint(Lcom/amazon/identity/auth/device/authorization/Service;Lcom/amazon/identity/auth/device/authorization/Stage;ZLcom/amazon/identity/auth/device/api/authorization/Region;Ljava/lang/String;)V
    .registers 5

    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->getKey(Lcom/amazon/identity/auth/device/authorization/Service;Lcom/amazon/identity/auth/device/authorization/Stage;ZLcom/amazon/identity/auth/device/api/authorization/Region;)Ljava/lang/String;

    move-result-object p1

    .line 49
    sget-object p2, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->allDomainsMap:Ljava/util/Map;

    invoke-interface {p2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object p1, Lcom/amazon/identity/auth/device/api/authorization/Region;->AUTO:Lcom/amazon/identity/auth/device/api/authorization/Region;

    if-eq p1, p3, :cond_16

    sget-object p1, Lcom/amazon/identity/auth/device/authorization/Service;->PANDA:Lcom/amazon/identity/auth/device/authorization/Service;

    if-ne p1, p0, :cond_16

    .line 52
    sget-object p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->domainToRegionMap:Ljava/util/Map;

    invoke-interface {p0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    return-void
.end method

.method private getDomainFor(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getKey(Lcom/amazon/identity/auth/device/authorization/Service;Lcom/amazon/identity/auth/device/authorization/Stage;ZLcom/amazon/identity/auth/device/api/authorization/Region;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x4

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/authorization/Service;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 38
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/authorization/Stage;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 39
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    .line 40
    invoke-virtual {p3}, Lcom/amazon/identity/auth/device/api/authorization/Region;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    const-string p0, "%s.%s.%s.%s"

    .line 36
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public forRegion(Lcom/amazon/identity/auth/device/api/authorization/Region;)Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->region:Lcom/amazon/identity/auth/device/api/authorization/Region;

    return-object p0
.end method

.method public forSandbox(Z)Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;
    .registers 2

    .line 91
    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->isSandbox:Z

    return-object p0
.end method

.method public forService(Lcom/amazon/identity/auth/device/authorization/Service;)Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->service:Lcom/amazon/identity/auth/device/authorization/Service;

    return-object p0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 5

    .line 77
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/Region;->AUTO:Lcom/amazon/identity/auth/device/api/authorization/Region;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->region:Lcom/amazon/identity/auth/device/api/authorization/Region;

    if-ne v0, v1, :cond_c

    .line 78
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->getRegionForAPIKey()Lcom/amazon/identity/auth/device/api/authorization/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->region:Lcom/amazon/identity/auth/device/api/authorization/Region;

    .line 81
    :cond_c
    iget-object v0, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->service:Lcom/amazon/identity/auth/device/authorization/Service;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->stage:Lcom/amazon/identity/auth/device/authorization/Stage;

    iget-boolean v2, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->isSandbox:Z

    iget-object v3, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->region:Lcom/amazon/identity/auth/device/api/authorization/Region;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->getKey(Lcom/amazon/identity/auth/device/authorization/Service;Lcom/amazon/identity/auth/device/authorization/Stage;ZLcom/amazon/identity/auth/device/api/authorization/Region;)Ljava/lang/String;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->allDomainsMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRegionForAPIKey()Lcom/amazon/identity/auth/device/api/authorization/Region;
    .registers 4

    .line 65
    sget-object v0, Lcom/amazon/identity/auth/device/api/authorization/Region;->NA:Lcom/amazon/identity/auth/device/api/authorization/Region;

    .line 67
    :try_start_2
    iget-object v1, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->pandaEndpointFromAPIKey:Ljava/lang/String;

    if-eqz v1, :cond_15

    .line 68
    sget-object v1, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->domainToRegionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->pandaEndpointFromAPIKey:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/amazon/identity/auth/device/env/AbstractEndpointDomainBuilder;->getDomainFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/api/authorization/Region;
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_14} :catch_15

    move-object v0, v1

    :catch_15
    :cond_15
    return-object v0
.end method
