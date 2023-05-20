.class public Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;


# direct methods
.method protected constructor <init>(ZLorg/bouncycastle/crypto/params/CramerShoupParameters;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object p1

    if-nez p1, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    :cond_14
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->isPrivate()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_f
    return v0
.end method
