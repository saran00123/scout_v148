.class public abstract Lcom/nimbusds/jose/crypto/impl/BaseJWSProvider;
.super Ljava/lang/Object;
.source "BaseJWSProvider.java"

# interfaces
.implements Lcom/nimbusds/jose/JWSProvider;


# instance fields
.field private final algs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ">;"
        }
    .end annotation
.end field

.field private final jcaContext:Lcom/nimbusds/jose/jca/JCAContext;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/nimbusds/jose/jca/JCAContext;

    invoke-direct {v0}, Lcom/nimbusds/jose/jca/JCAContext;-><init>()V

    iput-object v0, p0, Lcom/nimbusds/jose/crypto/impl/BaseJWSProvider;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    if-eqz p1, :cond_13

    .line 62
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/nimbusds/jose/crypto/impl/BaseJWSProvider;->algs:Ljava/util/Set;

    return-void

    .line 59
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The supported JWS algorithm set must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getJCAContext()Lcom/nimbusds/jose/jca/JCAContext;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/impl/BaseJWSProvider;->jcaContext:Lcom/nimbusds/jose/jca/JCAContext;

    return-object v0
.end method

.method public supportedJWSAlgorithms()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nimbusds/jose/JWSAlgorithm;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/nimbusds/jose/crypto/impl/BaseJWSProvider;->algs:Ljava/util/Set;

    return-object v0
.end method
