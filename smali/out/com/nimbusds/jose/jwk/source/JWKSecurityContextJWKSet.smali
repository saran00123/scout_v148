.class public Lcom/nimbusds/jose/jwk/source/JWKSecurityContextJWKSet;
.super Ljava/lang/Object;
.source "JWKSecurityContextJWKSet.java"

# interfaces
.implements Lcom/nimbusds/jose/jwk/source/JWKSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nimbusds/jose/jwk/source/JWKSource<",
        "Lcom/nimbusds/jose/proc/JWKSecurityContext;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/JWKSecurityContext;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/JWKSelector;",
            "Lcom/nimbusds/jose/proc/JWKSecurityContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    if-eqz p2, :cond_10

    .line 47
    new-instance v0, Lcom/nimbusds/jose/jwk/JWKSet;

    invoke-virtual {p2}, Lcom/nimbusds/jose/proc/JWKSecurityContext;->getKeys()Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/nimbusds/jose/jwk/JWKSet;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/jwk/JWKSelector;->select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 44
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Security Context must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 36
    check-cast p2, Lcom/nimbusds/jose/proc/JWKSecurityContext;

    invoke-virtual {p0, p1, p2}, Lcom/nimbusds/jose/jwk/source/JWKSecurityContextJWKSet;->get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/JWKSecurityContext;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
