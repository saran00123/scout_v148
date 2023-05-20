.class public Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;
.super Lcom/google/android/exoplayer2/upstream/BaseDataSource;
.source "GSYExoHttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/HttpDataSource;


# static fields
.field private static final CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

.field public static final DEFAULT_CONNECT_TIMEOUT_MILLIS:I = 0x1f40

.field public static final DEFAULT_READ_TIMEOUT_MILLIS:I = 0x1f40

.field private static final HTTP_STATUS_PERMANENT_REDIRECT:I = 0x134

.field private static final HTTP_STATUS_TEMPORARY_REDIRECT:I = 0x133

.field private static final MAX_BYTES_TO_DRAIN:J = 0x800L

.field private static final MAX_REDIRECTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "GSYExoHttpDataSource"

.field private static final skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final allowCrossProtocolRedirects:Z

.field private bytesRead:J

.field private bytesSkipped:J

.field private bytesToRead:J

.field private bytesToSkip:J

.field private final connectTimeoutMillis:I

.field private connection:Ljava/net/HttpURLConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private inputStream:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private opened:Z

.field private final readTimeoutMillis:I

.field private final requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 64
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;)V
    .registers 4
    .param p2    # Lcom/google/android/exoplayer2/util/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x1f40

    .line 88
    invoke-direct {p0, p1, p2, v0, v0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;II)V
    .registers 13
    .param p2    # Lcom/google/android/exoplayer2/util/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 92
    move-object v7, v0

    check-cast v7, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V
    .registers 8
    .param p2    # Lcom/google/android/exoplayer2/util/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;IIZ",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 96
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/BaseDataSource;-><init>(Z)V

    .line 97
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->userAgent:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;

    .line 99
    new-instance p1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    .line 100
    iput p3, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->connectTimeoutMillis:I

    .line 101
    iput p4, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->readTimeoutMillis:I

    .line 102
    iput-boolean p5, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->allowCrossProtocolRedirects:Z

    .line 103
    iput-object p6, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .registers 10
    .param p2    # Lcom/google/android/exoplayer2/util/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v4, 0x1f40

    const/16 v5, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 111
    invoke-direct/range {v0 .. v5}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;II)V
    .registers 15
    .param p2    # Lcom/google/android/exoplayer2/util/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener;",
            "II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 119
    move-object v8, v0

    check-cast v8, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v8}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;Lcom/google/android/exoplayer2/upstream/TransferListener;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V
    .registers 15
    .param p2    # Lcom/google/android/exoplayer2/util/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/exoplayer2/upstream/TransferListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/Predicate<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/TransferListener;",
            "IIZ",
            "Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    .line 127
    invoke-direct/range {v0 .. v6}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/util/Predicate;IIZLcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;)V

    if-eqz p3, :cond_f

    .line 129
    invoke-virtual {p0, p3}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    :cond_f
    return-void
.end method

.method private closeConnectionQuietly()V
    .registers 4

    .line 535
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_13

    .line 537
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "GSYExoHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 539
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    const/4 v0, 0x0

    .line 542
    iput-object v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    :cond_13
    return-void
.end method

.method private static getContentLength(Ljava/net/HttpURLConnection;)J
    .registers 11

    const-string v0, "Content-Length"

    .line 424
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "]"

    const-string v3, "GSYExoHttpDataSource"

    if-nez v1, :cond_2c

    .line 427
    :try_start_10
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_15

    goto :goto_2e

    .line 429
    :catch_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected Content-Length ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    const-wide/16 v4, -0x1

    :goto_2e
    const-string v1, "Content-Range"

    .line 433
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 434
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a4

    .line 435
    sget-object v1, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->CONTENT_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 436
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_a4

    const/4 v6, 0x2

    .line 438
    :try_start_47
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-gez v1, :cond_64

    move-wide v4, v6

    goto :goto_a4

    :cond_64
    cmp-long v1, v4, v6

    if-eqz v1, :cond_a4

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inconsistent headers ["

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_8b
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_8b} :catch_8d

    move-wide v4, v0

    goto :goto_a4

    .line 446
    :catch_8d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected Content-Range ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    :goto_a4
    return-wide v4
.end method

.method private static handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_34

    .line 412
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https"

    .line 414
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    const-string p1, "http"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_33

    .line 415
    :cond_1c
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported protocol redirect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    :goto_33
    return-object v0

    .line 410
    :cond_34
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Null location redirect"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private makeConnection(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/HttpURLConnection;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 271
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 272
    iget v2, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpMethod:I

    .line 273
    iget-object v3, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->httpBody:[B

    .line 274
    iget-wide v14, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    .line 275
    iget-wide v12, v0, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const/4 v10, 0x1

    .line 276
    invoke-virtual {v0, v10}, Lcom/google/android/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v16

    move-object/from16 v11, p0

    .line 277
    iget-boolean v0, v11, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->allowCrossProtocolRedirects:Z

    if-nez v0, :cond_2c

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-wide v4, v14

    move-wide v6, v12

    move/from16 v8, v16

    .line 278
    invoke-direct/range {v0 .. v9}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    add-int/lit8 v8, v0, 0x1

    const/16 v4, 0x14

    if-gt v0, v4, :cond_95

    const/4 v0, 0x0

    move-object/from16 v4, p0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    move/from16 v17, v8

    move-wide v8, v14

    move-wide v10, v12

    move-wide/from16 v18, v12

    move/from16 v12, v16

    move v13, v0

    .line 284
    invoke-direct/range {v4 .. v13}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->makeConnection(Ljava/net/URL;I[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const-string v5, "Location"

    .line 286
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x12f

    const/16 v7, 0x12e

    const/16 v8, 0x12d

    const/16 v9, 0x12c

    const/4 v10, 0x1

    if-eq v2, v10, :cond_5e

    const/4 v11, 0x3

    if-ne v2, v11, :cond_6e

    :cond_5e
    if-eq v4, v9, :cond_86

    if-eq v4, v8, :cond_86

    if-eq v4, v7, :cond_86

    if-eq v4, v6, :cond_86

    const/16 v11, 0x133

    if-eq v4, v11, :cond_86

    const/16 v11, 0x134

    if-eq v4, v11, :cond_86

    :cond_6e
    const/4 v3, 0x2

    if-ne v2, v3, :cond_85

    if-eq v4, v9, :cond_7a

    if-eq v4, v8, :cond_7a

    if-eq v4, v7, :cond_7a

    if-eq v4, v6, :cond_7a

    goto :goto_85

    .line 292
    :cond_7a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 295
    invoke-static {v1, v5}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    move-object v3, v0

    move v2, v10

    goto :goto_8e

    :cond_85
    :goto_85
    return-object v0

    .line 297
    :cond_86
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 298
    invoke-static {v1, v5}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->handleRedirect(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    move-object v1, v0

    :goto_8e
    move-object/from16 v11, p0

    move/from16 v0, v17

    move-wide/from16 v12, v18

    goto :goto_2d

    :cond_95
    move/from16 v17, v8

    .line 302
    new-instance v0, Ljava/net/NoRouteToHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many redirects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeConnection(Ljava/net/URL;I[BJJZZ)Ljava/net/HttpURLConnection;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_57

    .line 311
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 312
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v3, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource$1;

    invoke-direct {v3, p0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource$1;-><init>(Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;)V

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 319
    new-array v0, v2, [Ljavax/net/ssl/TrustManager;

    new-instance v3, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource$2;

    invoke-direct {v3, p0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource$2;-><init>(Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;)V

    aput-object v3, v0, v1

    :try_start_28
    const-string v3, "SSL"

    .line 338
    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    const/4 v4, 0x0

    .line 339
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v4, v0, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 341
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 342
    move-object v3, p1

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 343
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    new-instance v3, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource$3;

    invoke-direct {v3, p0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource$3;-><init>(Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;)V

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    :try_end_4c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_28 .. :try_end_4c} :catch_52
    .catch Ljava/security/KeyManagementException; {:try_start_28 .. :try_end_4c} :catch_4d

    goto :goto_5d

    :catch_4d
    move-exception v0

    .line 352
    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_5d

    :catch_52
    move-exception v0

    .line 350
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_5d

    .line 356
    :cond_57
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 358
    :goto_5d
    iget v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->connectTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 359
    iget v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->readTimeoutMillis:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 362
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->defaultRequestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    if-eqz v0, :cond_93

    .line 363
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 365
    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 366
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 367
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77

    .line 371
    :cond_93
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->getSnapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 373
    :goto_a1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 374
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 375
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a1

    :cond_bd
    const-wide/16 v3, 0x0

    cmp-long v0, p4, v3

    const-wide/16 v3, -0x1

    if-nez v0, :cond_c9

    cmp-long v0, p6, v3

    if-eqz v0, :cond_fb

    .line 379
    :cond_c9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v3, p6, v3

    if-eqz v3, :cond_f6

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long/2addr p4, p6

    const-wide/16 p6, 0x1

    sub-long/2addr p4, p6

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f6
    const-string p4, "Range"

    .line 384
    invoke-virtual {p1, p4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_fb
    iget-object p4, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->userAgent:Ljava/lang/String;

    const-string p5, "User-Agent"

    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p8, :cond_10b

    const-string p4, "Accept-Encoding"

    const-string p5, "identity"

    .line 389
    invoke-virtual {p1, p4, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_10b
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_111

    move v1, v2

    .line 393
    :cond_111
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 394
    invoke-static {p2}, Lcom/google/android/exoplayer2/upstream/DataSpec;->getStringForHttpMethod(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_12f

    .line 396
    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 397
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 398
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 399
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 400
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_132

    .line 402
    :cond_12f
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_132
    return-object p1
.end method

.method private static maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    .registers 5

    .line 509
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_c

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_57

    .line 511
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1e

    .line 513
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_25

    return-void

    :cond_1e
    const-wide/16 v0, 0x800

    cmp-long p1, p1, v0

    if-gtz p1, :cond_25

    return-void

    .line 520
    :cond_25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 521
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3d

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 522
    :cond_3d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    .line 523
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 524
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 525
    new-array p2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_57} :catch_57

    :catch_57
    :cond_57
    return-void
.end method

.method private readInternal([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    .line 484
    :cond_4
    iget-wide v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-eqz v4, :cond_1d

    .line 485
    iget-wide v6, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_17

    return v5

    :cond_17
    int-to-long v6, p3

    .line 490
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 493
    :cond_1d
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_32

    .line 495
    iget-wide p1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesToRead:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_2c

    return v5

    .line 496
    :cond_2c
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 501
    :cond_32
    iget-wide p2, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesRead:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesRead:J

    .line 502
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesTransferred(I)V

    return p1
.end method

.method private skipInternal()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    iget-wide v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesSkipped:J

    iget-wide v2, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesToSkip:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_58

    .line 456
    sget-object v0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    if-nez v0, :cond_19

    const/16 v0, 0x1000

    .line 458
    new-array v0, v0, [B

    .line 461
    :cond_19
    :goto_19
    iget-wide v1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesSkipped:J

    iget-wide v3, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesToSkip:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_53

    sub-long/2addr v3, v1

    .line 462
    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 463
    iget-object v2, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->inputStream:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 464
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_4d

    const/4 v2, -0x1

    if-eq v1, v2, :cond_47

    .line 472
    iget-wide v2, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesSkipped:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesSkipped:J

    .line 473
    invoke-virtual {p0, v1}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesTransferred(I)V

    goto :goto_19

    .line 469
    :cond_47
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 465
    :cond_4d
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 476
    :cond_53
    sget-object v1, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->skipBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_58
    return-void
.end method


# virtual methods
.method protected final bytesRead()J
    .registers 3

    .line 263
    iget-wide v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesRead:J

    return-wide v0
.end method

.method protected final bytesRemaining()J
    .registers 5

    .line 267
    iget-wide v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesToRead:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_9

    goto :goto_c

    :cond_9
    iget-wide v2, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesRead:J

    sub-long/2addr v0, v2

    :goto_c
    return-wide v0
.end method

.method protected final bytesSkipped()J
    .registers 3

    .line 259
    iget-wide v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesSkipped:J

    return-wide v0
.end method

.method public clearAllRequestProperties()V
    .registers 2

    .line 155
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->clear()V

    return-void
.end method

.method public clearRequestProperty(Ljava/lang/String;)V
    .registers 3

    .line 150
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 232
    :try_start_2
    iget-object v2, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->inputStream:Ljava/io/InputStream;

    if-eqz v2, :cond_1f

    .line 233
    iget-object v2, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesRemaining()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->maybeTerminateInputStream(Ljava/net/HttpURLConnection;J)V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_2e

    .line 236
    :try_start_f
    iget-object v2, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_15
    .catchall {:try_start_f .. :try_end_14} :catchall_2e

    goto :goto_1f

    :catch_15
    move-exception v2

    .line 238
    :try_start_16
    new-instance v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v4, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw v3
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_2e

    .line 242
    :cond_1f
    :goto_1f
    iput-object v1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 243
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->closeConnectionQuietly()V

    .line 244
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->opened:Z

    if-eqz v1, :cond_2d

    .line 245
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->opened:Z

    .line 246
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->transferEnded()V

    :cond_2d
    return-void

    :catchall_2e
    move-exception v2

    .line 242
    iput-object v1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->inputStream:Ljava/io/InputStream;

    .line 243
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->closeConnectionQuietly()V

    .line 244
    iget-boolean v1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->opened:Z

    if-eqz v1, :cond_3d

    .line 245
    iput-boolean v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->opened:Z

    .line 246
    invoke-virtual {p0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->transferEnded()V

    .line 249
    :cond_3d
    throw v2
.end method

.method protected final getConnection()Ljava/net/HttpURLConnection;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 255
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 136
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_12

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    const-string v0, "Unable to connect to "

    .line 159
    iput-object p1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const-wide/16 v1, 0x0

    .line 160
    iput-wide v1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesRead:J

    .line 161
    iput-wide v1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesSkipped:J

    .line 162
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->transferInitializing(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    const/4 v3, 0x1

    .line 165
    :try_start_e
    invoke-direct {p0, p1}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->makeConnection(Lcom/google/android/exoplayer2/upstream/DataSpec;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->connection:Ljava/net/HttpURLConnection;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_cb

    .line 173
    :try_start_14
    iget-object v4, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 174
    iget-object v5, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_20} :catch_ac

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_90

    const/16 v6, 0x12b

    if-gt v4, v6, :cond_90

    .line 181
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v6, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->contentTypePredicate:Lcom/google/android/exoplayer2/util/Predicate;

    if-eqz v6, :cond_42

    invoke-interface {v6, v0}, Lcom/google/android/exoplayer2/util/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    goto :goto_42

    .line 183
    :cond_39
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->closeConnectionQuietly()V

    .line 184
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;

    invoke-direct {v1, v0, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidContentTypeException;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    throw v1

    :cond_42
    :goto_42
    if-ne v4, v5, :cond_4c

    .line 186
    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_4c

    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->position:J

    :cond_4c
    iput-wide v1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesToSkip:J

    .line 187
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/upstream/DataSpec;->isFlagSet(I)Z

    move-result v0

    if-nez v0, :cond_72

    .line 188
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_61

    .line 189
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesToRead:J

    goto :goto_76

    .line 191
    :cond_61
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_6f

    .line 192
    iget-wide v4, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesToSkip:J

    sub-long v4, v0, v4

    :cond_6f
    iput-wide v4, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesToRead:J

    goto :goto_76

    .line 195
    :cond_72
    iget-wide v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->length:J

    iput-wide v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesToRead:J

    .line 199
    :goto_76
    :try_start_76
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->inputStream:Ljava/io/InputStream;
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_7e} :catch_86

    .line 205
    iput-boolean v3, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->opened:Z

    .line 206
    invoke-virtual {p0, p1}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->transferStarted(Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    .line 207
    iget-wide v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->bytesToRead:J

    return-wide v0

    :catch_86
    move-exception v0

    .line 201
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->closeConnectionQuietly()V

    .line 202
    new-instance v1, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, v0, p1, v3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw v1

    .line 210
    :cond_90
    iget-object v1, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 211
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->closeConnectionQuietly()V

    .line 212
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    invoke-direct {v2, v4, v0, v1, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/DataSpec;)V

    const/16 p1, 0x1a0

    if-ne v4, p1, :cond_ab

    .line 214
    new-instance p1, Lcom/google/android/exoplayer2/upstream/DataSourceException;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/upstream/DataSourceException;-><init>(I)V

    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 217
    :cond_ab
    throw v2

    :catch_ac
    move-exception v1

    .line 176
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->closeConnectionQuietly()V

    .line 177
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw v2

    :catch_cb
    move-exception v1

    .line 167
    new-instance v2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1, p1, v3}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw v2
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation

    .line 223
    :try_start_0
    invoke-direct {p0}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->skipInternal()V

    .line 224
    invoke-direct {p0, p1, p2, p3}, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->readInternal([BII)I

    move-result p1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    return p1

    :catch_8
    move-exception p1

    .line 226
    new-instance p2, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object p3, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    const/4 v0, 0x3

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplayer2/upstream/DataSpec;I)V

    throw p2
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 144
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Ltv/danmaku/ijk/media/exo2/source/GSYExoHttpDataSource;->requestProperties:Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
