.class Lorg/bouncycastle/asn1/LazyConstructionEnumeration;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private aIn:Lorg/bouncycastle/asn1/ASN1InputStream;

.field private nextObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([BZ)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;->aIn:Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;->readObject()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;->nextObj:Ljava/lang/Object;

    return-void
.end method

.method private readObject()Ljava/lang/Object;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;->aIn:Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed DER construction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;->nextObj:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;->nextObj:Ljava/lang/Object;

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;->readObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/LazyConstructionEnumeration;->nextObj:Ljava/lang/Object;

    return-object v0

    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
