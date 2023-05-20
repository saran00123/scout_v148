.class public Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;
.super Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;
.source "JWSAlgorithmFamilyJWSKeySelector.java"

# interfaces
.implements Lcom/nimbusds/jose/proc/JWSKeySelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource<",
        "TC;>;",
        "Lcom/nimbusds/jose/proc/JWSKeySelector<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final selectors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            "Lcom/nimbusds/jose/proc/JWSKeySelector<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWSAlgorithm$Family;Lcom/nimbusds/jose/jwk/source/JWKSource;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSAlgorithm$Family;",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p2}, Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;->selectors:Ljava/util/Map;

    if-eqz p1, :cond_28

    .line 61
    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSAlgorithm$Family;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nimbusds/jose/JWSAlgorithm;

    .line 62
    iget-object v1, p0, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;->selectors:Ljava/util/Map;

    new-instance v2, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;

    invoke-direct {v2, v0, p2}, Lcom/nimbusds/jose/proc/JWSVerificationKeySelector;-><init>(Lcom/nimbusds/jose/JWSAlgorithm;Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_27
    return-void

    .line 59
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "JWS algorithm family must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static fromJWKSetURL(Ljava/net/URL;)Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/nimbusds/jose/proc/SecurityContext;",
            ">(",
            "Ljava/net/URL;",
            ")",
            "Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector<",
            "TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/jwk/source/RemoteJWKSet;-><init>(Ljava/net/URL;)V

    .line 96
    invoke-static {v0}, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;->fromJWKSource(Lcom/nimbusds/jose/jwk/source/JWKSource;)Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;

    move-result-object p0

    return-object p0
.end method

.method public static fromJWKSource(Lcom/nimbusds/jose/jwk/source/JWKSource;)Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/nimbusds/jose/proc/SecurityContext;",
            ">(",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)",
            "Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector<",
            "TC;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    invoke-direct {v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;-><init>()V

    const/4 v1, 0x1

    .line 117
    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->publicOnly(Z)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [Lcom/nimbusds/jose/jwk/KeyUse;

    sget-object v4, Lcom/nimbusds/jose/jwk/KeyUse;->SIGNATURE:Lcom/nimbusds/jose/jwk/KeyUse;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 118
    invoke-virtual {v0, v3}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyUses([Lcom/nimbusds/jose/jwk/KeyUse;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    new-array v2, v2, [Lcom/nimbusds/jose/jwk/KeyType;

    sget-object v3, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    aput-object v3, v2, v1

    .line 119
    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->keyTypes([Lcom/nimbusds/jose/jwk/KeyType;)Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/nimbusds/jose/jwk/JWKMatcher$Builder;->build()Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object v0

    .line 121
    new-instance v1, Lcom/nimbusds/jose/jwk/JWKSelector;

    invoke-direct {v1, v0}, Lcom/nimbusds/jose/jwk/JWKSelector;-><init>(Lcom/nimbusds/jose/jwk/JWKMatcher;)V

    invoke-interface {p0, v1, v4}, Lcom/nimbusds/jose/jwk/source/JWKSource;->get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nimbusds/jose/jwk/JWK;

    .line 123
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyType;->RSA:Lcom/nimbusds/jose/jwk/KeyType;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 124
    new-instance v0, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;

    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->RSA:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;-><init>(Lcom/nimbusds/jose/JWSAlgorithm$Family;Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    return-object v0

    .line 126
    :cond_58
    sget-object v2, Lcom/nimbusds/jose/jwk/KeyType;->EC:Lcom/nimbusds/jose/jwk/KeyType;

    invoke-virtual {v1}, Lcom/nimbusds/jose/jwk/JWK;->getKeyType()Lcom/nimbusds/jose/jwk/KeyType;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/nimbusds/jose/jwk/KeyType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 127
    new-instance v0, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;

    sget-object v1, Lcom/nimbusds/jose/JWSAlgorithm$Family;->EC:Lcom/nimbusds/jose/JWSAlgorithm$Family;

    invoke-direct {v0, v1, p0}, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;-><init>(Lcom/nimbusds/jose/JWSAlgorithm$Family;Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    return-object v0

    .line 130
    :cond_6c
    new-instance p0, Lcom/nimbusds/jose/KeySourceException;

    const-string v0, "Couldn\'t retrieve JWKs"

    invoke-direct {p0, v0}, Lcom/nimbusds/jose/KeySourceException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;
    .registers 2

    .line 42
    invoke-super {p0}, Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;->getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;

    move-result-object v0

    return-object v0
.end method

.method public selectJWSKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWSHeader;",
            "TC;)",
            "Ljava/util/List<",
            "+",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JWSAlgorithmFamilyJWSKeySelector;->selectors:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWSHeader;->getAlgorithm()Lcom/nimbusds/jose/JWSAlgorithm;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nimbusds/jose/proc/JWSKeySelector;

    if-nez v0, :cond_13

    .line 73
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 75
    :cond_13
    invoke-interface {v0, p1, p2}, Lcom/nimbusds/jose/proc/JWSKeySelector;->selectJWSKeys(Lcom/nimbusds/jose/JWSHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
