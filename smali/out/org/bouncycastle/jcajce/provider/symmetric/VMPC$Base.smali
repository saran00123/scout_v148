.class public Lorg/bouncycastle/jcajce/provider/symmetric/VMPC$Base;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/VMPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/engines/VMPCEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/VMPCEngine;-><init>()V

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lorg/bouncycastle/crypto/StreamCipher;I)V

    return-void
.end method
