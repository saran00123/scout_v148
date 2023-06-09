.class public Lorg/bouncycastle/asn1/x9/X9Curve;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private curve:Lorg/bouncycastle/math/ec/ECCurve;

.field private fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private seed:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x9/X9FieldID;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x9/X9FieldID;->getIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, v0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/x9/X9Curve;->prime_field:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_57

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v7

    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v8, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v9, Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v9, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    move-object v6, v2

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :goto_53
    iput-object v2, v0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    goto/16 :goto_f6

    :cond_57
    iget-object v2, v0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v6, Lorg/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v2

    if-eqz v2, :cond_112

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/x9/X9FieldID;->getParameters()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v8

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v7, Lorg/bouncycastle/asn1/x9/X9Curve;->tpBasis:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v7

    if-eqz v7, :cond_91

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    move v9, v2

    move v10, v4

    move v11, v10

    goto :goto_c8

    :cond_91
    sget-object v7, Lorg/bouncycastle/asn1/x9/X9Curve;->ppBasis:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_10a

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v6

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v7

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    move v11, v2

    move v9, v6

    move v10, v7

    :goto_c8
    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v12, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v13, Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v13, v5, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Lorg/bouncycastle/math/ec/ECCurve$F2m;

    move-object v7, v2

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v7 .. v15}, Lorg/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_53

    :goto_f6
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_109

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    :cond_109
    return-void

    :cond_10a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This type of EC basis is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_112
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This type of ECCurve is not implemented"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/x9/X9Curve;-><init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;[B)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    invoke-direct {p0}, Lorg/bouncycastle/asn1/x9/X9Curve;->setFieldIdentifier()V

    return-void
.end method

.method private setFieldIdentifier()V
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-static {v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9Curve;->prime_field:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    :goto_a
    iput-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_18

    :cond_d
    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-static {v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isF2mCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_a

    :goto_18
    return-void

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public getSeed()[B
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .registers 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9Curve;->prime_field:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v1, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lorg/bouncycastle/math/ec/ECFieldElement;)V

    :goto_2d
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_5d

    :cond_35
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->fieldIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/x9/X9Curve;->characteristic_two_field:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_5d

    new-instance v1, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x9/X9FieldElement;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/x9/X9FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x9/X9FieldElement;-><init>(Lorg/bouncycastle/math/ec/ECFieldElement;)V

    goto :goto_2d

    :cond_5d
    :goto_5d
    iget-object v1, p0, Lorg/bouncycastle/asn1/x9/X9Curve;->seed:[B

    if-eqz v1, :cond_69

    new-instance v2, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_69
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
