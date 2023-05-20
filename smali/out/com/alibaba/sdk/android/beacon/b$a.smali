.class final Lcom/alibaba/sdk/android/beacon/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/beacon/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/sdk/android/beacon/b;


# direct methods
.method private constructor <init>(Lcom/alibaba/sdk/android/beacon/b;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/beacon/b$a;->b:Lcom/alibaba/sdk/android/beacon/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/beacon/b;Lcom/alibaba/sdk/android/beacon/b$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/beacon/b$a;-><init>(Lcom/alibaba/sdk/android/beacon/b;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v1, 0x2710

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    sget-boolean v1, Lcom/alibaba/sdk/android/beacon/a;->a:Z

    if-eqz v1, :cond_2f

    const-string v1, "Host"

    const-string v2, "beacon-api.aliyuncs.com"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_33} :catch_92
    .catchall {:try_start_1 .. :try_end_33} :catchall_8f

    :try_start_33
    invoke-virtual {v1, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/alibaba/sdk/android/beacon/b$a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_4c

    :cond_48
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_4c
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_58} :catch_8b
    .catchall {:try_start_33 .. :try_end_58} :catchall_87

    :try_start_58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_67

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5d

    :cond_67
    if-nez v2, :cond_76

    iget-object v0, p0, Lcom/alibaba/sdk/android/beacon/b$a;->b:Lcom/alibaba/sdk/android/beacon/b;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p2, v2}, Lcom/alibaba/sdk/android/beacon/b;->a(Lcom/alibaba/sdk/android/beacon/b;Ljava/lang/String;Ljava/lang/String;)V

    :cond_76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_7a} :catch_85
    .catchall {:try_start_58 .. :try_end_7a} :catchall_83

    if-eqz v1, :cond_7f

    :try_start_7c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_7f
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_82} :catch_82

    :catch_82
    return-object p1

    :catchall_83
    move-exception p1

    goto :goto_89

    :catch_85
    move-exception p1

    goto :goto_8d

    :catchall_87
    move-exception p1

    move-object v3, v0

    :goto_89
    move-object v0, v1

    goto :goto_b6

    :catch_8b
    move-exception p1

    move-object v3, v0

    :goto_8d
    move-object v0, v1

    goto :goto_94

    :catchall_8f
    move-exception p1

    move-object v3, v0

    goto :goto_b6

    :catch_92
    move-exception p1

    move-object v3, v0

    :goto_94
    :try_start_94
    const-string p2, "beacon"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p2, p0, Lcom/alibaba/sdk/android/beacon/b$a;->b:Lcom/alibaba/sdk/android/beacon/b;

    const-string v1, "-100"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/alibaba/sdk/android/beacon/b;->a(Lcom/alibaba/sdk/android/beacon/b;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_94 .. :try_end_a8} :catchall_b5

    if-eqz v0, :cond_ad

    :try_start_aa
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_ad
    if-eqz v3, :cond_b2

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b2} :catch_b2

    :catch_b2
    :cond_b2
    const-string p1, ""

    return-object p1

    :catchall_b5
    move-exception p1

    :goto_b6
    if-eqz v0, :cond_bb

    :try_start_b8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_bb
    if-eqz v3, :cond_c0

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c0} :catch_c0

    :catch_c0
    :cond_c0
    throw p1
.end method

.method a(I)Z
    .registers 3

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_a

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method
