.class public Lorg/bouncycastle/jcajce/provider/digest/SHA3$HashMac512;
.super Lorg/bouncycastle/jcajce/provider/digest/SHA3$HashMacSHA3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/SHA3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashMac512"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/SHA3$HashMacSHA3;-><init>(I)V

    return-void
.end method
