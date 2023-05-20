.class public Lorg/bouncycastle/crypto/macs/CMacWithIV;
.super Lorg/bouncycastle/crypto/macs/CMac;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    return-void
.end method


# virtual methods
.method validate(Lorg/bouncycastle/crypto/CipherParameters;)V
    .registers 2

    return-void
.end method
