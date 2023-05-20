.class public Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve;
.super Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;


# static fields
.field private static final SECT131R1_AFFINE_ZS:[Lorg/bouncycastle/math/ec/ECFieldElement;

.field private static final SECT131R1_DEFAULT_COORDS:I = 0x6


# instance fields
.field protected infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Point;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/math/ec/ECFieldElement;

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT131FieldElement;

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131FieldElement;-><init>(Ljava/math/BigInteger;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve;->SECT131R1_AFFINE_ZS:[Lorg/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/16 v0, 0x83

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/16 v3, 0x8

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Point;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve;->infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Point;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "07A11B09A76B562144418FF3FF8C2570B8"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve;->a:Lorg/bouncycastle/math/ec/ECFieldElement;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0217C05610884B63B9C6C7291678F9D341"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve;->b:Lorg/bouncycastle/math/ec/ECFieldElement;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0400000000000000023123953A9464B54D"

    invoke-static {v1}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve;->order:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve;->cofactor:Ljava/math/BigInteger;

    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve;->coord:I

    return-void
.end method

.method static synthetic access$000()[Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve;->SECT131R1_AFFINE_ZS:[Lorg/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method


# virtual methods
.method protected cloneCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .registers 2

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve;-><init>()V

    return-object v0
.end method

.method public createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;
    .registers 10

    mul-int/lit8 v0, p3, 0x3

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    if-ge v2, p3, :cond_2c

    add-int v4, p2, v2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecT131FieldElement;

    iget-object v5, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT131FieldElement;->x:[J

    invoke-static {v5, v1, v0, v3}, Lorg/bouncycastle/math/raw/Nat192;->copy64([JI[JI)V

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecT131FieldElement;

    iget-object v4, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT131FieldElement;->x:[J

    invoke-static {v4, v1, v0, v3}, Lorg/bouncycastle/math/raw/Nat192;->copy64([JI[JI)V

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_2c
    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve$1;

    invoke-direct {p1, p0, p3, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve$1;-><init>(Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve;I[J)V

    return-object p1
.end method

.method protected createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;
    .registers 4

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Point;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;
    .registers 5

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT131FieldElement;

    invoke-direct {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getFieldSize()I
    .registers 2

    const/16 v0, 0x83

    return v0
.end method

.method public getInfinity()Lorg/bouncycastle/math/ec/ECPoint;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Curve;->infinity:Lorg/bouncycastle/math/ec/custom/sec/SecT131R1Point;

    return-object v0
.end method

.method public getK1()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getK2()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getK3()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public getM()I
    .registers 2

    const/16 v0, 0x83

    return v0
.end method

.method public isKoblitz()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isTrinomial()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public supportsCoordinateSystem(I)Z
    .registers 3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_5

    const/4 p1, 0x0

    return p1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method
