.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$X25519withSHA384CKDF;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X25519withSHA384CKDF"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/util/DigestFactory;->createSHA384()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/agreement/kdf/ConcatenationKDFGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    const-string v1, "X25519withSHA384CKDF"

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method