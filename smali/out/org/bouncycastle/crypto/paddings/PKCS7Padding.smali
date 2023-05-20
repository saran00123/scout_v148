.class public Lorg/bouncycastle/crypto/paddings/PKCS7Padding;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .registers 5

    array-length v0, p1

    sub-int/2addr v0, p2

    int-to-byte v0, v0

    :goto_3
    array-length v1, p1

    if-ge p2, v1, :cond_b

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_b
    return v0
.end method

.method public getPaddingName()Ljava/lang/String;
    .registers 2

    const-string v0, "PKCS7"

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public padCount([B)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v2, v0

    array-length v3, p1

    const/4 v4, 0x0

    if-le v0, v3, :cond_e

    move v3, v1

    goto :goto_f

    :cond_e
    move v3, v4

    :goto_f
    if-nez v0, :cond_13

    move v5, v1

    goto :goto_14

    :cond_13
    move v5, v4

    :goto_14
    or-int/2addr v3, v5

    move v5, v3

    move v3, v4

    :goto_17
    array-length v6, p1

    if-ge v3, v6, :cond_2d

    array-length v6, p1

    sub-int/2addr v6, v3

    if-gt v6, v0, :cond_20

    move v6, v1

    goto :goto_21

    :cond_20
    move v6, v4

    :goto_21
    aget-byte v7, p1, v3

    if-eq v7, v2, :cond_27

    move v7, v1

    goto :goto_28

    :cond_27
    move v7, v4

    :goto_28
    and-int/2addr v6, v7

    or-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2d
    if-nez v5, :cond_30

    return v0

    :cond_30
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v0, "pad block corrupted"

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
