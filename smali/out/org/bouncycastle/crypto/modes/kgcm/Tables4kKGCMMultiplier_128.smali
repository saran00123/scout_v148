.class public Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/kgcm/KGCMMultiplier;


# instance fields
.field private T:[[J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([J)V
    .registers 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    const/16 v1, 0x100

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_17

    filled-new-array {v1, v2}, [I

    move-result-object v0

    const-class v4, J

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    goto :goto_20

    :cond_17
    aget-object v0, v0, v3

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->equal([J[J)Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    :cond_20
    :goto_20
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    aget-object v0, v0, v3

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->copy([J[J)V

    :goto_27
    if-ge v2, v1, :cond_44

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    shr-int/lit8 v0, v2, 0x1

    aget-object v0, p1, v0

    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->multiplyX([J[J)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    aget-object v0, p1, v2

    aget-object v4, p1, v3

    add-int/lit8 v5, v2, 0x1

    aget-object p1, p1, v5

    invoke-static {v0, v4, p1}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->add([J[J[J)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_27

    :cond_44
    return-void
.end method

.method public multiplyH([J)V
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [J

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    const/16 v4, 0x38

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->copy([J[J)V

    const/16 v1, 0xe

    :goto_15
    if-ltz v1, :cond_30

    invoke-static {v0, v0}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->multiplyX8([J[J)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables4kKGCMMultiplier_128;->T:[[J

    ushr-int/lit8 v3, v1, 0x3

    aget-wide v3, p1, v3

    and-int/lit8 v5, v1, 0x7

    shl-int/lit8 v5, v5, 0x3

    ushr-long/2addr v3, v5

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    aget-object v2, v2, v3

    invoke-static {v2, v0, v0}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->add([J[J[J)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_30
    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;->copy([J[J)V

    return-void
.end method
