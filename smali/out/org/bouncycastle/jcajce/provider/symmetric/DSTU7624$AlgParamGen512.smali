.class public Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$AlgParamGen512;
.super Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$AlgParamGen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamGen512"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$AlgParamGen;-><init>(I)V

    return-void
.end method
