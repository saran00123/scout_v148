.class public Lorg/bouncycastle/its/asn1/SequenceOfRectangularRegion;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final sequence:[Lorg/bouncycastle/its/asn1/RectangularRegion;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/its/asn1/RectangularRegion;

    iput-object v0, p0, Lorg/bouncycastle/its/asn1/SequenceOfRectangularRegion;->sequence:[Lorg/bouncycastle/its/asn1/RectangularRegion;

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_21

    iget-object v1, p0, Lorg/bouncycastle/its/asn1/SequenceOfRectangularRegion;->sequence:[Lorg/bouncycastle/its/asn1/RectangularRegion;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/its/asn1/RectangularRegion;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/its/asn1/RectangularRegion;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    return-void
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 3

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v1, p0, Lorg/bouncycastle/its/asn1/SequenceOfRectangularRegion;->sequence:[Lorg/bouncycastle/its/asn1/RectangularRegion;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
