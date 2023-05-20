.class public Lcom/danikula/videocache/ProxyCacheUtils;
.super Ljava/lang/Object;
.source "ProxyCacheUtils.java"


# static fields
.field static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field static final MAX_ARRAY_PREVIEW:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assertBuffer([BJI)V
    .registers 6

    const-string v0, "Buffer must be not null!"

    .line 36
    invoke-static {p0, v0}, Lcom/danikula/videocache/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ltz p1, :cond_f

    move p1, p2

    goto :goto_10

    :cond_f
    move p1, v0

    :goto_10
    const-string v1, "Data offset must be positive!"

    .line 37
    invoke-static {p1, v1}, Lcom/danikula/videocache/Preconditions;->checkArgument(ZLjava/lang/String;)V

    if-ltz p3, :cond_1b

    .line 38
    array-length p0, p0

    if-gt p3, p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move p2, v0

    :goto_1c
    const-string p0, "Length must be in range [0..buffer.length]"

    invoke-static {p2, p0}, Lcom/danikula/videocache/Preconditions;->checkArgument(ZLjava/lang/String;)V

    return-void
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .registers 7

    .line 88
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 89
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_21

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    .line 90
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 92
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static close(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_c

    .line 70
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_c

    :catch_6
    move-exception p0

    const-string v0, "Error closing resource"

    .line 72
    invoke-static {v0, p0}, Lcom/danikula/videocache/HttpProxyCacheDebuger;->printfError(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public static computeMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "MD5"

    .line 79
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 81
    invoke-static {p0}, Lcom/danikula/videocache/ProxyCacheUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string/jumbo v0, "utf-8"

    .line 61
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    .line 63
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error decoding url"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string/jumbo v0, "utf-8"

    .line 53
    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_7} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error encoding url"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static getSupposablyMime(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 30
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 31
    invoke-static {p0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 p0, 0x0

    goto :goto_14

    :cond_10
    invoke-virtual {v0, p0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_14
    return-object p0
.end method

.method static preview([BI)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 42
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 43
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 44
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    if-ge v1, p1, :cond_30

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", ...]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_30
    return-object p0
.end method
