.class public final Lorg/bouncycastle/crypto/engines/Zuc256Engine;
.super Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/crypto/engines/Zuc256Engine;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>(Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .registers 2

    new-instance v0, Lorg/bouncycastle/crypto/engines/Zuc256Engine;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/Zuc256Engine;-><init>(Lorg/bouncycastle/crypto/engines/Zuc256Engine;)V

    return-object v0
.end method
