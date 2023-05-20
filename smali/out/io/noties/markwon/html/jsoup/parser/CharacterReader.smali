.class public final Lio/noties/markwon/html/jsoup/parser/CharacterReader;
.super Ljava/lang/Object;
.source "CharacterReader.java"


# static fields
.field static final EOF:C = '\uffff'

.field static final maxBufferLen:I = 0x1000

.field private static final maxStringCacheLen:I = 0xc

.field private static final readAheadLimit:I = 0xc00


# instance fields
.field private bufLength:I

.field private bufMark:I

.field private bufPos:I

.field private bufSplitPoint:I

.field private final charBuf:[C

.field private final reader:Ljava/io/Reader;

.field private readerPos:I

.field private final stringCache:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    const/16 v0, 0x1000

    .line 39
    invoke-direct {p0, p1, v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p2, 0x80

    .line 28
    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lio/noties/markwon/html/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p1}, Ljava/io/Reader;->markSupported()Z

    move-result p2

    invoke-static {p2}, Lio/noties/markwon/html/jsoup/helper/Validate;->isTrue(Z)V

    .line 33
    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    const/16 p1, 0x1000

    .line 34
    new-array p1, p1, [C

    iput-object p1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    .line 35
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 43
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method private bufferUp()V
    .registers 5

    .line 56
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufSplitPoint:I

    if-ge v0, v1, :cond_7

    return-void

    .line 60
    :cond_7
    :try_start_7
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/io/Reader;->skip(J)J

    .line 61
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Ljava/io/Reader;->mark(I)V

    .line 62
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    invoke-virtual {v0, v1}, Ljava/io/Reader;->read([C)I

    move-result v0

    .line 63
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->reset()V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3d

    .line 65
    iput v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    .line 66
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->readerPos:I

    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->readerPos:I

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    .line 68
    iput v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufMark:I

    .line 69
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    const/16 v1, 0xc00

    if-le v0, v1, :cond_39

    goto :goto_3b

    :cond_39
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    :goto_3b
    iput v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufSplitPoint:I
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_3d} :catch_3e

    :cond_3d
    return-void

    :catch_3e
    move-exception v0

    .line 72
    new-instance v1, Lio/noties/markwon/html/jsoup/UncheckedIOException;

    invoke-direct {v1, v0}, Lio/noties/markwon/html/jsoup/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method private static cacheString([C[Ljava/lang/String;II)Ljava/lang/String;
    .registers 9

    const/16 v0, 0xc

    if-le p3, v0, :cond_a

    .line 450
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_a
    const/4 v0, 0x1

    if-ge p3, v0, :cond_10

    const-string p0, ""

    return-object p0

    :cond_10
    const/4 v1, 0x0

    move v3, p2

    move v2, v1

    :goto_13
    if-ge v1, p3, :cond_20

    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v4, v3, 0x1

    .line 458
    aget-char v3, p0, v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_13

    .line 462
    :cond_20
    array-length v1, p1

    sub-int/2addr v1, v0

    and-int v0, v2, v1

    .line 463
    aget-object v1, p1, v0

    if-nez v1, :cond_30

    .line 466
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 467
    aput-object v1, p1, v0

    goto :goto_3e

    .line 469
    :cond_30
    invoke-static {p0, p2, p3, v1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->rangeEquals([CIILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    return-object v1

    .line 472
    :cond_37
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 473
    aput-object v1, p1, v0

    :goto_3e
    return-object v1
.end method

.method private isEmptyNoBufferUp()Z
    .registers 3

    .line 96
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method static rangeEquals([CIILjava/lang/String;)Z
    .registers 8

    .line 483
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1f

    move v0, v1

    :goto_8
    add-int/lit8 v2, p2, -0x1

    if-eqz p2, :cond_1d

    add-int/lit8 p2, p1, 0x1

    .line 487
    aget-char p1, p0, p1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq p1, v0, :cond_19

    return v1

    :cond_19
    move p1, p2

    move p2, v2

    move v0, v3

    goto :goto_8

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    return v1
.end method


# virtual methods
.method public advance()V
    .registers 2

    .line 124
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    return-void
.end method

.method consume()C
    .registers 3

    .line 110
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 111
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0xffff

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    .line 112
    :goto_13
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    return v0
.end method

.method consumeData()Ljava/lang/String;
    .registers 7

    .line 245
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 246
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    .line 247
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    .line 248
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    .line 250
    :goto_9
    iget v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    if-ge v3, v1, :cond_1f

    .line 251
    aget-char v4, v2, v3

    const/16 v5, 0x26

    if-eq v4, v5, :cond_1f

    const/16 v5, 0x3c

    if-eq v4, v5, :cond_1f

    if-nez v4, :cond_1a

    goto :goto_1f

    :cond_1a
    add-int/lit8 v3, v3, 0x1

    .line 254
    iput v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_9

    .line 257
    :cond_1f
    :goto_1f
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    if-le v1, v0, :cond_2d

    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-static {v2, v3, v0, v1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_2d
    const-string v0, ""

    :goto_2f
    return-object v0
.end method

.method consumeDigitSequence()Ljava/lang/String;
    .registers 5

    .line 333
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 334
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    .line 335
    :goto_5
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_1c

    .line 336
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1c

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1c

    add-int/lit8 v1, v1, 0x1

    .line 338
    iput v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_5

    .line 342
    :cond_1c
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeHexSequence()Ljava/lang/String;
    .registers 5

    .line 320
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 321
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    .line 322
    :goto_5
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_2e

    .line 323
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v2, v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_17

    const/16 v2, 0x39

    if-le v1, v2, :cond_27

    :cond_17
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1f

    const/16 v2, 0x46

    if-le v1, v2, :cond_27

    :cond_1f
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2e

    const/16 v2, 0x66

    if-gt v1, v2, :cond_2e

    .line 325
    :cond_27
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_5

    .line 329
    :cond_2e
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeLetterSequence()Ljava/lang/String;
    .registers 5

    .line 285
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 286
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    .line 287
    :goto_5
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_2c

    .line 288
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_17

    const/16 v2, 0x5a

    if-le v1, v2, :cond_25

    :cond_17
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1f

    const/16 v2, 0x7a

    if-le v1, v2, :cond_25

    .line 289
    :cond_1f
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 290
    :cond_25
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_5

    .line 295
    :cond_2c
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeLetterThenDigitSequence()Ljava/lang/String;
    .registers 5

    .line 299
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 300
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    .line 301
    :goto_5
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_2c

    .line 302
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v2, v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_17

    const/16 v2, 0x5a

    if-le v1, v2, :cond_25

    :cond_17
    const/16 v2, 0x61

    if-lt v1, v2, :cond_1f

    const/16 v2, 0x7a

    if-le v1, v2, :cond_25

    .line 303
    :cond_1f
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 304
    :cond_25
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_5

    .line 308
    :cond_2c
    :goto_2c
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v1

    if-nez v1, :cond_45

    .line 309
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v1, v1, v2

    const/16 v3, 0x30

    if-lt v1, v3, :cond_45

    const/16 v3, 0x39

    if-gt v1, v3, :cond_45

    add-int/lit8 v2, v2, 0x1

    .line 311
    iput v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_2c

    .line 316
    :cond_45
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method consumeTagName()Ljava/lang/String;
    .registers 7

    .line 262
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 263
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    .line 264
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    .line 265
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    .line 267
    :goto_9
    iget v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    if-ge v3, v1, :cond_33

    .line 268
    aget-char v4, v2, v3

    const/16 v5, 0x9

    if-eq v4, v5, :cond_33

    const/16 v5, 0xa

    if-eq v4, v5, :cond_33

    const/16 v5, 0xd

    if-eq v4, v5, :cond_33

    const/16 v5, 0xc

    if-eq v4, v5, :cond_33

    const/16 v5, 0x20

    if-eq v4, v5, :cond_33

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_33

    const/16 v5, 0x3e

    if-eq v4, v5, :cond_33

    if-nez v4, :cond_2e

    goto :goto_33

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    .line 271
    iput v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_9

    .line 274
    :cond_33
    :goto_33
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    if-le v1, v0, :cond_41

    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-static {v2, v3, v0, v1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_43

    :cond_41
    const-string v0, ""

    :goto_43
    return-object v0
.end method

.method public consumeTo(C)Ljava/lang/String;
    .registers 5

    .line 183
    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->nextIndexOf(C)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_17

    .line 185
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    invoke-static {v0, v1, v2, p1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 186
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    return-object v0

    .line 189
    :cond_17
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method consumeTo(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 194
    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_17

    .line 196
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    invoke-static {v0, v1, v2, p1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 197
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    return-object v0

    .line 200
    :cond_17
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->consumeToEnd()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs consumeToAny([C)Ljava/lang/String;
    .registers 9

    .line 211
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 212
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    .line 213
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    .line 214
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    .line 217
    :goto_9
    iget v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    if-ge v3, v1, :cond_24

    .line 218
    array-length v3, p1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_1d

    aget-char v5, p1, v4

    .line 219
    iget v6, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v6, v2, v6

    if-ne v6, v5, :cond_1a

    goto :goto_24

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 222
    :cond_1d
    iget v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_9

    .line 225
    :cond_24
    :goto_24
    iget p1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    if-le p1, v0, :cond_32

    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int/2addr p1, v0

    invoke-static {v1, v2, v0, p1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_34

    :cond_32
    const-string p1, ""

    :goto_34
    return-object p1
.end method

.method varargs consumeToAnySorted([C)Ljava/lang/String;
    .registers 6

    .line 229
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 230
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    .line 231
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    .line 232
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    .line 234
    :goto_9
    iget v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    if-ge v3, v1, :cond_1d

    .line 235
    aget-char v3, v2, v3

    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v3

    if-ltz v3, :cond_16

    goto :goto_1d

    .line 237
    :cond_16
    iget v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    goto :goto_9

    .line 240
    :cond_1d
    :goto_1d
    iget p1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    if-le p1, v0, :cond_2b

    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    sub-int/2addr p1, v0

    invoke-static {v1, v2, v0, p1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2d

    :cond_2b
    const-string p1, ""

    :goto_2d
    return-object p1
.end method

.method consumeToEnd()Ljava/lang/String;
    .registers 5

    .line 278
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 279
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->stringCache:[Ljava/lang/String;

    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    sub-int/2addr v3, v2

    invoke-static {v0, v1, v2, v3}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->cacheString([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 280
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    iput v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    return-object v0
.end method

.method containsIgnoreCase(Ljava/lang/String;)Z
    .registers 4

    .line 430
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 431
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-virtual {p0, v0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1c

    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->nextIndexOf(Ljava/lang/CharSequence;)I

    move-result p1

    if-le p1, v1, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p1, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 p1, 0x1

    :goto_1d
    return p1
.end method

.method public current()C
    .registers 3

    .line 105
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 106
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->isEmptyNoBufferUp()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0xffff

    goto :goto_13

    :cond_d
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    :goto_13
    return v0
.end method

.method public isEmpty()Z
    .registers 3

    .line 91
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 92
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method mark()V
    .registers 2

    .line 128
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    iput v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufMark:I

    return-void
.end method

.method matchConsume(Ljava/lang/String;)Z
    .registers 3

    .line 410
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 411
    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 412
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method matchConsumeIgnoreCase(Ljava/lang/String;)Z
    .registers 3

    .line 420
    invoke-virtual {p0, p1}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->matchesIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 421
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method matches(C)Z
    .registers 4

    .line 346
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method matches(Ljava/lang/String;)Z
    .registers 8

    .line 351
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 352
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 353
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_10

    return v2

    :cond_10
    move v1, v2

    :goto_11
    if-ge v1, v0, :cond_24

    .line 357
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget v5, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_21

    return v2

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method varargs matchesAny([C)Z
    .registers 7

    .line 378
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 381
    :cond_8
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 382
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v2

    .line 383
    array-length v2, p1

    move v3, v1

    :goto_13
    if-ge v3, v2, :cond_1e

    aget-char v4, p1, v3

    if-ne v4, v0, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_1e
    return v1
.end method

.method matchesAnySorted([C)Z
    .registers 4

    .line 391
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 392
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p1

    if-ltz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    return p1
.end method

.method matchesDigit()Z
    .registers 4

    .line 403
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 405
    :cond_8
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v2

    const/16 v2, 0x30

    if-lt v0, v2, :cond_17

    const/16 v2, 0x39

    if-gt v0, v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method matchesIgnoreCase(Ljava/lang/String;)Z
    .registers 8

    .line 363
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 364
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 365
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le v0, v1, :cond_10

    return v2

    :cond_10
    move v1, v2

    :goto_11
    if-ge v1, v0, :cond_2c

    .line 369
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 370
    iget-object v4, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget v5, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eq v3, v4, :cond_29

    return v2

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_2c
    const/4 p1, 0x1

    return p1
.end method

.method matchesLetter()Z
    .registers 4

    .line 396
    invoke-virtual {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 398
    :cond_8
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    aget-char v0, v0, v2

    const/16 v2, 0x41

    if-lt v0, v2, :cond_16

    const/16 v2, 0x5a

    if-le v0, v2, :cond_24

    :cond_16
    const/16 v2, 0x61

    if-lt v0, v2, :cond_1e

    const/16 v2, 0x7a

    if-le v0, v2, :cond_24

    .line 399
    :cond_1e
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_24
    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method nextIndexOf(C)I
    .registers 4

    .line 143
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    .line 144
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    :goto_5
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v0, v1, :cond_16

    .line 145
    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_13

    .line 146
    iget p1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v0, p1

    return v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method nextIndexOf(Ljava/lang/CharSequence;)I
    .registers 10

    .line 158
    invoke-direct {p0}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufferUp()V

    const/4 v0, 0x0

    .line 160
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 161
    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    :goto_a
    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_4a

    .line 163
    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_21

    :goto_15
    add-int/2addr v1, v3

    .line 164
    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v2, :cond_21

    iget-object v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v2, v2, v1

    if-eq v0, v2, :cond_21

    goto :goto_15

    :cond_21
    add-int/lit8 v2, v1, 0x1

    .line 166
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    .line 167
    iget v5, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    if-ge v1, v5, :cond_48

    if-gt v4, v5, :cond_48

    move v5, v3

    move v3, v2

    :goto_31
    if-ge v3, v4, :cond_42

    .line 168
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    iget-object v7, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    aget-char v7, v7, v3

    if-ne v6, v7, :cond_42

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_42
    if-ne v3, v4, :cond_48

    .line 170
    iget p1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    sub-int/2addr v1, p1

    return v1

    :cond_48
    move v1, v2

    goto :goto_a

    :cond_4a
    const/4 p1, -0x1

    return p1
.end method

.method public pos()I
    .registers 3

    .line 82
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->readerPos:I

    iget v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    add-int/2addr v0, v1

    return v0
.end method

.method rangeEquals(IILjava/lang/String;)Z
    .registers 5

    .line 497
    iget-object v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    invoke-static {v0, p1, p2, p3}, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->rangeEquals([CIILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method rewindToMark()V
    .registers 2

    .line 132
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufMark:I

    iput v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 437
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->charBuf:[C

    iget v2, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    iget v3, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufLength:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method unconsume()V
    .registers 2

    .line 117
    iget v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/noties/markwon/html/jsoup/parser/CharacterReader;->bufPos:I

    return-void
.end method
