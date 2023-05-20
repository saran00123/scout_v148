.class public final Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/xmss/XMSSStoreableObjectInterface;
.implements Lorg/bouncycastle/util/Encodable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;
    }
.end annotation


# instance fields
.field private final index:J

.field private final params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

.field private final random:[B

.field private final reducedSignatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->access$000(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getTreeDigestSize()I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->access$100(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)[B

    move-result-object v1

    if-eqz v1, :cond_a5

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getWOTSPlus()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v4

    div-int/2addr v3, v4

    add-int/2addr v3, p1

    mul-int/2addr v3, v0

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result p1

    mul-int/2addr p1, v3

    add-int v4, v2, v0

    add-int/2addr v4, p1

    array-length p1, v1

    if-ne p1, v4, :cond_9d

    const/4 p1, 0x0

    invoke-static {v1, p1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->bytesToXBigEndian([BII)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->index:J

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v4

    iget-wide v5, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->index:J

    invoke-static {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->isIndexValid(IJ)Z

    move-result v4

    if-eqz v4, :cond_95

    add-int/2addr v2, p1

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->random:[B

    add-int/2addr v2, v0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->reducedSignatures:Ljava/util/List;

    :goto_74
    array-length p1, v1

    if-ge v2, p1, :cond_d1

    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getXMSSParameters()Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset([BII)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->withReducedSignature([B)Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->reducedSignatures:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v3

    goto :goto_74

    :cond_95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "index out of bounds"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "signature has wrong size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a5
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->access$200(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->index:J

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->access$300(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)[B

    move-result-object v1

    if-eqz v1, :cond_bf

    array-length v2, v1

    if-ne v2, v0, :cond_b7

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->random:[B

    goto :goto_c3

    :cond_b7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size of random needs to be equal to size of digest"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_bf
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->random:[B

    :goto_c3
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;->access$400(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_ca

    goto :goto_cf

    :cond_ca
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_cf
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->reducedSignatures:Ljava/util/List;

    :cond_d1
    return-void

    :cond_d2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "params == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature$Builder;)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public getIndex()J
    .registers 3

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->index:J

    return-wide v0
.end method

.method public getRandom()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->random:[B

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getReducedSignatures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->reducedSignatures:Ljava/util/List;

    return-object v0
.end method

.method public toByteArray()[B
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getTreeDigestSize()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getWOTSPlus()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getParams()Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->getLen()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getHeight()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v4

    div-int/2addr v3, v4

    add-int/2addr v3, v1

    mul-int/2addr v3, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->getLayers()I

    move-result v1

    mul-int/2addr v1, v3

    add-int v4, v2, v0

    add-int/2addr v4, v1

    new-array v1, v4, [B

    iget-wide v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->index:J

    invoke-static {v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    add-int/2addr v2, v5

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->random:[B

    invoke-static {v1, v4, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    add-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSignature;->reducedSignatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSReducedSignature;->toByteArray()[B

    move-result-object v4

    invoke-static {v1, v4, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->copyBytesAtOffset([B[BI)V

    add-int/2addr v2, v3

    goto :goto_55

    :cond_6a
    return-object v1
.end method