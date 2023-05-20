.class abstract Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;
.super Ljava/lang/Object;
.source "AbstractJWKSelectorWithSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# instance fields
.field private final jwkSource:Lcom/nimbusds/jose/jwk/source/JWKSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/jwk/source/JWKSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    .line 50
    iput-object p1, p0, Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;->jwkSource:Lcom/nimbusds/jose/jwk/source/JWKSource;

    return-void

    .line 48
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The JWK source must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;->jwkSource:Lcom/nimbusds/jose/jwk/source/JWKSource;

    return-object v0
.end method
