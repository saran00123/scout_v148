.class public Lorg/bouncycastle/util/encoders/HexTranslator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/encoders/Translator;


# static fields
.field private static final hexTable:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/bouncycastle/util/encoders/HexTranslator;->hexTable:[B

    return-void

    :array_a
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode([BII[BI)I
    .registers 10

    div-int/lit8 p3, p3, 0x2

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p3, :cond_3f

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p2

    aget-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    const/16 v3, 0x61

    if-ge v2, v3, :cond_1a

    add-int/lit8 v2, v2, -0x30

    shl-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, p4, p5

    goto :goto_23

    :cond_1a
    add-int/lit8 v2, v2, -0x61

    add-int/lit8 v2, v2, 0xa

    shl-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, p4, p5

    :goto_23
    if-ge v1, v3, :cond_2f

    aget-byte v2, p4, p5

    add-int/lit8 v1, v1, -0x30

    int-to-byte v1, v1

    add-int/2addr v2, v1

    int-to-byte v1, v2

    aput-byte v1, p4, p5

    goto :goto_3a

    :cond_2f
    aget-byte v2, p4, p5

    add-int/lit8 v1, v1, -0x61

    add-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    add-int/2addr v2, v1

    int-to-byte v1, v2

    aput-byte v1, p4, p5

    :goto_3a
    add-int/lit8 p5, p5, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3f
    return p3
.end method

.method public encode([BII[BI)I
    .registers 11

    const/4 v0, 0x0

    move v1, p2

    move p2, v0

    :goto_3
    if-ge v0, p3, :cond_24

    add-int v2, p5, p2

    sget-object v3, Lorg/bouncycastle/util/encoders/HexTranslator;->hexTable:[B

    aget-byte v4, p1, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-byte v4, v3, v4

    aput-byte v4, p4, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v4, p1, v1

    and-int/lit8 v4, v4, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, p4, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x2

    goto :goto_3

    :cond_24
    mul-int/lit8 p3, p3, 0x2

    return p3
.end method

.method public getDecodedBlockSize()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getEncodedBlockSize()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
