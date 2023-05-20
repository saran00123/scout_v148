.class public final Lcom/nimbusds/jose/jwk/JWKSelector;
.super Ljava/lang/Object;
.source "JWKSelector.java"


# annotations
.annotation runtime Lnet/jcip/annotations/Immutable;
.end annotation


# instance fields
.field private final matcher:Lcom/nimbusds/jose/jwk/JWKMatcher;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/JWKMatcher;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 54
    iput-object p1, p0, Lcom/nimbusds/jose/jwk/JWKSelector;->matcher:Lcom/nimbusds/jose/jwk/JWKMatcher;

    return-void

    .line 51
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWK matcher must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getMatcher()Lcom/nimbusds/jose/jwk/JWKMatcher;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/nimbusds/jose/jwk/JWKSelector;->matcher:Lcom/nimbusds/jose/jwk/JWKMatcher;

    return-object v0
.end method

.method public select(Lcom/nimbusds/jose/jwk/JWKSet;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/JWKSet;",
            ")",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/jwk/JWK;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_8

    return-object v0

    .line 85
    :cond_8
    invoke-virtual {p1}, Lcom/nimbusds/jose/jwk/JWKSet;->getKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nimbusds/jose/jwk/JWK;

    .line 87
    iget-object v2, p0, Lcom/nimbusds/jose/jwk/JWKSelector;->matcher:Lcom/nimbusds/jose/jwk/JWKMatcher;

    invoke-virtual {v2, v1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->matches(Lcom/nimbusds/jose/jwk/JWK;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_28
    return-object v0
.end method
