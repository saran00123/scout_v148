.class Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AEADGenericBlockCipher"
.end annotation


# static fields
.field private static final aeadBadTagConstructor:Ljava/lang/reflect/Constructor;


# instance fields
.field private cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;

    const-string v1, "javax.crypto.AEADBadTagException"

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->findExceptionConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/crypto/modes/AEADCipher;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;)Lorg/bouncycastle/crypto/modes/AEADCipher;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    return-object p0
.end method

.method private static findExceptionConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/modes/AEADCipher;->doFinal([BI)I

    move-result p1
    :try_end_6
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    sget-object p2, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->aeadBadTagConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p2, :cond_22

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_e
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/crypto/BadPaddingException;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_1e

    goto :goto_1f

    :catch_1e
    move-object p2, v0

    :goto_1f
    if-eqz p2, :cond_22

    throw p2

    :cond_22
    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    instance-of v1, v0, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v1, :cond_11

    check-cast v0, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-interface {v0}, Lorg/bouncycastle/crypto/modes/AEADCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/modes/AEADCipher;->getOutputSize(I)I

    move-result p1

    return p1
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    instance-of v1, v0, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    if-eqz v1, :cond_d

    check-cast v0, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/modes/AEADBlockCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/modes/AEADCipher;->getUpdateOutputSize(I)I

    move-result p1

    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/modes/AEADCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public processByte(B[BI)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processByte(B[BI)I

    move-result p1

    return p1
.end method

.method public processBytes([BII[BI)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processBytes([BII[BI)I

    move-result p1

    return p1
.end method

.method public updateAAD([BII)V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processAADBytes([BII)V

    return-void
.end method

.method public wrapOnNoPadding()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
