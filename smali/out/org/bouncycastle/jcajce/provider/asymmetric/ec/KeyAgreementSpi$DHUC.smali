.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi$DHUC;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DHUC"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;-><init>()V

    const-string v1, "ECCDHU"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/KeyAgreementSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/agreement/ECDHCUnifiedAgreement;Lorg/bouncycastle/crypto/DerivationFunction;)V

    return-void
.end method