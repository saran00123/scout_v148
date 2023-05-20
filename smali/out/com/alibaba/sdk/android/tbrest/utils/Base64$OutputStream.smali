.class public Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/tbrest/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
.end annotation


# instance fields
.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    const/4 v0, 0x1

    .line 2071
    invoke-direct {p0, p1, v0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 5

    .line 2099
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    and-int/lit8 p1, p2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    move p1, v0

    goto :goto_c

    :cond_b
    move p1, v1

    .line 2100
    :goto_c
    iput-boolean p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->breakLines:Z

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v1

    .line 2101
    :goto_14
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->encode:Z

    .line 2102
    iget-boolean p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->encode:Z

    const/4 v0, 0x4

    if-eqz p1, :cond_1d

    const/4 p1, 0x3

    goto :goto_1e

    :cond_1d
    move p1, v0

    :goto_1e
    iput p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->bufferLength:I

    .line 2103
    iget p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->bufferLength:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->buffer:[B

    .line 2104
    iput v1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->position:I

    .line 2105
    iput v1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->lineLength:I

    .line 2106
    iput-boolean v1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->suspendEncoding:Z

    .line 2107
    new-array p1, v0, [B

    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->b4:[B

    .line 2108
    iput p2, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->options:I

    .line 2109
    invoke-static {p2}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->access$000(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->decodabet:[B

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2222
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->flushBase64()V

    .line 2226
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    const/4 v0, 0x0

    .line 2228
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->buffer:[B

    .line 2229
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public flushBase64()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2201
    iget v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->position:I

    if-lez v0, :cond_25

    .line 2202
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->encode:Z

    if-eqz v0, :cond_1d

    .line 2203
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->b4:[B

    iget-object v2, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->buffer:[B

    iget v3, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->position:I

    iget v4, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->options:I

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->access$300([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    .line 2204
    iput v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->position:I

    goto :goto_25

    .line 2207
    :cond_1d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    :goto_25
    return-void
.end method

.method public resumeEncoding()V
    .registers 2

    const/4 v0, 0x0

    .line 2252
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->suspendEncoding:Z

    return-void
.end method

.method public suspendEncoding()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2241
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->flushBase64()V

    const/4 v0, 0x1

    .line 2242
    iput-boolean v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->suspendEncoding:Z

    return-void
.end method

.method public write(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2125
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_a

    .line 2126
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    .line 2131
    :cond_a
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->encode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 2132
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 2133
    iget p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->position:I

    iget v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->bufferLength:I

    if-lt p1, v0, :cond_7d

    .line 2135
    iget-object p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->b4:[B

    iget-object v2, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->buffer:[B

    iget v3, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->bufferLength:I

    iget v4, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->options:I

    invoke-static {v0, v2, v3, v4}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->access$300([B[BII)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2137
    iget p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->lineLength:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->lineLength:I

    .line 2138
    iget-boolean p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->breakLines:Z

    if-eqz p1, :cond_4a

    iget p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->lineLength:I

    const/16 v0, 0x4c

    if-lt p1, v0, :cond_4a

    .line 2139
    iget-object p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->out:Ljava/io/OutputStream;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 2140
    iput v1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->lineLength:I

    .line 2143
    :cond_4a
    iput v1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->position:I

    goto :goto_7d

    .line 2150
    :cond_4d
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v3, v0, v2

    const/4 v4, -0x5

    if-le v3, v4, :cond_79

    .line 2151
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->buffer:[B

    iget v2, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    .line 2152
    iget p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->position:I

    iget v2, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->bufferLength:I

    if-lt p1, v2, :cond_7d

    .line 2154
    iget-object p1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->b4:[B

    iget v2, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->options:I

    invoke-static {v0, v1, p1, v1, v2}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->access$200([BI[BII)I

    move-result p1

    .line 2155
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->b4:[B

    invoke-virtual {v0, v2, v1, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 2156
    iput v1, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->position:I

    goto :goto_7d

    .line 2159
    :cond_79
    aget-byte p1, v0, v2

    if-ne p1, v4, :cond_7e

    :cond_7d
    :goto_7d
    return-void

    .line 2160
    :cond_7e
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid character in Base64 data."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2182
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->suspendEncoding:Z

    if-eqz v0, :cond_a

    .line 2183
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-ge v0, p3, :cond_17

    add-int v1, p2, v0

    .line 2188
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/sdk/android/tbrest/utils/Base64$OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_17
    return-void
.end method
