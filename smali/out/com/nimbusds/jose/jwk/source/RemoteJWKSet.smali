.class public Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;
.super Ljava/lang/Object;
.source "RemoteJWKSet.java"

# interfaces
.implements Lcom/nimbusds/jose/jwk/source/JWKSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/jwk/source/JWKSource<",
        "TC;>;"
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field public static final DEFAULT_HTTP_CONNECT_TIMEOUT:I = 0x1f4

.field public static final DEFAULT_HTTP_READ_TIMEOUT:I = 0x1f4

.field public static final DEFAULT_HTTP_SIZE_LIMIT:I = 0xc800


# instance fields
.field private final jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

.field private final jwkSetRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

.field private final jwkSetURL:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .registers 3

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;-><init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;)V
    .registers 4

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, v0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;-><init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;Lcom/nimbusds/jose/jwk/source/JWKSetCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/nimbusds/jose/util/ResourceRetriever;Lcom/nimbusds/jose/jwk/source/JWKSetCache;)V
    .registers 5

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_25

    .line 138
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetURL:Ljava/net/URL;

    if-eqz p2, :cond_c

    .line 141
    iput-object p2, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

    goto :goto_18

    .line 143
    :cond_c
    new-instance p1, Lcom/nimbusds/jose/util/DefaultResourceRetriever;

    const p2, 0xc800

    const/16 v0, 0x1f4

    invoke-direct {p1, v0, v0, p2}, Lcom/nimbusds/jose/util/DefaultResourceRetriever;-><init>(III)V

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

    :goto_18
    if-eqz p3, :cond_1d

    .line 147
    iput-object p3, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    goto :goto_24

    .line 149
    :cond_1d
    new-instance p1, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;

    invoke-direct {p1}, Lcom/nimbusds/jose/jwk/source/DefaultJWKSetCache;-><init>()V

    iput-object p1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    :goto_24
    return-void

    .line 136
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWK set URL must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static getFirstSpecifiedKeyID(Lcom/nimbusds/jose/jwk/JWKMatcher;)Ljava/lang/String;
    .registers 3

    .line 233
    invoke-virtual {p0}, Lcom/nimbusds/jose/jwk/JWKMatcher;->getKeyIDs()Ljava/util/Set;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_21

    .line 235
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_21

    .line 239
    :cond_e
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_12

    return-object v1

    :cond_21
    :goto_21
    return-object v0
.end method

.method private updateJWKSetFromURL()Lcom/nimbusds/jose/jwk/JWKSet;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/RemoteKeySourceException;
        }
    .end annotation

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetURL:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/nimbusds/jose/util/ResourceRetriever;->retrieveResource(Ljava/net/URL;)Lcom/nimbusds/jose/util/Resource;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_32

    .line 171
    :try_start_8
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/Resource;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/jwk/JWKSet;->parse(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object v0
    :try_end_10
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_10} :catch_16

    .line 175
    iget-object v1, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    invoke-interface {v1, v0}, Lcom/nimbusds/jose/jwk/source/JWKSetCache;->put(Lcom/nimbusds/jose/jwk/JWKSet;)V

    return-object v0

    :catch_16
    move-exception v0

    .line 173
    new-instance v1, Lcom/nimbusds/jose/RemoteKeySourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t parse remote JWK set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nimbusds/jose/RemoteKeySourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_32
    move-exception v0

    .line 167
    new-instance v1, Lcom/nimbusds/jose/RemoteKeySourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t retrieve remote JWK set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nimbusds/jose/RemoteKeySourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/JWKSelector;",
            "TC;)",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/RemoteKeySourceException;
        }
    .end annotation

    .line 256
    iget-object p2, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    invoke-interface {p2}, Lcom/nimbusds/jose/jwk/source/JWKSetCache;->get()Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p2

    .line 257
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    invoke-interface {v0}, Lcom/nimbusds/jose/jwk/source/JWKSetCache;->requiresRefresh()Z

    move-result v0

    if-nez v0, :cond_10

    if-nez p2, :cond_18

    .line 260
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->updateJWKSetFromURL()Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_15

    goto :goto_18

    :catch_15
    move-exception v0

    if-eqz p2, :cond_4d

    .line 270
    :cond_18
    :goto_18
    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/jwk/JWKSelector;->select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;

    move-result-object v0

    .line 272
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    return-object v0

    .line 280
    :cond_23
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKSelector;->getMatcher()Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->getFirstSpecifiedKeyID(Lcom/nimbusds/jose/jwk/JWKMatcher;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_32

    .line 283
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 286
    :cond_32
    invoke-virtual {p2, v0}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeyByKeyId(Ljava/lang/String;)Lcom/nimbusds/jose/jwk/JWK;

    move-result-object p2

    if-eqz p2, :cond_3d

    .line 289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 293
    :cond_3d
    invoke-direct {p0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->updateJWKSetFromURL()Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object p2

    if-nez p2, :cond_48

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 300
    :cond_48
    invoke-virtual {p1, p2}, Lcom/nimbusds/jose/jwk/JWKSelector;->select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 264
    :cond_4d
    throw v0
.end method

.method public getCachedJWKSet()Lcom/nimbusds/jose/jwk/JWKSet;
    .registers 2

    .line 220
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    invoke-interface {v0}, Lcom/nimbusds/jose/jwk/source/JWKSetCache;->get()Lcom/nimbusds/jose/jwk/JWKSet;

    move-result-object v0

    return-object v0
.end method

.method public getJWKSetCache()Lcom/nimbusds/jose/jwk/source/JWKSetCache;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetCache:Lcom/nimbusds/jose/jwk/source/JWKSetCache;

    return-object v0
.end method

.method public getJWKSetURL()Ljava/net/URL;
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetURL:Ljava/net/URL;

    return-object v0
.end method

.method public getResourceRetriever()Lcom/nimbusds/jose/util/ResourceRetriever;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;->jwkSetRetriever:Lcom/nimbusds/jose/util/ResourceRetriever;

    return-object v0
.end method
