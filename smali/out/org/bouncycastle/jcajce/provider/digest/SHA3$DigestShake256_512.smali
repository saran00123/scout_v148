.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestShake256_512;
.super Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestSHAKE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/SHA3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigestShake256_512"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v0, 0x100

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/digest/SHA3$DigestSHAKE;-><init>(II)V

    return-void
.end method
