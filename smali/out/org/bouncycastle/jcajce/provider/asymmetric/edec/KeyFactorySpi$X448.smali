.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi$X448;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X448"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "X448"

    const/4 v1, 0x1

    const/16 v2, 0x6f

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;-><init>(Ljava/lang/String;ZI)V

    return-void
.end method
