.class Lorg/bouncycastle/asn1/LazyEncodedSequence;
.super Lorg/bouncycastle/asn1/ASN1Sequence;


# instance fields
.field private encoded:[B


# direct methods
.method constructor <init>([B)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    return-void
.end method

.method private force()V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_29

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;

    iget-object v2, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;-><init>([B)V

    :goto_10
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_10

    :cond_20
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->takeElements()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    :cond_29
    return-void
.end method


# virtual methods
.method declared-synchronized encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_d

    const/16 v0, 0x30

    iget-object v1, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(ZI[B)V

    goto :goto_14

    :cond_d
    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :goto_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized encodedLength()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    array-length v1, v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1e

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :cond_14
    :try_start_14
    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength()I

    move-result v0
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getObjects()Ljava/util/Enumeration;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    if-eqz v0, :cond_e

    new-instance v0, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;

    iget-object v1, p0, Lorg/bouncycastle/asn1/LazyEncodedSequence;->encoded:[B

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;-><init>([B)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_14

    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_e
    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_14

    monitor-exit p0

    return-object v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->hashCode()I

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toArray()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method toArrayInternal()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toArrayInternal()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyEncodedSequence;->force()V

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
