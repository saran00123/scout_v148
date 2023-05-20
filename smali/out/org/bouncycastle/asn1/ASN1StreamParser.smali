.class public Lorg/bouncycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;


# instance fields
.field private final _in:Ljava/io/InputStream;

.field private final _limit:I

.field private final tmpBuffers:[[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-static {p1}, Lorg/bouncycastle/asn1/StreamUtil;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iput p2, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    const/16 p1, 0xb

    new-array p1, p1, [[B

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private set00Check(Z)V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    :cond_b
    return-void
.end method


# virtual methods
.method readImplicit(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v1, :cond_15

    if-eqz p1, :cond_d

    invoke-virtual {p0, p2}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    return-object p1

    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string p2, "indefinite-length primitive encoding encountered"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    const/16 v1, 0x11

    const/16 v2, 0x10

    const/4 v3, 0x4

    if-eqz p1, :cond_34

    if-eq p2, v3, :cond_2e

    if-eq p2, v2, :cond_28

    if-ne p2, v1, :cond_3a

    new-instance p1, Lorg/bouncycastle/asn1/DLSetParser;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/DLSetParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_28
    new-instance p1, Lorg/bouncycastle/asn1/DLSequenceParser;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/DLSequenceParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_2e
    new-instance p1, Lorg/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/BEROctetStringParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_34
    if-eq p2, v3, :cond_52

    if-eq p2, v2, :cond_4a

    if-eq p2, v1, :cond_42

    :cond_3a
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string p2, "implicit tagging not implemented"

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_42
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string p2, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4a
    new-instance p1, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string p2, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    new-instance p1, Lorg/bouncycastle/asn1/DEROctetStringParser;

    check-cast v0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/DEROctetStringParser;-><init>(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object p1
.end method

.method readIndef(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3c

    const/16 v0, 0x8

    if-eq p1, v0, :cond_36

    const/16 v0, 0x10

    if-eq p1, v0, :cond_30

    const/16 v0, 0x11

    if-ne p1, v0, :cond_15

    new-instance p1, Lorg/bouncycastle/asn1/BERSetParser;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/BERSetParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_15
    new-instance v0, Lorg/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance p1, Lorg/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/BERSequenceParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_36
    new-instance p1, Lorg/bouncycastle/asn1/DERExternalParser;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/DERExternalParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1

    :cond_3c
    new-instance p1, Lorg/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/BEROctetStringParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object p1
.end method

.method public readObject()Lorg/bouncycastle/asn1/ASN1Encodable;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-static {v2, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v2

    and-int/lit8 v3, v0, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_1c

    move v3, v4

    goto :goto_1d

    :cond_1c
    move v3, v1

    :goto_1d
    iget-object v5, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v6, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    const/16 v7, 0x8

    const/16 v8, 0x11

    const/16 v9, 0x10

    const/4 v10, 0x4

    if-eq v2, v10, :cond_30

    if-eq v2, v9, :cond_30

    if-eq v2, v8, :cond_30

    if-ne v2, v7, :cond_31

    :cond_30
    move v1, v4

    :cond_31
    invoke-static {v5, v6, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;IZ)I

    move-result v1

    if-gez v1, :cond_6a

    if-eqz v3, :cond_62

    new-instance v1, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v5, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v1, v3, v5}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v3, Lorg/bouncycastle/asn1/ASN1StreamParser;

    iget v5, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v3, v1, v5}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_53

    new-instance v0, Lorg/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :cond_53
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5d

    new-instance v0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v0, v4, v2, v3}, Lorg/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :cond_5d
    invoke-virtual {v3, v2}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0

    :cond_62
    new-instance v0, Ljava/io/IOException;

    const-string v1, "indefinite-length primitive encoding encountered"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    new-instance v4, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    iget-object v5, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v6, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v4, v5, v1, v6}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;II)V

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_81

    new-instance v0, Lorg/bouncycastle/asn1/DLApplicationSpecific;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lorg/bouncycastle/asn1/DLApplicationSpecific;-><init>(ZI[B)V

    return-object v0

    :cond_81
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_90

    new-instance v0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3, v2, v1}, Lorg/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :cond_90
    if-eqz v3, :cond_e2

    if-eq v2, v10, :cond_d7

    if-eq v2, v7, :cond_cc

    if-eq v2, v9, :cond_c1

    if-ne v2, v8, :cond_a5

    new-instance v0, Lorg/bouncycastle/asn1/DLSetParser;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DLSetParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :cond_a5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tag "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " encountered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c1
    new-instance v0, Lorg/bouncycastle/asn1/DLSequenceParser;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DLSequenceParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :cond_cc
    new-instance v0, Lorg/bouncycastle/asn1/DERExternalParser;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERExternalParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :cond_d7
    new-instance v0, Lorg/bouncycastle/asn1/BEROctetStringParser;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/BEROctetStringParser;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :cond_e2
    if-eq v2, v10, :cond_f4

    :try_start_e4
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->tmpBuffers:[[B

    invoke-static {v2, v4, v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(ILorg/bouncycastle/asn1/DefiniteLengthInputStream;[[B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_ea
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e4 .. :try_end_ea} :catch_eb

    return-object v0

    :catch_eb
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Exception;

    const-string v2, "corrupted stream detected"

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_f4
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetStringParser;

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/DEROctetStringParser;-><init>(Lorg/bouncycastle/asn1/DefiniteLengthInputStream;)V

    return-object v0
.end method

.method readTaggedObject(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_16

    iget-object p1, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast p1, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    new-instance v1, Lorg/bouncycastle/asn1/DLTaggedObject;

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v0, p2, v2}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_16
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v1, v1, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    const/4 v2, 0x1

    if-eqz v1, :cond_3b

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-ne v1, v2, :cond_31

    new-instance v1, Lorg/bouncycastle/asn1/BERTaggedObject;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {v1, v2, p2, p1}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_3a

    :cond_31
    new-instance v1, Lorg/bouncycastle/asn1/BERTaggedObject;

    invoke-static {p1}, Lorg/bouncycastle/asn1/BERFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/BERSequence;

    move-result-object p1

    invoke-direct {v1, v0, p2, p1}, Lorg/bouncycastle/asn1/BERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_3a
    return-object v1

    :cond_3b
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-ne v1, v2, :cond_4b

    new-instance v1, Lorg/bouncycastle/asn1/DLTaggedObject;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-direct {v1, v2, p2, p1}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_54

    :cond_4b
    new-instance v1, Lorg/bouncycastle/asn1/DLTaggedObject;

    invoke-static {p1}, Lorg/bouncycastle/asn1/DLFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    invoke-direct {v1, v0, p2, p1}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_54
    return-object v1
.end method

.method readVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-object v0

    :cond_d
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    :cond_12
    instance-of v2, v0, Lorg/bouncycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_1d

    check-cast v0, Lorg/bouncycastle/asn1/InMemoryRepresentable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_21

    :cond_1d
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    :goto_21
    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_12

    return-object v1
.end method
