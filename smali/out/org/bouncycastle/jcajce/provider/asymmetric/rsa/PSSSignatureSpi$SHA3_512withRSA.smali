.class public Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi$SHA3_512withRSA;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA3_512withRSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 9

    new-instance v0, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/RSABlindedEngine;-><init>()V

    new-instance v7, Ljava/security/spec/PSSParameterSpec;

    new-instance v4, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA3-512"

    invoke-direct {v4, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    const-string v2, "SHA3-512"

    const-string v3, "MGF1"

    const/16 v5, 0x40

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/jcajce/provider/asymmetric/rsa/PSSSignatureSpi;-><init>(Lorg/bouncycastle/crypto/AsymmetricBlockCipher;Ljava/security/spec/PSSParameterSpec;)V

    return-void
.end method
