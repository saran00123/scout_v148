.class public Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;
.super Lorg/bouncycastle/crypto/params/DSAKeyParameters;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field private y:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAParameters;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/params/DSAKeyParameters;-><init>(ZLorg/bouncycastle/crypto/params/DSAParameters;)V

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->validate(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAParameters;)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-void
.end method

.method private validate(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/DSAParameters;)Ljava/math/BigInteger;
    .registers 5

    if-eqz p2, :cond_37

    sget-object v0, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_2f

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_2f

    sget-object v0, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2f

    return-object p1

    :cond_2f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "y value does not appear to be in correct group"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_37
    return-object p1
.end method


# virtual methods
.method public getY()Ljava/math/BigInteger;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/DSAPublicKeyParameters;->y:Ljava/math/BigInteger;

    return-object v0
.end method
