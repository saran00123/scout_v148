.class public Lorg/bouncycastle/math/ec/SimpleLookupTable;
.super Lorg/bouncycastle/math/ec/AbstractECLookupTable;


# instance fields
.field private final points:[Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>([Lorg/bouncycastle/math/ec/ECPoint;II)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/math/ec/SimpleLookupTable;->copy([Lorg/bouncycastle/math/ec/ECPoint;II)[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/math/ec/SimpleLookupTable;->points:[Lorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method private static copy([Lorg/bouncycastle/math/ec/ECPoint;II)[Lorg/bouncycastle/math/ec/ECPoint;
    .registers 6

    new-array v0, p2, [Lorg/bouncycastle/math/ec/ECPoint;

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_e

    add-int v2, p1, v1

    aget-object v2, p0, v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    return-object v0
.end method


# virtual methods
.method public getSize()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleLookupTable;->points:[Lorg/bouncycastle/math/ec/ECPoint;

    array-length v0, v0

    return v0
.end method

.method public lookup(I)Lorg/bouncycastle/math/ec/ECPoint;
    .registers 3

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Constant-time lookup not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public lookupVar(I)Lorg/bouncycastle/math/ec/ECPoint;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/math/ec/SimpleLookupTable;->points:[Lorg/bouncycastle/math/ec/ECPoint;

    aget-object p1, v0, p1

    return-object p1
.end method
