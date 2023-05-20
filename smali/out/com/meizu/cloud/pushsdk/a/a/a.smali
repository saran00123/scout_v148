.class public Lcom/meizu/cloud/pushsdk/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/meizu/cloud/pushsdk/a/a/a;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private c:[B

.field private d:[B

.field private e:[B

.field private f:[B

.field private g:[B

.field private h:Ljava/security/PublicKey;

.field private final i:Landroid/content/SharedPreferences;

.field private final j:Landroid/content/SharedPreferences;

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/a/a/a;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->k:J

    const/4 v2, 0x0

    const-string v3, "com.x.y.1"

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->i:Landroid/content/SharedPreferences;

    const-string v3, "com.x.y.2"

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->j:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->i:Landroid/content/SharedPreferences;

    const-string v3, "keyTimeout"

    const-string v4, "0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->i:Landroid/content/SharedPreferences;

    const-string v3, "createDate"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/a/a/a;->e()V

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->c:[B

    if-eqz v0, :cond_4c

    array-length v0, v0

    if-nez v0, :cond_37

    goto :goto_4c

    :cond_37
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->d:[B

    if-eqz v0, :cond_3e

    array-length v0, v0

    if-nez v0, :cond_7c

    :cond_3e
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->h:Ljava/security/PublicKey;

    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->h:Ljava/security/PublicKey;

    if-eqz p1, :cond_7c

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/a/a/a;->h()V

    goto :goto_7c

    :cond_4c
    :goto_4c
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->h:Ljava/security/PublicKey;

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->h:Ljava/security/PublicKey;

    if-eqz v0, :cond_5a

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/a/a/a;->f()V

    goto :goto_7c

    :cond_5a
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :try_start_67
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/a/a/a;->d()V

    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Landroid/content/Context;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->h:Ljava/security/PublicKey;

    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->h:Ljava/security/PublicKey;

    if-eqz p1, :cond_7c

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/a/a/a;->f()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_77} :catch_78

    goto :goto_7c

    :catch_78
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7c
    :goto_7c
    return-void
.end method

.method public static a()Lcom/meizu/cloud/pushsdk/a/a/a;
    .registers 2

    sget-object v0, Lcom/meizu/cloud/pushsdk/a/a/a;->a:Lcom/meizu/cloud/pushsdk/a/a/a;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyMgr is not initialised - invoke at least once with parameterised init/get"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_5
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    :cond_10
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_14} :catch_1d
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    :try_start_14
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_21

    goto :goto_21

    :catchall_18
    move-exception p1

    :try_start_19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1c

    :catch_1c
    throw p1

    :catch_1d
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_20

    :catch_20
    const/4 p1, 0x0

    :catch_21
    :goto_21
    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/meizu/cloud/pushsdk/a/a/a;->a:Lcom/meizu/cloud/pushsdk/a/a/a;

    if-nez v0, :cond_17

    sget-object v0, Lcom/meizu/cloud/pushsdk/a/a/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/meizu/cloud/pushsdk/a/a/a;->a:Lcom/meizu/cloud/pushsdk/a/a/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/meizu/cloud/pushsdk/a/a/a;

    invoke-direct {v1, p0}, Lcom/meizu/cloud/pushsdk/a/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/cloud/pushsdk/a/a/a;->a:Lcom/meizu/cloud/pushsdk/a/a/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/security/PublicKey;
    .registers 4

    const-string p1, "load publicKey from preference"

    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->j:Landroid/content/SharedPreferences;

    const-string v0, "publicKey"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    const/4 v0, 0x2

    :try_start_16
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_16 .. :try_end_29} :catch_2f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_16 .. :try_end_29} :catch_2a

    return-object p1

    :catch_2a
    move-exception p1

    invoke-virtual {p1}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_33

    :catch_2f
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_33
    :goto_33
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    const-string v0, "HttpKeyMgr"

    invoke-static {v0, p1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 3

    const-string v0, "HttpKeyMgr"

    invoke-static {v0, p1}, Lcom/meizu/cloud/pushinternal/DebugLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://norma-external-collect.meizu.com/android/exchange/getpublickey.do"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_7} :catch_b3

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    :try_start_15
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/net/ProtocolException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Ljava/net/ProtocolException;->printStackTrace()V

    :goto_1f
    const-string v1, "Charset"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_27
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_a0

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/a/a/a;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "body = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_61
    .catchall {:try_start_27 .. :try_end_61} :catchall_a9

    if-nez v3, :cond_a0

    :try_start_63
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_a0

    const-string v2, "value"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->j:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "publicKey"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_86} :catch_87
    .catchall {:try_start_63 .. :try_end_86} :catchall_a9

    goto :goto_a0

    :catch_87
    move-exception v2

    :try_start_88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadPublicKey message error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/cloud/pushsdk/a/a/a;->c(Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_88 .. :try_end_a0} :catchall_a9

    :cond_a0
    :goto_a0
    if-eqz v1, :cond_a5

    :try_start_a2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a5

    :catch_a5
    :cond_a5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_a9
    move-exception v2

    if-eqz v1, :cond_af

    :try_start_ac
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_af

    :catch_af
    :cond_af
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v2

    :catch_b3
    return-void
.end method

.method private e()V
    .registers 5

    const-string v0, "loadKeys"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->i:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "sKey64"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saved sKey64: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->g:[B

    :cond_2f
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->i:Landroid/content/SharedPreferences;

    const-string v2, "aKey64"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saved aKey64: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_60

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->f:[B

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->f:[B

    invoke-static {v0, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->d:[B

    :cond_60
    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->i:Landroid/content/SharedPreferences;

    const-string v2, "rKey64"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saved rKey64: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ab

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->e:[B

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->e:[B

    invoke-static {v0, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->c:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saved rKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->c:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Ljava/lang/String;)V

    :cond_ab
    return-void
.end method

.method private f()V
    .registers 1

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/a/a/a;->g()V

    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/a/a/a;->h()V

    return-void
.end method

.method private g()V
    .registers 5

    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->c:[B

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->c:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->e:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** rKey64: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->e:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rKey64"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->e:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_53
    return-void
.end method

.method private h()V
    .registers 5

    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->h:Ljava/security/PublicKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->c:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->d:[B

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->d:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->f:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "***** aKey64: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->f:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "aKey64"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->f:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4d} :catch_62
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_4d} :catch_5d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_4d} :catch_58
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_4d} :catch_53
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_4d} :catch_4e

    goto :goto_66

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_66

    :catch_53
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_66

    :catch_58
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_66

    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_66

    :catch_62
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_66
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->g:[B

    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->i:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->g:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "sKey64"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a([B)[B
    .registers 9

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->c:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_99

    array-length v0, v0

    if-nez v0, :cond_a

    goto/16 :goto_99

    :cond_a
    if-eqz p1, :cond_93

    array-length v0, p1

    if-nez v0, :cond_11

    goto/16 :goto_93

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>> encrypt input >>>>>>>>>>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {p1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Ljava/lang/String;)V

    const-string v0, "<<<<<<<<<< encrypt input <<<<<<<<<<"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Ljava/lang/String;)V

    :try_start_34
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->c:[B

    const-string v5, "AES"

    invoke-direct {v2, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v4, 0x1

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v6, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->c:[B

    invoke-direct {v5, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v4, v2, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>> encrypt output >>>>>>>>>>\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Ljava/lang/String;)V

    const-string v0, "<<<<<<<<<< encrypt output <<<<<<<<<<"

    invoke-direct {p0, v0}, Lcom/meizu/cloud/pushsdk/a/a/a;->b(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_34 .. :try_end_74} :catch_8e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_34 .. :try_end_74} :catch_89
    .catch Ljava/security/InvalidKeyException; {:try_start_34 .. :try_end_74} :catch_84
    .catch Ljavax/crypto/BadPaddingException; {:try_start_34 .. :try_end_74} :catch_7f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_34 .. :try_end_74} :catch_7a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_34 .. :try_end_74} :catch_75

    return-object p1

    :catch_75
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_92

    :catch_7a
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_92

    :catch_7f
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_92

    :catch_84
    move-exception p1

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_92

    :catch_89
    move-exception p1

    invoke-virtual {p1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_92

    :catch_8e
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_92
    return-object v1

    :cond_93
    :goto_93
    const-string p1, "input null!"

    :goto_95
    invoke-direct {p0, p1}, Lcom/meizu/cloud/pushsdk/a/a/a;->c(Ljava/lang/String;)V

    return-object v1

    :cond_99
    :goto_99
    const-string p1, "rKey null!"

    goto :goto_95
.end method

.method public b()[B
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->f:[B

    return-object v0
.end method

.method public c()[B
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/a/a/a;->g:[B

    return-object v0
.end method
