.class public interface abstract Lcom/nimbusds/jose/jwk/AsymmetricJWK;
.super Ljava/lang/Object;
.source "AsymmetricJWK.java"


# virtual methods
.method public abstract matches(Ljava/security/cert/X509Certificate;)Z
.end method

.method public abstract toKeyPair()Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation
.end method

.method public abstract toPrivateKey()Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation
.end method

.method public abstract toPublicKey()Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/JOSEException;
        }
    .end annotation
.end method
