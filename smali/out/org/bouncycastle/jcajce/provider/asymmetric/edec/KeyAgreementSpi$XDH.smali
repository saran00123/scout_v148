.class public final Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi$XDH;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XDH"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "XDH"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyAgreementSpi;-><init>(Ljava/lang/String;)V

    return-void
.end method
