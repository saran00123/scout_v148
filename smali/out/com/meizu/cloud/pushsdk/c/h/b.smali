.class public Lcom/meizu/cloud/pushsdk/c/h/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(IIII)I
    .registers 8

    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double/2addr p0, p2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_c
    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p3, p2

    float-to-double v0, p3

    cmpg-double v0, v0, p0

    if-gtz v0, :cond_16

    move p2, p3

    goto :goto_c

    :cond_16
    float-to-int p0, p2

    return p0
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .registers 9

    if-nez p0, :cond_5

    if-nez p1, :cond_5

    return p2

    :cond_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_d

    if-nez p0, :cond_c

    return p2

    :cond_c
    return p0

    :cond_d
    if-nez p0, :cond_16

    int-to-double p0, p1

    int-to-double p3, p3

    div-double/2addr p0, p3

    int-to-double p2, p2

    mul-double/2addr p2, p0

    double-to-int p0, p2

    return p0

    :cond_16
    if-nez p1, :cond_19

    return p0

    :cond_19
    int-to-double v0, p3

    int-to-double p2, p2

    div-double/2addr v0, p2

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, p2, :cond_2a

    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpg-double p1, p2, v2

    if-gez p1, :cond_29

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_29
    return p0

    :cond_2a
    int-to-double p2, p0

    mul-double/2addr p2, v0

    int-to-double v2, p1

    cmpl-double p1, p2, v2

    if-lez p1, :cond_33

    div-double/2addr v2, v0

    double-to-int p0, v2

    :cond_33
    return p0
.end method

.method public static a(Lcom/meizu/cloud/pushsdk/c/c/k;IILandroid/graphics/Bitmap$Config;Landroid/widget/ImageView$ScaleType;)Lcom/meizu/cloud/pushsdk/c/a/c;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/cloud/pushsdk/c/c/k;",
            "II",
            "Landroid/graphics/Bitmap$Config;",
            "Landroid/widget/ImageView$ScaleType;",
            ")",
            "Lcom/meizu/cloud/pushsdk/c/a/c<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [B

    :try_start_3
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/c/k;->b()Lcom/meizu/cloud/pushsdk/c/c/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/c/c/l;->a()Lcom/meizu/cloud/pushsdk/c/g/d;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/cloud/pushsdk/c/g/g;->a(Lcom/meizu/cloud/pushsdk/c/g/m;)Lcom/meizu/cloud/pushsdk/c/g/d;

    move-result-object v2

    invoke-interface {v2}, Lcom/meizu/cloud/pushsdk/c/g/d;->i()[B

    move-result-object v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_18
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-nez p1, :cond_29

    if-nez p2, :cond_29

    iput-object p3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length p1, v1

    invoke-static {v1, v0, p1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_58

    :cond_29
    const/4 p3, 0x1

    iput-boolean p3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v3, v1

    invoke-static {v1, v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p1, p2, v3, v4, p4}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v5

    invoke-static {p2, p1, v4, v3, p4}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result p1

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v3, v4, v5, p1}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(IIII)I

    move-result p2

    iput p2, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    array-length p2, v1

    invoke-static {v1, v0, p2, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2, v5, p1}, Lcom/meizu/cloud/pushsdk/c/h/b;->a(Landroid/graphics/Bitmap;II)Z

    move-result p4

    if-eqz p4, :cond_57

    invoke-static {p2, v5, p1, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_58

    :cond_57
    move-object p1, p2

    :goto_58
    if-nez p1, :cond_68

    new-instance p1, Lcom/meizu/cloud/pushsdk/c/b/a;

    invoke-direct {p1, p0}, Lcom/meizu/cloud/pushsdk/c/b/a;-><init>(Lcom/meizu/cloud/pushsdk/c/c/k;)V

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/c/h/b;->b(Lcom/meizu/cloud/pushsdk/c/b/a;)Lcom/meizu/cloud/pushsdk/c/b/a;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/c/a/c;->a(Lcom/meizu/cloud/pushsdk/c/b/a;)Lcom/meizu/cloud/pushsdk/c/a/c;

    move-result-object p0

    return-object p0

    :cond_68
    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/c/a/c;->a(Ljava/lang/Object;)Lcom/meizu/cloud/pushsdk/c/a/c;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/meizu/cloud/pushsdk/c/b/a;)Lcom/meizu/cloud/pushsdk/c/b/a;
    .registers 2

    const-string v0, "connectionError"

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/c/b/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/c/b/a;->a(I)V

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/b/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/c/b/a;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Lcom/meizu/cloud/pushsdk/c/b/a;Lcom/meizu/cloud/pushsdk/c/a/b;I)Lcom/meizu/cloud/pushsdk/c/b/a;
    .registers 3

    invoke-virtual {p1, p0}, Lcom/meizu/cloud/pushsdk/c/a/b;->a(Lcom/meizu/cloud/pushsdk/c/b/a;)Lcom/meizu/cloud/pushsdk/c/b/a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/meizu/cloud/pushsdk/c/b/a;->a(I)V

    const-string p1, "responseFromServerError"

    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/c/b/a;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Ljava/lang/Exception;)Lcom/meizu/cloud/pushsdk/c/b/a;
    .registers 4

    new-instance v0, Lcom/meizu/cloud/pushsdk/c/b/a;

    invoke-direct {v0, p0}, Lcom/meizu/cloud/pushsdk/c/b/a;-><init>(Ljava/lang/Throwable;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_12

    instance-of p0, p0, Landroid/os/NetworkOnMainThreadException;

    if-eqz p0, :cond_12

    const-string p0, "networkOnMainThreadError"

    goto :goto_14

    :cond_12
    const-string p0, "connectionError"

    :goto_14
    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/c/b/a;->a(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/meizu/cloud/pushsdk/c/b/a;->a(I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_c

    const-string p0, "application/octet-stream"

    :cond_c
    return-object p0
.end method

.method public static a(Lcom/meizu/cloud/pushsdk/c/c/k;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x800

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/c/k;->b()Lcom/meizu/cloud/pushsdk/c/c/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/c/l;->b()Ljava/io/InputStream;

    move-result-object p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_4c

    :try_start_d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1b

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1b
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_4a

    :goto_25
    :try_start_25
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_31

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_25

    :cond_31
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_47

    if-eqz p0, :cond_3e

    :try_start_36
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_3e

    :catch_3a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_46
    return-void

    :catchall_47
    move-exception p1

    move-object v1, p2

    goto :goto_4e

    :catchall_4a
    move-exception p1

    goto :goto_4e

    :catchall_4c
    move-exception p1

    move-object p0, v1

    :goto_4e
    if-eqz p0, :cond_58

    :try_start_50
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    goto :goto_58

    :catch_54
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_58
    :goto_58
    if-eqz v1, :cond_62

    :try_start_5a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_62
    :goto_62
    throw p1
.end method

.method private static a(Landroid/graphics/Bitmap;II)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, p1, :cond_10

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-le p0, p2, :cond_11

    :cond_10
    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public static b(Lcom/meizu/cloud/pushsdk/c/b/a;)Lcom/meizu/cloud/pushsdk/c/b/a;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/c/b/a;->a(I)V

    const-string v0, "parseError"

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/c/b/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/b/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/c/b/a;->b(Ljava/lang/String;)V

    return-object p0
.end method
