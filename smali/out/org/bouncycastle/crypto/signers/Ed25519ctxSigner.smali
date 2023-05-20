.class public Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;
    }
.end annotation


# instance fields
.field private final buffer:Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

.field private final context:[B

.field private forSigning:Z

.field private privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

.field private publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;


# direct methods
.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;-><init>(Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$1;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->context:[B

    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .registers 4

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->forSigning:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->context:[B

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;->generateSignature(Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;[B)[B

    move-result-object v0

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed25519ctxSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 4

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->forSigning:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    check-cast p2, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    goto :goto_12

    :cond_c
    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    check-cast p2, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    :goto_12
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->reset()V

    return-void
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;->reset()V

    return-void
.end method

.method public update(B)V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;->write(I)V

    return-void
.end method

.method public update([BII)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;->write([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .registers 5

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->forSigning:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    if-eqz v0, :cond_11

    iget-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->buffer:Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner;->context:[B

    invoke-virtual {v1, v0, v2, p1}, Lorg/bouncycastle/crypto/signers/Ed25519ctxSigner$Buffer;->verifySignature(Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;[B[B)Z

    move-result p1

    return p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Ed25519ctxSigner not initialised for verification"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
