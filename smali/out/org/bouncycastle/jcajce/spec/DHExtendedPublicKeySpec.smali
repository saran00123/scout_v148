.class public Lorg/bouncycastle/jcajce/spec/DHExtendedPublicKeySpec;
.super Ljavax/crypto/spec/DHPublicKeySpec;


# instance fields
.field private final params:Ljavax/crypto/spec/DHParameterSpec;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljavax/crypto/spec/DHParameterSpec;)V
    .registers 5

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/spec/DHExtendedPublicKeySpec;->params:Ljavax/crypto/spec/DHParameterSpec;

    return-void
.end method


# virtual methods
.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/DHExtendedPublicKeySpec;->params:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0
.end method
