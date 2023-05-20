.class public Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;
.super Ljava/lang/Object;


# instance fields
.field private nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

.field private originatorInfoCalled:Z

.field private seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

.field private version:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method


# virtual methods
.method public getAuthAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    :cond_c
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v0

    :cond_21
    return-object v2
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    :cond_c
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0

    :cond_21
    return-object v2
.end method

.method public getEncapsulatedContentInfo()Lorg/bouncycastle/asn1/cms/ContentInfoParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    :cond_c
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    new-instance v1, Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    :cond_1a
    return-object v1
.end method

.method public getMac()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    :cond_c
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    return-object v0
.end method

.method public getMacAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    :cond_c
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0

    :cond_1e
    return-object v1
.end method

.method public getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->originatorInfoCalled:Z

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    :cond_f
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v1, 0x10

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/OriginatorInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v0

    return-object v0

    :cond_36
    return-object v2
.end method

.method public getRecipientInfos()Lorg/bouncycastle/asn1/ASN1SetParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->originatorInfoCalled:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    :cond_13
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public getUnauthAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->seq:Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SequenceParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    :cond_c
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    iput-object v1, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->nextObject:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getObjectParser(IZ)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SetParser;

    return-object v0

    :cond_1f
    return-object v1
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/AuthenticatedDataParser;->version:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method
