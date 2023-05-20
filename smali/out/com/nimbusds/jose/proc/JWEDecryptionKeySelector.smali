.class public Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;
.super Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;
.source "JWEDecryptionKeySelector.java"

# interfaces
.implements Lcom/nimbusds/jose/proc/JWEKeySelector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/nimbusds/jose/proc/SecurityContext;",
        ">",
        "Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource<",
        "TC;>;",
        "Lcom/nimbusds/jose/proc/JWEKeySelector<",
        "TC;>;"
    }
.end annotation

.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# instance fields
.field private final jweAlg:Lcom/nimbusds/jose/JWEAlgorithm;

.field private final jweEnc:Lcom/nimbusds/jose/EncryptionMethod;


# direct methods
.method public constructor <init>(Lcom/nimbusds/jose/JWEAlgorithm;Lcom/nimbusds/jose/EncryptionMethod;Lcom/nimbusds/jose/jwk/source/JWKSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWEAlgorithm;",
            "Lcom/nimbusds/jose/EncryptionMethod;",
            "Lcom/nimbusds/jose/jwk/source/JWKSource<",
            "TC;>;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p3}, Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;-><init>(Lcom/nimbusds/jose/jwk/source/JWKSource;)V

    if-eqz p1, :cond_14

    .line 77
    iput-object p1, p0, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->jweAlg:Lcom/nimbusds/jose/JWEAlgorithm;

    if-eqz p2, :cond_c

    .line 81
    iput-object p2, p0, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->jweEnc:Lcom/nimbusds/jose/EncryptionMethod;

    return-void

    .line 79
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWE encryption method must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The JWE algorithm must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected createJWKMatcher(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;
    .registers 5

    .line 115
    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->getExpectedJWEAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    .line 119
    :cond_10
    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->getExpectedJWEEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nimbusds/jose/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    return-object v1

    .line 123
    :cond_1f
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/JWKMatcher;->forJWEHeader(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object p1

    return-object p1
.end method

.method public getExpectedJWEAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->jweAlg:Lcom/nimbusds/jose/JWEAlgorithm;

    return-object v0
.end method

.method public getExpectedJWEEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->jweEnc:Lcom/nimbusds/jose/EncryptionMethod;

    return-object v0
.end method

.method public bridge synthetic getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;
    .registers 2

    .line 44
    invoke-super {p0}, Lcom/nimbusds/jose/proc/AbstractJWKSelectorWithSource;->getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;

    move-result-object v0

    return-object v0
.end method

.method public selectJWEKeys(Lcom/nimbusds/jose/JWEHeader;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nimbusds/jose/JWEHeader;",
            "TC;)",
            "Ljava/util/List<",
            "Ljava/security/Key;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nimbusds/jose/KeySourceException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->jweAlg:Lcom/nimbusds/jose/JWEAlgorithm;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getAlgorithm()Lcom/nimbusds/jose/JWEAlgorithm;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/JWEAlgorithm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->jweEnc:Lcom/nimbusds/jose/EncryptionMethod;

    invoke-virtual {p1}, Lcom/nimbusds/jose/JWEHeader;->getEncryptionMethod()Lcom/nimbusds/jose/EncryptionMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nimbusds/jose/EncryptionMethod;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_50

    .line 136
    :cond_19
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->createJWKMatcher(Lcom/nimbusds/jose/JWEHeader;)Lcom/nimbusds/jose/jwk/JWKMatcher;

    move-result-object p1

    .line 137
    invoke-virtual {p0}, Lcom/nimbusds/jose/proc/JWEDecryptionKeySelector;->getJWKSource()Lcom/nimbusds/jose/jwk/source/JWKSource;

    move-result-object v0

    new-instance v1, Lcom/nimbusds/jose/jwk/JWKSelector;

    invoke-direct {v1, p1}, Lcom/nimbusds/jose/jwk/JWKSelector;-><init>(Lcom/nimbusds/jose/jwk/JWKMatcher;)V

    invoke-interface {v0, v1, p2}, Lcom/nimbusds/jose/jwk/source/JWKSource;->get(Lcom/nimbusds/jose/jwk/JWKSelector;Lcom/nimbusds/jose/proc/SecurityContext;)Ljava/util/List;

    move-result-object p1

    .line 138
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 140
    invoke-static {p1}, Lcom/nimbusds/jose/jwk/KeyConverter;->toJavaKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_37
    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    .line 141
    instance-of v1, v0, Ljava/security/PrivateKey;

    if-nez v1, :cond_4b

    instance-of v1, v0, Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_37

    .line 142
    :cond_4b
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_4f
    return-object p2

    .line 133
    :cond_50
    :goto_50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
