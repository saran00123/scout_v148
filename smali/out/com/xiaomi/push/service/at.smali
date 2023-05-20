.class public Lcom/xiaomi/push/service/at;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/service/at$b;,
        Lcom/xiaomi/push/service/at$a;
    }
.end annotation


# static fields
.field private static a:J


# direct methods
.method private static a(Landroid/content/Context;Ljava/io/InputStream;)I
    .registers 5

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    invoke-static {p1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_3f

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne p1, v2, :cond_16

    goto :goto_3f

    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 p1, 0x43200000    # 160.0f

    div-float/2addr p0, p1

    const/high16 p1, 0x42400000    # 48.0f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le p1, p0, :cond_3e

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le p1, p0, :cond_3e

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr p1, p0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_3e
    return v1

    :cond_3f
    :goto_3f
    const-string p0, "decode dimension failed for bitmap."

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_37
    .catchall {:try_start_5 .. :try_end_d} :catchall_33

    :try_start_d
    invoke-static {p0, v1}, Lcom/xiaomi/push/service/at;->a(Landroid/content/Context;Ljava/io/InputStream;)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_30
    .catchall {:try_start_d .. :try_end_19} :catchall_2d

    :try_start_19
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_24} :catch_2b
    .catchall {:try_start_19 .. :try_end_24} :catchall_44

    invoke-static {p0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    return-object p1

    :catch_2b
    move-exception p1

    goto :goto_3a

    :catchall_2d
    move-exception p1

    move-object p0, v0

    goto :goto_45

    :catch_30
    move-exception p1

    move-object p0, v0

    goto :goto_3a

    :catchall_33
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    goto :goto_45

    :catch_37
    move-exception p1

    move-object p0, v0

    move-object v1, p0

    :goto_3a
    :try_start_3a
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_44

    invoke-static {p0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_44
    move-exception p1

    :goto_45
    invoke-static {p0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private static a(Ljava/lang/String;Z)Lcom/xiaomi/push/service/at$a;
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_c} :catch_e1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_d2
    .catchall {:try_start_1 .. :try_end_c} :catchall_cf

    const/16 v2, 0x1f40

    :try_start_e
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "User-agent"

    const-string v3, "Mozilla/5.0 (Linux; U;) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    const v3, 0x19000

    if-eqz p1, :cond_50

    if-le v2, v3, :cond_50

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bitmap size is too big, max size is 102400  contentLen size is "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from url "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_47} :catch_cd
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_47} :catch_ca
    .catchall {:try_start_e .. :try_end_47} :catchall_c8

    invoke-static {v0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4f
    return-object v0

    :cond_50
    :try_start_50
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v4, 0xc8

    if-eq v2, v4, :cond_7a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Http Response Code "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " received"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/net/SocketTimeoutException; {:try_start_50 .. :try_end_71} :catch_cd
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_71} :catch_ca
    .catchall {:try_start_50 .. :try_end_71} :catchall_c8

    invoke-static {v0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_79

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_79
    return-object v0

    :cond_7a
    :try_start_7a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_7e
    .catch Ljava/net/SocketTimeoutException; {:try_start_7a .. :try_end_7e} :catch_cd
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7e} :catch_ca
    .catchall {:try_start_7a .. :try_end_7e} :catchall_c8

    :try_start_7e
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p1, :cond_87

    move p1, v3

    goto :goto_8a

    :cond_87
    const p1, 0x1f4000

    :goto_8a
    const/16 v5, 0x400

    new-array v6, v5, [B

    :goto_8e
    if-lez p1, :cond_9e

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_99

    goto :goto_9e

    :cond_99
    sub-int/2addr p1, v8

    invoke-virtual {v4, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_8e

    :cond_9e
    :goto_9e
    if-gtz p1, :cond_b3

    const-string p1, "length 102400 exhausted."

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/xiaomi/push/service/at$a;

    invoke-direct {p1, v0, v3}, Lcom/xiaomi/push/service/at$a;-><init>([BI)V
    :try_end_aa
    .catch Ljava/net/SocketTimeoutException; {:try_start_7e .. :try_end_aa} :catch_e3
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_aa} :catch_c6
    .catchall {:try_start_7e .. :try_end_aa} :catchall_fe

    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_b2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b2
    return-object p1

    :cond_b3
    :try_start_b3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    new-instance v3, Lcom/xiaomi/push/service/at$a;

    array-length v4, p1

    invoke-direct {v3, p1, v4}, Lcom/xiaomi/push/service/at$a;-><init>([BI)V
    :try_end_bd
    .catch Ljava/net/SocketTimeoutException; {:try_start_b3 .. :try_end_bd} :catch_e3
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_bd} :catch_c6
    .catchall {:try_start_b3 .. :try_end_bd} :catchall_fe

    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_c5

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c5
    return-object v3

    :catch_c6
    move-exception p0

    goto :goto_d5

    :catchall_c8
    move-exception p0

    goto :goto_100

    :catch_ca
    move-exception p0

    move-object v2, v0

    goto :goto_d5

    :catch_cd
    move-object v2, v0

    goto :goto_e3

    :catchall_cf
    move-exception p0

    move-object v1, v0

    goto :goto_100

    :catch_d2
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    :goto_d5
    :try_start_d5
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_d8
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_fe

    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_fd

    :goto_dd
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_fd

    :catch_e1
    move-object v1, v0

    move-object v2, v1

    :catch_e3
    :goto_e3
    :try_start_e3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connect timeout to "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V
    :try_end_f7
    .catchall {:try_start_e3 .. :try_end_f7} :catchall_fe

    invoke-static {v2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_fd

    goto :goto_dd

    :cond_fd
    :goto_fd
    return-object v0

    :catchall_fe
    move-exception p0

    move-object v0, v2

    :goto_100
    invoke-static {v0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    if-eqz v1, :cond_108

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_108
    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Lcom/xiaomi/push/service/at$b;
    .registers 9

    new-instance v0, Lcom/xiaomi/push/service/at$b;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/service/at$b;-><init>(Landroid/graphics/Bitmap;J)V

    invoke-static {p0, p1}, Lcom/xiaomi/push/service/at;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_11

    iput-object v2, v0, Lcom/xiaomi/push/service/at$b;->a:Landroid/graphics/Bitmap;

    return-object v0

    :cond_11
    :try_start_11
    invoke-static {p1, p2}, Lcom/xiaomi/push/service/at;->a(Ljava/lang/String;Z)Lcom/xiaomi/push/service/at$a;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_15} :catch_55
    .catchall {:try_start_11 .. :try_end_15} :catchall_53

    if-nez v2, :cond_1b

    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    return-object v0

    :cond_1b
    :try_start_1b
    iget v3, v2, Lcom/xiaomi/push/service/at$a;->a:I

    int-to-long v3, v3

    iput-wide v3, v0, Lcom/xiaomi/push/service/at$b;->a:J

    iget-object v3, v2, Lcom/xiaomi/push/service/at$a;->a:[B

    if-eqz v3, :cond_4d

    const/4 v4, 0x0

    if-eqz p2, :cond_46

    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2c} :catch_55
    .catchall {:try_start_1b .. :try_end_2c} :catchall_53

    :try_start_2c
    invoke-static {p0, p2}, Lcom/xiaomi/push/service/at;->a(Landroid/content/Context;Ljava/io/InputStream;)I

    move-result v1

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput v1, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length v1, v3

    invoke-static {v3, v4, v1, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaomi/push/service/at$b;->a:Landroid/graphics/Bitmap;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_3e} :catch_43
    .catchall {:try_start_2c .. :try_end_3e} :catchall_40

    move-object v1, p2

    goto :goto_4d

    :catchall_40
    move-exception p0

    move-object v1, p2

    goto :goto_5d

    :catch_43
    move-exception p0

    move-object v1, p2

    goto :goto_56

    :cond_46
    :try_start_46
    array-length p2, v3

    invoke-static {v3, v4, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, v0, Lcom/xiaomi/push/service/at$b;->a:Landroid/graphics/Bitmap;

    :cond_4d
    :goto_4d
    iget-object p2, v2, Lcom/xiaomi/push/service/at$a;->a:[B

    invoke-static {p0, p2, p1}, Lcom/xiaomi/push/service/at;->a(Landroid/content/Context;[BLjava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_52} :catch_55
    .catchall {:try_start_46 .. :try_end_52} :catchall_53

    goto :goto_59

    :catchall_53
    move-exception p0

    goto :goto_5d

    :catch_55
    move-exception p0

    :goto_56
    :try_start_56
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_53

    :goto_59
    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    return-object v0

    :goto_5d
    invoke-static {v1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static a(Landroid/content/Context;)V
    .registers 8

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "mipush_icon"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2a

    return-void

    :cond_2a
    sget-wide v1, Lcom/xiaomi/push/service/at;->a:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-nez p0, :cond_38

    invoke-static {v0}, Lcom/xiaomi/push/z;->a(Ljava/io/File;)J

    move-result-wide v1

    sput-wide v1, Lcom/xiaomi/push/service/at;->a:J

    :cond_38
    sget-wide v1, Lcom/xiaomi/push/service/at;->a:J

    const-wide/32 v5, 0xf00000

    cmp-long p0, v1, v5

    if-lez p0, :cond_75

    :try_start_41
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    :goto_46
    array-length v1, p0

    if-ge v0, v1, :cond_73

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_6c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v5, 0x127500

    cmp-long v1, v1, v5

    if-lez v1, :cond_6c

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_6c} :catch_6f

    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :catch_6f
    move-exception p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_73
    sput-wide v3, Lcom/xiaomi/push/service/at;->a:J

    :cond_75
    return-void
.end method

.method private static a(Landroid/content/Context;[BLjava/lang/String;)V
    .registers 8

    if-nez p1, :cond_8

    const-string p0, "cannot save small icon cause bitmap is null"

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-static {p0}, Lcom/xiaomi/push/service/at;->a(Landroid/content/Context;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mipush_icon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_37
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/xiaomi/push/bo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p2, 0x0

    :try_start_41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_4a
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4f} :catch_69
    .catchall {:try_start_41 .. :try_end_4f} :catchall_66

    :try_start_4f
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_54} :catch_64
    .catchall {:try_start_4f .. :try_end_54} :catchall_a9

    :try_start_54
    invoke-virtual {v3, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5a} :catch_61
    .catchall {:try_start_54 .. :try_end_5a} :catchall_5e

    invoke-static {v3}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    goto :goto_71

    :catchall_5e
    move-exception p0

    move-object p2, v3

    goto :goto_aa

    :catch_61
    move-exception p1

    move-object p2, v3

    goto :goto_6b

    :catch_64
    move-exception p1

    goto :goto_6b

    :catchall_66
    move-exception p0

    move-object v0, p2

    goto :goto_aa

    :catch_69
    move-exception p1

    move-object v0, p2

    :goto_6b
    :try_start_6b
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_a9

    invoke-static {p2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    :goto_71
    invoke-static {v0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    sget-wide p1, Lcom/xiaomi/push/service/at;->a:J

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-nez p1, :cond_a8

    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/push/z;->a(Ljava/io/File;)J

    move-result-wide p0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr p0, v0

    sput-wide p0, Lcom/xiaomi/push/service/at;->a:J

    :cond_a8
    return-void

    :catchall_a9
    move-exception p0

    :goto_aa
    invoke-static {p2}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "mipush_icon"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/xiaomi/push/bo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_2f

    return-object p1

    :cond_2f
    :try_start_2f
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_34} :catch_50
    .catchall {:try_start_2f .. :try_end_34} :catchall_4e

    :try_start_34
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3f} :catch_49
    .catchall {:try_start_34 .. :try_end_3f} :catchall_44

    invoke-static {p0}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    move-object p0, p1

    goto :goto_58

    :catchall_44
    move-exception p1

    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    goto :goto_59

    :catch_49
    move-exception v0

    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    goto :goto_52

    :catchall_4e
    move-exception p0

    goto :goto_59

    :catch_50
    move-exception v0

    move-object p0, p1

    :goto_52
    :try_start_52
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_4e

    invoke-static {p1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    :goto_58
    return-object p0

    :goto_59
    invoke-static {p1}, Lcom/xiaomi/push/aa;->a(Ljava/io/Closeable;)V

    throw p0
.end method
