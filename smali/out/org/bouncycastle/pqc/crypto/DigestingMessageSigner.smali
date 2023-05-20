.class public Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# instance fields
.field private forSigning:Z

.field private final messDigest:Lorg/bouncycastle/crypto/Digest;

.field private final messSigner:Lorg/bouncycastle/pqc/crypto/MessageSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/MessageSigner;Lorg/bouncycastle/crypto/Digest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messSigner:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .registers 4

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->forSigning:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messSigner:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    invoke-interface {v1, v0}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->generateSignature([B)[B

    move-result-object v0

    return-object v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DigestingMessageSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->forSigning:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_10

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_13

    :cond_10
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    :goto_13
    if-eqz p1, :cond_24

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_24

    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Signing Requires Private Key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    :goto_24
    if-nez p1, :cond_35

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_35

    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Verification Requires Public Key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    :goto_35
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messSigner:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .registers 5

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->forSigning:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messDigest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/DigestingMessageSigner;->messSigner:Lorg/bouncycastle/pqc/crypto/MessageSigner;

    invoke-interface {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/MessageSigner;->verifySignature([B[B)Z

    move-result p1

    return p1

    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DigestingMessageSigner not initialised for verification"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
