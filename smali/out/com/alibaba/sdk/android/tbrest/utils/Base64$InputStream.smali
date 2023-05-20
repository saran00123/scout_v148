.class public Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/tbrest/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    .line 1857
    invoke-direct {p0, p1, v0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5

    .line 1886
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1887
    iput p2, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->options:I

    and-int/lit8 p1, p2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_d

    move p1, v0

    goto :goto_e

    :cond_d
    move p1, v1

    .line 1888
    :goto_e
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->breakLines:Z

    and-int/lit8 p1, p2, 0x1

    if-lez p1, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    .line 1889
    :goto_16
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->encode:Z

    .line 1890
    iget-boolean p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->encode:Z

    if-eqz p1, :cond_1e

    const/4 p1, 0x4

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x3

    :goto_1f
    iput p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->bufferLength:I

    .line 1891
    iget p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->bufferLength:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->buffer:[B

    const/4 p1, -0x1

    .line 1892
    iput p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->position:I

    .line 1893
    iput v1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->lineLength:I

    .line 1894
    invoke-static {p2}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->access$000(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->decodabet:[B

    return-void
.end method


# virtual methods
.method public read()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1908
    iget v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->position:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-gez v0, :cond_6c

    .line 1909
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->encode:Z

    const/4 v3, 0x4

    if-eqz v0, :cond_33

    const/4 v0, 0x3

    .line 1910
    new-array v4, v0, [B

    move v5, v2

    move v6, v5

    :goto_10
    if-ge v5, v0, :cond_22

    .line 1913
    iget-object v7, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ltz v7, :cond_22

    int-to-byte v7, v7

    .line 1917
    aput-byte v7, v4, v5

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_22
    if-lez v6, :cond_32

    const/4 v5, 0x0

    .line 1926
    iget-object v7, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->buffer:[B

    const/4 v8, 0x0

    iget v9, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->options:I

    invoke-static/range {v4 .. v9}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->access$100([BII[BII)[B

    .line 1927
    iput v2, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->position:I

    .line 1928
    iput v3, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->numSigBytes:I

    goto :goto_6c

    :cond_32
    return v1

    .line 1937
    :cond_33
    new-array v0, v3, [B

    move v4, v2

    :goto_36
    if-ge v4, v3, :cond_52

    .line 1943
    :cond_38
    iget-object v5, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_49

    .line 1944
    iget-object v6, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->decodabet:[B

    and-int/lit8 v7, v5, 0x7f

    aget-byte v6, v6, v7

    const/4 v7, -0x5

    if-le v6, v7, :cond_38

    :cond_49
    if-gez v5, :cond_4c

    goto :goto_52

    :cond_4c
    int-to-byte v5, v5

    .line 1951
    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_52
    :goto_52
    if-ne v4, v3, :cond_61

    .line 1955
    iget-object v3, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->buffer:[B

    iget v4, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->options:I

    invoke-static {v0, v2, v3, v2, v4}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->access$200([BI[BII)I

    move-result v0

    iput v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->numSigBytes:I

    .line 1956
    iput v2, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->position:I

    goto :goto_6c

    :cond_61
    if-nez v4, :cond_64

    return v1

    .line 1963
    :cond_64
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Improperly padded Base64 input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1971
    :cond_6c
    :goto_6c
    iget v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->position:I

    if-ltz v0, :cond_a3

    .line 1973
    iget v3, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->numSigBytes:I

    if-lt v0, v3, :cond_75

    return v1

    .line 1977
    :cond_75
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->encode:Z

    if-eqz v0, :cond_88

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->breakLines:Z

    if-eqz v0, :cond_88

    iget v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->lineLength:I

    const/16 v3, 0x4c

    if-lt v0, v3, :cond_88

    .line 1978
    iput v2, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->lineLength:I

    const/16 v0, 0xa

    return v0

    .line 1982
    :cond_88
    iget v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->lineLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->lineLength:I

    .line 1986
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->buffer:[B

    iget v2, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->position:I

    aget-byte v0, v0, v2

    .line 1988
    iget v2, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->position:I

    iget v3, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->bufferLength:I

    if-lt v2, v3, :cond_a0

    .line 1989
    iput v1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->position:I

    :cond_a0
    and-int/lit16 v0, v0, 0xff

    return v0

    .line 1999
    :cond_a3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error in Base64 code reading stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_15

    .line 2024
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_11

    add-int v2, p2, v0

    int-to-byte v1, v1

    .line 2027
    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    if-nez v0, :cond_15

    const/4 p1, -0x1

    return p1

    :cond_15
    return v0
.end method
