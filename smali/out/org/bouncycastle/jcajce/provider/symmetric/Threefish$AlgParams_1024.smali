.class public Lorg/bouncycastle/jcajce/provider/symmetric/Threefish$AlgParams_1024;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Threefish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams_1024"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineToString()Ljava/lang/String;
    .registers 2

    const-string v0, "Threefish-1024 IV"

    return-object v0
.end method
