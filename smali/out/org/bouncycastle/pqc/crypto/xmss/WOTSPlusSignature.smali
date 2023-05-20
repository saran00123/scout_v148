.class final Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;
.super Ljava/lang/Object;


# instance fields
.field private signature:[[B


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;[[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4b

    if-eqz p2, :cond_43

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->hasNullPointer([[B)Z

    move-result v0

    if-nez v0, :cond_3b

    array-length v0, p2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v1

    if-ne v0, v1, :cond_33

    const/4 v0, 0x0

    :goto_15
    array-length v1, p2

    if-ge v0, v1, :cond_2c

    aget-object v1, p2, v0

    array-length v1, v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->getTreeDigestSize()I

    move-result v2

    if-ne v1, v2, :cond_24

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wrong signature format"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([[B)[[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;->signature:[[B

    return-void

    :cond_33
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wrong signature size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "signature byte array == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_43
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "signature == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "params == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public toByteArray()[[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusSignature;->signature:[[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([[B)[[B

    move-result-object v0

    return-object v0
.end method
