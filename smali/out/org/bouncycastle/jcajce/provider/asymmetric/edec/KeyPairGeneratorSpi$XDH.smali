.class public final Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi$XDH;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XDH"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyPairGeneratorSpi;-><init>(ILorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;)V

    return-void
.end method
