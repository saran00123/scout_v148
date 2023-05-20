.class public Lcom/amazon/identity/auth/device/endpoint/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HttpResponse"


# instance fields
.field private final responseBody:Ljava/lang/String;

.field private final responseCode:I

.field private final responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->responseCode:I

    .line 38
    iput-object p2, p0, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->responseBody:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->responseHeaders:Ljava/util/Map;

    return-void
.end method

.method private static readInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 9

    const-string v0, "Cannot close BufferedReader"

    const-string v1, "Cannot close response stream"

    const/4 v2, 0x0

    if-nez p0, :cond_8

    return-object v2

    .line 63
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    :try_start_d
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, p0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_3c
    .catchall {:try_start_d .. :try_end_19} :catchall_3a

    .line 67
    :goto_19
    :try_start_19
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 68
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_22} :catch_35
    .catchall {:try_start_19 .. :try_end_22} :catchall_31

    goto :goto_19

    .line 75
    :cond_23
    :try_start_23
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_2d

    :catch_27
    move-exception v2

    .line 77
    sget-object v4, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v0, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :goto_2d
    :try_start_2d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_54

    goto :goto_5a

    :catchall_31
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    goto :goto_5f

    :catch_35
    move-exception v2

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    goto :goto_3d

    :catchall_3a
    move-exception v3

    goto :goto_5f

    :catch_3c
    move-exception v4

    .line 71
    :goto_3d
    :try_start_3d
    sget-object v5, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Cannot parse response stream"

    invoke-static {v5, v6, v4}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_3a

    if-eqz v2, :cond_50

    .line 75
    :try_start_46
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_50

    :catch_4a
    move-exception v2

    .line 77
    sget-object v4, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v0, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :cond_50
    :goto_50
    :try_start_50
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_5a

    :catch_54
    move-exception p0

    .line 83
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :goto_5a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_5f
    if-eqz v2, :cond_6b

    .line 75
    :try_start_61
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_6b

    :catch_65
    move-exception v2

    .line 77
    sget-object v4, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->LOG_TAG:Ljava/lang/String;

    invoke-static {v4, v0, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    :cond_6b
    :goto_6b
    :try_start_6b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_75

    :catch_6f
    move-exception p0

    .line 83
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :goto_75
    throw v3
.end method

.method public static readResponse(Ljavax/net/ssl/HttpsURLConnection;)Lcom/amazon/identity/auth/device/endpoint/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v1

    .line 28
    invoke-static {p0}, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->retrieveResponseBody(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {p0}, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->retrieveResponseHeaders(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;-><init>(ILjava/lang/String;Ljava/util/Map;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_15

    .line 31
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    return-object v0

    :catchall_15
    move-exception v0

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 32
    throw v0
.end method

.method private static retrieveResponseBody(Ljavax/net/ssl/HttpsURLConnection;)Ljava/lang/String;
    .registers 5

    .line 45
    :try_start_0
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_9

    .line 47
    :catch_5
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_9
    if-nez v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_d
    invoke-static {v0}, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->readInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object v0, v2, p0

    const-string p0, "Request to %s received response %s"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Response received"

    invoke-static {v1, v2, p0}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static retrieveResponseHeaders(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 90
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    const-string v3, ", "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v3, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header from response: name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "val="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/amazon/identity/auth/map/device/utils/MAPLog;->pii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_5f
    return-object v0
.end method


# virtual methods
.method public getRedirectLocation()Ljava/lang/String;
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->responseHeaders:Ljava/util/Map;

    const-string v1, "Location"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getResponseBody()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->responseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    .line 103
    iget v0, p0, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->responseCode:I

    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/amazon/identity/auth/device/endpoint/HttpResponse;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method
