.class public Lcom/alibaba/sdk/android/tbrest/request/BizRequest;
.super Ljava/lang/Object;
.source "BizRequest.java"


# static fields
.field private static final FLAGS_GET_CONFIG:B = 0x20t

.field private static final FLAGS_GZIP:B = 0x1t

.field private static final FLAGS_GZIP_FLUSH_DIC:B = 0x2t

.field private static final FLAGS_KEEP_ALIVE:B = 0x8t

.field private static final FLAGS_NO_GZIP:B = 0x0t

.field private static final FLAGS_REAL_TIME_DEBUG:B = 0x10t

.field private static final HEAD_LENGTH:I = 0x8

.field private static final PAYLOAD_MAX_LENGTH:I = 0x1000000

.field private static mReceivedDataLen:J = 0x0L

.field static mResponseAdditionalData:Ljava/lang/String; = null

.field static needConfigByResponse:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHead(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .line 137
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appVersion:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_7

    move-object v0, v1

    :cond_7
    const/4 v2, 0x0

    .line 144
    :try_start_8
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 145
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_19

    :catch_17
    const-string v3, "Unknown"

    .line 150
    :goto_19
    iget-object p0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->channel:Ljava/lang/String;

    if-nez p0, :cond_1e

    move-object p0, v1

    .line 154
    :cond_1e
    invoke-static {p2}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x6

    .line 158
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    const/4 p1, 0x2

    aput-object v3, v1, p1

    const/4 p1, 0x3

    aput-object p0, v1, p1

    const/4 p0, 0x4

    aput-object p2, v1, p0

    const/4 p0, 0x5

    const-string p1, "6.5.1.3"

    aput-object p1, v1, p0

    const-string p0, "ak=%s&av=%s&avsys=%s&c=%s&d=%s&sv=%s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "send url :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->i(Ljava/lang/String;)V

    return-object p0
.end method

.method public static getPackRequest(Landroid/content/Context;Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/util/Map;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    iget-object v0, p1, Lcom/alibaba/sdk/android/tbrest/SendService;->appKey:Ljava/lang/String;

    const/4 v1, 0x1

    .line 43
    invoke-static {p1, v0, p0, p2, v1}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 52
    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;I)[B

    move-result-object p0

    return-object p0
.end method

.method static getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;I)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPayload(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/GzipUtils;->gzip([B)[B

    move-result-object p0

    if-eqz p0, :cond_4c

    .line 68
    array-length p1, p0

    const/high16 p2, 0x1000000

    if-lt p1, p2, :cond_10

    goto :goto_4c

    .line 72
    :cond_10
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 p2, 0x1

    .line 73
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 74
    array-length p2, p0

    invoke-static {p2}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->intToBytes3(I)[B

    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 76
    invoke-virtual {p1, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 p2, 0x9

    int-to-byte p2, p2

    .line 82
    sget-boolean p3, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->needConfigByResponse:Z

    if-eqz p3, :cond_2e

    or-int/lit8 p2, p2, 0x20

    int-to-byte p2, p2

    .line 85
    :cond_2e
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p2, 0x0

    .line 87
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 88
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 89
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 91
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 93
    :try_start_3f
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_4b

    :catch_43
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_4b
    return-object p0

    :cond_4c
    :goto_4c
    const/4 p0, 0x0

    return-object p0
.end method

.method static getPackRequestByRealtime(Landroid/content/Context;Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/util/Map;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    iget-object v0, p1, Lcom/alibaba/sdk/android/tbrest/SendService;->appKey:Ljava/lang/String;

    const/4 v1, 0x2

    .line 48
    invoke-static {p1, v0, p0, p2, v1}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;I)[B

    move-result-object p0

    return-object p0
.end method

.method static getPackRequestByRealtime(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    .line 56
    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getPackRequest(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static getPayload(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/tbrest/SendService;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    invoke-static {p0, p1, p2}, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->getHead(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_26

    .line 103
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_26

    .line 104
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    invoke-static {p2}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->intToBytes2(I)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2d

    .line 107
    :cond_26
    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->intToBytes2(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_2d
    if-eqz p3, :cond_7c

    .line 110
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_7c

    .line 111
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 113
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->intToBytes4(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 114
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_74

    .line 116
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    .line 117
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->intToBytes4(I)[B

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 119
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_3d

    .line 121
    :cond_74
    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->intToBytes4(I)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_3d

    .line 126
    :cond_7c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 128
    :try_start_80
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_8c

    :catch_84
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    :goto_8c
    return-object p0
.end method

.method static parseResult([B)I
    .registers 7

    const/4 v0, -0x1

    if-eqz p0, :cond_57

    .line 167
    array-length v1, p0

    const/16 v2, 0xc

    if-ge v1, v2, :cond_9

    goto :goto_57

    .line 171
    :cond_9
    array-length v1, p0

    int-to-long v3, v1

    sput-wide v3, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->mReceivedDataLen:J

    const/4 v1, 0x3

    const/4 v3, 0x1

    .line 172
    invoke-static {p0, v3, v1}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->bytesToInt([BII)I

    move-result v1

    const/16 v4, 0x8

    add-int/2addr v1, v4

    .line 173
    array-length v5, p0

    if-eq v1, v5, :cond_1f

    const-string p0, "recv len error"

    .line 176
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_5c

    :cond_1f
    const/4 v0, 0x5

    .line 178
    aget-byte v0, p0, v0

    and-int/2addr v0, v3

    const/4 v1, 0x0

    if-ne v3, v0, :cond_27

    goto :goto_28

    :cond_27
    move v3, v1

    :goto_28
    const/4 v0, 0x4

    .line 183
    invoke-static {p0, v4, v0}, Lcom/alibaba/sdk/android/tbrest/utils/ByteUtils;->bytesToInt([BII)I

    move-result v0

    .line 184
    array-length v4, p0

    sub-int/2addr v4, v2

    if-ltz v4, :cond_34

    array-length v4, p0

    sub-int/2addr v4, v2

    goto :goto_35

    :cond_34
    move v4, v1

    :goto_35
    if-lez v4, :cond_53

    if-eqz v3, :cond_4b

    .line 187
    new-array v3, v4, [B

    .line 188
    invoke-static {p0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/utils/GzipUtils;->unGzip([B)[B

    move-result-object p0

    .line 190
    new-instance v2, Ljava/lang/String;

    array-length v3, p0

    invoke-direct {v2, p0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    sput-object v2, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    goto :goto_5c

    .line 192
    :cond_4b
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v2, v4}, Ljava/lang/String;-><init>([BII)V

    sput-object v1, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    goto :goto_5c

    :cond_53
    const/4 p0, 0x0

    .line 195
    sput-object p0, Lcom/alibaba/sdk/android/tbrest/request/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    goto :goto_5c

    :cond_57
    :goto_57
    const-string p0, "recv errCode UNKNOWN_ERROR"

    .line 169
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 200
    :goto_5c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errCode:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    return v0
.end method
