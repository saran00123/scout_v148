.class public Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private T:[[[J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .registers 11

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    const/16 v1, 0x10

    const/16 v2, 0x20

    const/4 v3, 0x2

    if-nez v0, :cond_18

    filled-new-array {v2, v1, v3}, [I

    move-result-object v0

    const-class v4, J

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    goto :goto_21

    :cond_18
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_21

    return-void

    :cond_21
    :goto_21
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    const/4 p1, 0x0

    :goto_28
    if-ge p1, v2, :cond_68

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    aget-object v4, v0, p1

    const/4 v5, 0x1

    if-nez p1, :cond_40

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    aget-object v6, v4, v5

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B[J)V

    aget-object v0, v4, v5

    aget-object v6, v4, v5

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP3([J[J)V

    goto :goto_4b

    :cond_40
    add-int/lit8 v6, p1, -0x1

    aget-object v0, v0, v6

    aget-object v0, v0, v5

    aget-object v6, v4, v5

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP4([J[J)V

    :goto_4b
    move v0, v3

    :goto_4c
    if-ge v0, v1, :cond_65

    shr-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    aget-object v7, v4, v0

    invoke-static {v6, v7}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->divideP([J[J)V

    aget-object v6, v4, v0

    aget-object v7, v4, v5

    add-int/lit8 v8, v0, 0x1

    aget-object v8, v4, v8

    invoke-static {v6, v7, v8}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_4c

    :cond_65
    add-int/lit8 p1, p1, 0x1

    goto :goto_28

    :cond_68
    return-void
.end method

.method public multiplyH([B)V
    .registers 16

    const/16 v0, 0xf

    const-wide/16 v1, 0x0

    move-wide v4, v1

    move v1, v0

    move-wide v2, v4

    :goto_7
    const/4 v6, 0x0

    if-ltz v1, :cond_31

    iget-object v7, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    add-int v8, v1, v1

    add-int/lit8 v9, v8, 0x1

    aget-object v9, v7, v9

    aget-byte v10, p1, v1

    and-int/2addr v10, v0

    aget-object v9, v9, v10

    aget-object v7, v7, v8

    aget-byte v8, p1, v1

    and-int/lit16 v8, v8, 0xf0

    ushr-int/lit8 v8, v8, 0x4

    aget-object v7, v7, v8

    aget-wide v10, v9, v6

    aget-wide v12, v7, v6

    xor-long/2addr v10, v12

    xor-long/2addr v2, v10

    const/4 v6, 0x1

    aget-wide v8, v9, v6

    aget-wide v6, v7, v6

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_31
    invoke-static {v2, v3, p1, v6}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    const/16 v0, 0x8

    invoke-static {v4, v5, p1, v0}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method
