.class public final Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi$Ed448;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ed448"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/generators/Ed448KeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/Ed448KeyPairGenerator;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;-><init>(ILorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;)V

    return-void
.end method
