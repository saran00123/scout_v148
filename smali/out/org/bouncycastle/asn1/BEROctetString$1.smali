.class Lorg/bouncycastle/asn1/BEROctetString$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/asn1/BEROctetString;->getObjects()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pos:I

.field final synthetic this$0:Lorg/bouncycastle/asn1/BEROctetString;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/BEROctetString;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->this$0:Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->pos:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 3

    iget v0, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->pos:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->this$0:Lorg/bouncycastle/asn1/BEROctetString;

    iget-object v1, v1, Lorg/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v1, v1

    if-ge v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 6

    iget v0, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->pos:I

    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->this$0:Lorg/bouncycastle/asn1/BEROctetString;

    iget-object v1, v1, Lorg/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v1, v1

    if-ge v0, v1, :cond_32

    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->this$0:Lorg/bouncycastle/asn1/BEROctetString;

    iget-object v0, v0, Lorg/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->this$0:Lorg/bouncycastle/asn1/BEROctetString;

    invoke-static {v1}, Lorg/bouncycastle/asn1/BEROctetString;->access$000(Lorg/bouncycastle/asn1/BEROctetString;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->this$0:Lorg/bouncycastle/asn1/BEROctetString;

    iget-object v2, v2, Lorg/bouncycastle/asn1/BEROctetString;->string:[B

    iget v3, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/bouncycastle/asn1/BEROctetString$1;->pos:I

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0

    :cond_32
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method