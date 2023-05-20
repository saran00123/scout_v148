.class abstract Lorg/bouncycastle/asn1/LimitedInputStream;
.super Ljava/io/InputStream;


# instance fields
.field protected final _in:Ljava/io/InputStream;

.field private _limit:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    iput p2, p0, Lorg/bouncycastle/asn1/LimitedInputStream;->_limit:I

    return-void
.end method


# virtual methods
.method getLimit()I
    .registers 2

    iget v0, p0, Lorg/bouncycastle/asn1/LimitedInputStream;->_limit:I

    return v0
.end method

.method protected setParentEofDetect(Z)V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    instance-of v1, v0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    :cond_b
    return-void
.end method
