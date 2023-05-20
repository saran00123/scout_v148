.class public Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private params:Lorg/bouncycastle/crypto/params/ElGamalParameters;


# direct methods
.method protected constructor <init>(ZLorg/bouncycastle/crypto/params/ElGamalParameters;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object p1

    if-nez p1, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    :cond_14
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
