.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;
.super Ljava/lang/Object;


# instance fields
.field private K:[I

.field private heightOfTrees:[I

.field private numOfLayers:I

.field private winternitzParameter:[I


# direct methods
.method public constructor <init>(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    const/4 v1, 0x2

    if-gt p1, v0, :cond_1c

    const/4 p1, 0x1

    new-array v2, p1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    new-array v0, p1, [I

    const/4 v4, 0x3

    aput v4, v0, v3

    new-array p1, p1, [I

    aput v1, p1, v3

    array-length v1, v2

    invoke-direct {p0, v1, v2, v0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    goto :goto_48

    :cond_1c
    const/16 v0, 0x14

    if-gt p1, v0, :cond_34

    new-array p1, v1, [I

    fill-array-data p1, :array_4a

    new-array v0, v1, [I

    fill-array-data v0, :array_52

    new-array v1, v1, [I

    fill-array-data v1, :array_5a

    array-length v2, p1

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    goto :goto_48

    :cond_34
    const/4 p1, 0x4

    new-array v0, p1, [I

    fill-array-data v0, :array_62

    new-array v1, p1, [I

    fill-array-data v1, :array_6e

    new-array p1, p1, [I

    fill-array-data p1, :array_7a

    array-length v2, v0

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    :goto_48
    return-void

    nop

    :array_4a
    .array-data 4
        0xa
        0xa
    .end array-data

    :array_52
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_5a
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_62
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_6e
    .array-data 4
        0x9
        0x9
        0x9
        0x3
    .end array-data

    :array_7a
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>(I[I[I[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    return-void
.end method

.method private init(I[I[I[I)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    array-length v0, p3

    const/4 v1, 0x0

    if-ne p1, v0, :cond_13

    array-length v0, p2

    if-ne p1, v0, :cond_13

    array-length v0, p4

    if-eq p1, v0, :cond_f

    goto :goto_13

    :cond_f
    const/4 p1, 0x1

    const-string v0, ""

    goto :goto_16

    :cond_13
    :goto_13
    const-string v0, "Unexpected parameterset format"

    move p1, v1

    :goto_16
    move-object v2, v0

    move v0, p1

    move p1, v1

    :goto_19
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    if-ge p1, v3, :cond_3d

    aget v3, p4, p1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2a

    aget v3, p2, p1

    aget v5, p4, p1

    sub-int/2addr v3, v5

    rem-int/2addr v3, v4

    if-eqz v3, :cond_2d

    :cond_2a
    const-string v2, "Wrong parameter K (K >= 2 and H-K even required)!"

    move v0, v1

    :cond_2d
    aget v3, p2, p1

    const/4 v5, 0x4

    if-lt v3, v5, :cond_36

    aget v3, p3, p1

    if-ge v3, v4, :cond_3a

    :cond_36
    const-string v0, "Wrong parameter H or w (H > 3 and w > 1 required)!"

    move-object v2, v0

    move v0, v1

    :cond_3a
    add-int/lit8 p1, p1, 0x1

    goto :goto_19

    :cond_3d
    if-eqz v0, :cond_52

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->heightOfTrees:[I

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->winternitzParameter:[I

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->K:[I

    return-void

    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getHeightOfTrees()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->heightOfTrees:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getK()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->K:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getNumOfLayers()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    return v0
.end method

.method public getWinternitzParameter()[I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->winternitzParameter:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method
