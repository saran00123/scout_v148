.class public Lorg/bouncycastle/jcajce/provider/digest/DSTU7564$Digest384;
.super Lorg/bouncycastle/jcajce/provider/digest/DSTU7564$DigestDSTU7564;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/digest/DSTU7564;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Digest384"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x180

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/digest/DSTU7564$DigestDSTU7564;-><init>(I)V

    return-void
.end method