.class public Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;
.implements Lorg/bouncycastle/pqc/jcajce/interfaces/QTESLAKey;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient keyParams:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;->init(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    return-void
.end method

.method private init(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;->init(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    check-cast p1, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;->getSecurityCategory()I

    move-result v1

    iget-object v3, p1, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;->getSecurityCategory()I

    move-result v3

    if-ne v1, v3, :cond_2c

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;->getPublicData()[B

    move-result-object v1

    iget-object p1, p1, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;->getPublicData()[B

    move-result-object p1

    invoke-static {v1, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    return v0

    :cond_2e
    return v2
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;->getSecurityCategory()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASecurityCategory;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/SubjectPublicKeyInfoFactory;->createSubjectPublicKeyInfo(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    const-string v0, "X.509"

    return-object v0
.end method

.method getKeyParams()Lorg/bouncycastle/crypto/CipherParameters;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    return-object v0
.end method

.method public getParams()Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;
    .registers 3

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/QTESLAParameterSpec;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;->getSecurityCategory()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/qtesla/BCqTESLAPublicKey;->keyParams:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;->getPublicData()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method
