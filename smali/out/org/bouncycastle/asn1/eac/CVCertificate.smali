.class public Lorg/bouncycastle/asn1/eac/CVCertificate;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field private static bodyValid:I = 0x1

.field private static signValid:I = 0x2


# instance fields
.field private certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

.field private signature:[B

.field private valid:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CVCertificate;->setPrivateData(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1InputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/eac/CVCertificate;->initFrom(Lorg/bouncycastle/asn1/ASN1InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/eac/CertificateBody;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    iget p1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    sget p2, Lorg/bouncycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    iget p1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    sget p2, Lorg/bouncycastle/asn1/eac/CVCertificate;->signValid:I

    or-int/2addr p1, p2

    iput p1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/CVCertificate;
    .registers 4

    instance-of v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/bouncycastle/asn1/eac/CVCertificate;

    return-object p0

    :cond_7
    if-eqz p0, :cond_2f

    :try_start_9
    new-instance v0, Lorg/bouncycastle/asn1/eac/CVCertificate;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/eac/CVCertificate;-><init>(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to parse data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method private initFrom(Lorg/bouncycastle/asn1/ASN1InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_18

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    if-eqz v1, :cond_10

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/eac/CVCertificate;->setPrivateData(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)V

    goto :goto_0

    :cond_10
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid Input Stream for creating an Iso7816CertificateStructure"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    return-void
.end method

.method private setPrivateData(Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_90

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getContents()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    :goto_14
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    if-eqz v1, :cond_68

    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    if-eqz v2, :cond_60

    check-cast v1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v2

    const/16 v3, 0x37

    if-eq v2, v3, :cond_52

    const/16 v3, 0x4e

    if-ne v2, v3, :cond_37

    invoke-static {v1}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/eac/CertificateBody;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    iget v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    sget v2, Lorg/bouncycastle/asn1/eac/CVCertificate;->bodyValid:I

    goto :goto_5c

    :cond_37
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag, not an Iso7816CertificateStructure :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_52
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getContents()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    iget v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    sget v2, Lorg/bouncycastle/asn1/eac/CVCertificate;->signValid:I

    :goto_5c
    or-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    goto :goto_14

    :cond_60
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid Object, not an Iso7816CertificateStructure"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->close()V

    iget v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->valid:I

    sget v1, Lorg/bouncycastle/asn1/eac/CVCertificate;->signValid:I

    sget v2, Lorg/bouncycastle/asn1/eac/CVCertificate;->bodyValid:I

    or-int/2addr v1, v2

    if-ne v0, v1, :cond_75

    return-void

    :cond_75
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid CARDHOLDER_CERTIFICATE :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_90
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a CARDHOLDER_CERTIFICATE :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAuthorityReference()Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificationAuthorityReference()Lorg/bouncycastle/asn1/eac/CertificationAuthorityReference;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Lorg/bouncycastle/asn1/eac/CertificateBody;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    return-object v0
.end method

.method public getCertificateType()I
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateType()I

    move-result v0

    return v0
.end method

.method public getEffectiveDate()Lorg/bouncycastle/asn1/eac/PackedDate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateEffectiveDate()Lorg/bouncycastle/asn1/eac/PackedDate;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationDate()Lorg/bouncycastle/asn1/eac/PackedDate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateExpirationDate()Lorg/bouncycastle/asn1/eac/PackedDate;

    move-result-object v0

    return-object v0
.end method

.method public getHolderAuthorization()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getOid()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getHolderAuthorizationRights()Lorg/bouncycastle/asn1/eac/Flags;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/eac/Flags;

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v1

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/eac/Flags;-><init>(I)V

    return-object v0
.end method

.method public getHolderAuthorizationRole()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    return v0
.end method

.method public getHolderReference()Lorg/bouncycastle/asn1/eac/CertificateHolderReference;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderReference()Lorg/bouncycastle/asn1/eac/CertificateHolderReference;

    move-result-object v0

    return-object v0
.end method

.method public getRole()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateBody;->getCertificateHolderAuthorization()Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/eac/CertificateHolderAuthorization;->getAccessRights()I

    move-result v0

    return v0
.end method

.method public getSignature()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 7

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->certificateBody:Lorg/bouncycastle/asn1/eac/CertificateBody;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :try_start_b
    new-instance v1, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/4 v2, 0x0

    const/16 v3, 0x37

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v5, p0, Lorg/bouncycastle/asn1/eac/CVCertificate;->signature:[B

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1d} :catch_25

    new-instance v1, Lorg/bouncycastle/asn1/DERApplicationSpecific;

    const/16 v2, 0x21

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/DERApplicationSpecific;-><init>(ILorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :catch_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to convert signature!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
