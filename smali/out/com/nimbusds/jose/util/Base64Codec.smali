.class final Lcom/nimbusds/jose/util/Base64Codec;
.super Ljava/lang/Object;
.source "Base64Codec.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkedCast(J)I
    .registers 5

    long-to-int v0, p0

    int-to-long v1, v0

    cmp-long v1, v1, p0

    if-nez v1, :cond_7

    return v0

    .line 397
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " cannot be cast to int without changing its value."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static computeEncodedLength(IZ)I
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    if-eqz p1, :cond_13

    .line 50
    div-int/lit8 p1, p0, 0x3

    shl-int/lit8 p1, p1, 0x2

    .line 53
    rem-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_f

    goto :goto_12

    :cond_f
    add-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    :goto_12
    return p1

    :cond_13
    add-int/lit8 p0, p0, -0x1

    .line 59
    div-int/lit8 p0, p0, 0x3

    add-int/lit8 p0, p0, 0x1

    shl-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_63

    .line 344
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_63

    .line 348
    :cond_a
    sget-object v1, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 349
    array-length v1, p0

    int-to-long v2, v1

    const-wide/16 v4, 0x6

    mul-long/2addr v2, v4

    const/4 v4, 0x3

    shr-long/2addr v2, v4

    .line 352
    invoke-static {v2, v3}, Lcom/nimbusds/jose/util/Base64Codec;->checkedCast(J)I

    move-result v2

    .line 355
    new-array v2, v2, [B

    move v3, v0

    move v5, v3

    .line 359
    :goto_1f
    array-length v6, p0

    if-ge v3, v6, :cond_5e

    move v7, v0

    move v6, v3

    move v3, v7

    :goto_25
    const/4 v8, 0x4

    if-ge v3, v8, :cond_3f

    if-ge v6, v1, :cond_3f

    add-int/lit8 v8, v6, 0x1

    .line 367
    aget-byte v6, p0, v6

    invoke-static {v6}, Lcom/nimbusds/jose/util/Base64Codec;->decodeDigit(B)I

    move-result v6

    if-ltz v6, :cond_3d

    mul-int/lit8 v9, v3, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v6, v9

    or-int/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    move v7, v6

    :cond_3d
    move v6, v8

    goto :goto_25

    :cond_3f
    const/4 v9, 0x2

    if-lt v3, v9, :cond_5c

    add-int/lit8 v9, v5, 0x1

    shr-int/lit8 v10, v7, 0x10

    int-to-byte v10, v10

    .line 378
    aput-byte v10, v2, v5

    if-lt v3, v4, :cond_5b

    add-int/lit8 v5, v9, 0x1

    shr-int/lit8 v10, v7, 0x8

    int-to-byte v10, v10

    .line 380
    aput-byte v10, v2, v9

    if-lt v3, v8, :cond_5c

    add-int/lit8 v3, v5, 0x1

    int-to-byte v7, v7

    .line 382
    aput-byte v7, v2, v5

    move v5, v3

    goto :goto_5c

    :cond_5b
    move v5, v9

    :cond_5c
    :goto_5c
    move v3, v6

    goto :goto_1f

    .line 391
    :cond_5e
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    .line 345
    :cond_63
    :goto_63
    new-array p0, v0, [B

    return-object p0
.end method

.method static decodeDigit(B)I
    .registers 10

    const/16 v0, 0x40

    .line 226
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    move-result v0

    const/16 v1, 0x5b

    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v1

    and-int/2addr v0, v1

    const/16 v1, 0x60

    .line 227
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    move-result v1

    const/16 v2, 0x7b

    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v2

    and-int/2addr v1, v2

    const/16 v2, 0x2f

    .line 228
    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    move-result v3

    const/16 v4, 0x3a

    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v4

    and-int/2addr v3, v4

    const/16 v4, 0x2d

    .line 229
    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v4

    const/16 v5, 0x2b

    invoke-static {p0, v5}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v5

    or-int/2addr v4, v5

    const/16 v5, 0x5f

    .line 230
    invoke-static {p0, v5}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v5

    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v2

    or-int/2addr v2, v5

    or-int v5, v0, v1

    or-int/2addr v5, v3

    or-int/2addr v5, v4

    or-int/2addr v5, v2

    add-int/lit8 v6, p0, -0x41

    const/4 v7, 0x0

    add-int/2addr v6, v7

    add-int/lit8 v8, p0, -0x61

    add-int/lit8 v8, v8, 0x1a

    add-int/lit8 p0, p0, -0x30

    add-int/lit8 p0, p0, 0x34

    .line 244
    invoke-static {v0, v6, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    .line 245
    invoke-static {v1, v8, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v1

    or-int/2addr v0, v1

    .line 246
    invoke-static {v3, p0, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result p0

    or-int/2addr p0, v0

    const/16 v0, 0x3e

    .line 247
    invoke-static {v4, v0, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    or-int/2addr p0, v0

    const/16 v0, 0x3f

    .line 248
    invoke-static {v2, v0, v7}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    or-int/2addr p0, v0

    const/4 v0, -0x1

    .line 249
    invoke-static {v5, v7, v0}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    or-int/2addr p0, v0

    return p0
.end method

.method static encodeDigitBase64(I)B
    .registers 9

    const/16 v0, 0x1a

    .line 149
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v0

    const/16 v1, 0x19

    .line 150
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    move-result v1

    const/16 v2, 0x34

    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v3

    and-int/2addr v1, v3

    const/16 v3, 0x33

    .line 151
    invoke-static {p0, v3}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    move-result v3

    const/16 v4, 0x3e

    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v5

    and-int/2addr v3, v5

    .line 152
    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v4

    const/16 v5, 0x3f

    .line 153
    invoke-static {p0, v5}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v5

    add-int/lit8 v6, p0, 0x0

    add-int/lit8 v6, v6, 0x41

    add-int/lit8 v7, p0, -0x1a

    add-int/lit8 v7, v7, 0x61

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, 0x30

    const/4 v2, 0x0

    .line 164
    invoke-static {v0, v6, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    .line 165
    invoke-static {v1, v7, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v1

    or-int/2addr v0, v1

    .line 166
    invoke-static {v3, p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result p0

    or-int/2addr p0, v0

    const/16 v0, 0x2b

    .line 167
    invoke-static {v4, v0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    or-int/2addr p0, v0

    const/16 v0, 0x2f

    .line 168
    invoke-static {v5, v0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    or-int/2addr p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method static encodeDigitBase64URL(I)B
    .registers 9

    const/16 v0, 0x1a

    .line 188
    invoke-static {p0, v0}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v0

    const/16 v1, 0x19

    .line 189
    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    move-result v1

    const/16 v2, 0x34

    invoke-static {p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v3

    and-int/2addr v1, v3

    const/16 v3, 0x33

    .line 190
    invoke-static {p0, v3}, Lcom/nimbusds/jose/util/Base64Codec;->tpGT(II)I

    move-result v3

    const/16 v4, 0x3e

    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpLT(II)I

    move-result v5

    and-int/2addr v3, v5

    .line 191
    invoke-static {p0, v4}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v4

    const/16 v5, 0x3f

    .line 192
    invoke-static {p0, v5}, Lcom/nimbusds/jose/util/Base64Codec;->tpEq(II)I

    move-result v5

    add-int/lit8 v6, p0, 0x0

    add-int/lit8 v6, v6, 0x41

    add-int/lit8 v7, p0, -0x1a

    add-int/lit8 v7, v7, 0x61

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, 0x30

    const/4 v2, 0x0

    .line 203
    invoke-static {v0, v6, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    .line 204
    invoke-static {v1, v7, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v1

    or-int/2addr v0, v1

    .line 205
    invoke-static {v3, p0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result p0

    or-int/2addr p0, v0

    const/16 v0, 0x2d

    .line 206
    invoke-static {v4, v0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    or-int/2addr p0, v0

    const/16 v0, 0x5f

    .line 207
    invoke-static {v5, v0, v2}, Lcom/nimbusds/jose/util/Base64Codec;->tpSelect(III)I

    move-result v0

    or-int/2addr p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method public static encodeToString([BZ)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 270
    array-length v1, p0

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    if-nez v1, :cond_b

    const-string p0, ""

    return-object p0

    .line 276
    :cond_b
    div-int/lit8 v2, v1, 0x3

    mul-int/lit8 v2, v2, 0x3

    .line 277
    invoke-static {v1, p1}, Lcom/nimbusds/jose/util/Base64Codec;->computeEncodedLength(IZ)I

    move-result v3

    .line 278
    new-array v4, v3, [B

    move v5, v0

    move v6, v5

    :goto_17
    if-ge v5, v2, :cond_92

    add-int/lit8 v7, v5, 0x1

    .line 284
    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    add-int/lit8 v7, v8, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    if-eqz p1, :cond_62

    add-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v9, v5, 0x12

    and-int/lit8 v9, v9, 0x3f

    .line 288
    invoke-static {v9}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, v8, 0x1

    ushr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    .line 289
    invoke-static {v9}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result v9

    aput-byte v9, v4, v8

    add-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    .line 290
    invoke-static {v9}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, v8, 0x1

    and-int/lit8 v5, v5, 0x3f

    .line 291
    invoke-static {v5}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result v5

    aput-byte v5, v4, v8

    goto :goto_90

    :cond_62
    add-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v9, v5, 0x12

    and-int/lit8 v9, v9, 0x3f

    .line 293
    invoke-static {v9}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    move-result v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, v8, 0x1

    ushr-int/lit8 v9, v5, 0xc

    and-int/lit8 v9, v9, 0x3f

    .line 294
    invoke-static {v9}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    move-result v9

    aput-byte v9, v4, v8

    add-int/lit8 v8, v6, 0x1

    ushr-int/lit8 v9, v5, 0x6

    and-int/lit8 v9, v9, 0x3f

    .line 295
    invoke-static {v9}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    move-result v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, v8, 0x1

    and-int/lit8 v5, v5, 0x3f

    .line 296
    invoke-static {v5}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    move-result v5

    aput-byte v5, v4, v8

    :goto_90
    move v5, v7

    goto :goto_17

    :cond_92
    sub-int v5, v1, v2

    if-lez v5, :cond_10f

    .line 305
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xa

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a7

    add-int/lit8 v1, v1, -0x1

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 v0, p0, 0x2

    :cond_a7
    or-int p0, v2, v0

    if-eqz p1, :cond_e5

    if-ne v5, v6, :cond_ce

    add-int/lit8 p1, v3, -0x3

    shr-int/lit8 v0, p0, 0xc

    .line 311
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result v0

    aput-byte v0, v4, p1

    add-int/lit8 p1, v3, -0x2

    ushr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3f

    .line 312
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result v0

    aput-byte v0, v4, p1

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 p0, p0, 0x3f

    .line 313
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result p0

    aput-byte p0, v4, v3

    goto :goto_10f

    :cond_ce
    add-int/lit8 p1, v3, -0x2

    shr-int/lit8 v0, p0, 0xc

    .line 315
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result v0

    aput-byte v0, v4, p1

    add-int/lit8 v3, v3, -0x1

    ushr-int/lit8 p0, p0, 0x6

    and-int/lit8 p0, p0, 0x3f

    .line 316
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64URL(I)B

    move-result p0

    aput-byte p0, v4, v3

    goto :goto_10f

    :cond_e5
    add-int/lit8 p1, v3, -0x4

    shr-int/lit8 v0, p0, 0xc

    .line 320
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    move-result v0

    aput-byte v0, v4, p1

    add-int/lit8 p1, v3, -0x3

    ushr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3f

    .line 321
    invoke-static {v0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    move-result v0

    aput-byte v0, v4, p1

    add-int/lit8 p1, v3, -0x2

    const/16 v0, 0x3d

    if-ne v5, v6, :cond_108

    and-int/lit8 p0, p0, 0x3f

    .line 322
    invoke-static {p0}, Lcom/nimbusds/jose/util/Base64Codec;->encodeDigitBase64(I)B

    move-result p0

    goto :goto_109

    :cond_108
    move p0, v0

    :goto_109
    aput-byte p0, v4, p1

    add-int/lit8 v3, v3, -0x1

    .line 323
    aput-byte v0, v4, v3

    .line 327
    :cond_10f
    :goto_10f
    new-instance p0, Ljava/lang/String;

    sget-object p1, Lcom/nimbusds/jose/util/StandardCharset;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v4, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method static tpEq(II)I
    .registers 2

    xor-int/2addr p0, p1

    add-int/lit8 p1, p0, -0x1

    not-int p0, p0

    and-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x3f

    return p0
.end method

.method static tpGT(II)I
    .registers 4

    int-to-long v0, p1

    int-to-long p0, p0

    sub-long/2addr v0, p0

    const/16 p0, 0x3f

    ushr-long p0, v0, p0

    long-to-int p0, p0

    return p0
.end method

.method static tpLT(II)I
    .registers 4

    int-to-long v0, p0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    const/16 p0, 0x3f

    ushr-long p0, v0, p0

    long-to-int p0, p0

    return p0
.end method

.method static tpSelect(III)I
    .registers 3

    add-int/lit8 p0, p0, -0x1

    xor-int/2addr p2, p1

    and-int/2addr p0, p2

    xor-int/2addr p0, p1

    return p0
.end method
