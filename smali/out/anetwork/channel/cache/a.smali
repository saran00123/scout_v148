.class public Lanetwork/channel/cache/a;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final a:Ljava/util/TimeZone;

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "GMT"

    .line 18
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lanetwork/channel/cache/a;->a:Ljava/util/TimeZone;

    .line 20
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lanetwork/channel/cache/a;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .registers 5

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_9

    return-wide v1

    .line 32
    :cond_9
    :try_start_9
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 33
    invoke-static {}, Lanetwork/channel/cache/a;->a()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    .line 34
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v0, p0, :cond_26

    .line 35
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_25} :catch_26

    return-wide v0

    :catch_26
    :cond_26
    return-wide v1
.end method

.method public static a(Ljava/util/Map;)Lanetwork/channel/cache/Cache$Entry;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lanetwork/channel/cache/Cache$Entry;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "Cache-Control"

    .line 55
    invoke-static {v0, v3}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_4a

    const-string v9, ","

    .line 58
    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-wide v9, v7

    .line 59
    :goto_1a
    array-length v11, v3

    if-ge v6, v11, :cond_4c

    .line 60
    aget-object v11, v3, v6

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "no-store"

    .line 61
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2c

    return-object v4

    :cond_2c
    const-string v12, "no-cache"

    .line 63
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_35

    goto :goto_4b

    :cond_35
    const-string v12, "max-age="

    .line 66
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_47

    const/16 v12, 0x8

    .line 68
    :try_start_3f
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_47} :catch_47

    :catch_47
    :cond_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_4a
    move v5, v6

    :goto_4b
    move-wide v9, v7

    :cond_4c
    const-string v3, "Date"

    .line 75
    invoke-static {v0, v3}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 77
    invoke-static {v3}, Lanetwork/channel/cache/a;->a(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_5a

    :cond_59
    move-wide v11, v7

    :goto_5a
    const-string v3, "Expires"

    .line 80
    invoke-static {v0, v3}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_67

    .line 82
    invoke-static {v3}, Lanetwork/channel/cache/a;->a(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_68

    :cond_67
    move-wide v13, v7

    :goto_68
    const-string v3, "Last-Modified"

    .line 85
    invoke-static {v0, v3}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_77

    .line 87
    invoke-static {v3}, Lanetwork/channel/cache/a;->a(Ljava/lang/String;)J

    move-result-wide v15

    move-wide/from16 v17, v15

    goto :goto_79

    :cond_77
    move-wide/from16 v17, v7

    :goto_79
    const-string v3, "ETag"

    .line 90
    invoke-static {v0, v3}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v5, :cond_88

    const-wide/16 v5, 0x3e8

    mul-long/2addr v9, v5

    add-long/2addr v1, v9

    :goto_85
    move-wide/from16 v5, v17

    goto :goto_9b

    :cond_88
    cmp-long v5, v11, v7

    if-lez v5, :cond_93

    cmp-long v5, v13, v11

    if-ltz v5, :cond_93

    sub-long/2addr v13, v11

    add-long/2addr v1, v13

    goto :goto_85

    :cond_93
    move-wide/from16 v5, v17

    cmp-long v9, v5, v7

    if-lez v9, :cond_9a

    goto :goto_9b

    :cond_9a
    move-wide v1, v7

    :goto_9b
    cmp-long v7, v1, v7

    if-nez v7, :cond_a2

    if-nez v3, :cond_a2

    return-object v4

    .line 104
    :cond_a2
    new-instance v4, Lanetwork/channel/cache/Cache$Entry;

    invoke-direct {v4}, Lanetwork/channel/cache/Cache$Entry;-><init>()V

    .line 105
    iput-object v3, v4, Lanetwork/channel/cache/Cache$Entry;->etag:Ljava/lang/String;

    .line 106
    iput-wide v1, v4, Lanetwork/channel/cache/Cache$Entry;->ttl:J

    .line 107
    iput-wide v11, v4, Lanetwork/channel/cache/Cache$Entry;->serverDate:J

    .line 108
    iput-wide v5, v4, Lanetwork/channel/cache/Cache$Entry;->lastModified:J

    .line 109
    iput-object v0, v4, Lanetwork/channel/cache/Cache$Entry;->responseHeaders:Ljava/util/Map;

    return-object v4
.end method

.method public static a(J)Ljava/lang/String;
    .registers 4

    .line 23
    invoke-static {}, Lanetwork/channel/cache/a;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a()Ljava/text/SimpleDateFormat;
    .registers 3

    .line 116
    sget-object v0, Lanetwork/channel/cache/a;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_1d

    .line 118
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 119
    sget-object v1, Lanetwork/channel/cache/a;->a:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 120
    sget-object v1, Lanetwork/channel/cache/a;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1d
    return-object v0
.end method
