.class public Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageDecoder;
.super Ljava/lang/Object;
.source "SkiaImageDecoder.java"

# interfaces
.implements Lcom/davemorrissey/labs/subscaleview/decoder/ImageDecoder;


# static fields
.field private static final ASSET_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field private static final FILE_PREFIX:Ljava/lang/String; = "file://"

.field private static final RESOURCE_PREFIX:Ljava/lang/String; = "android.resource://"


# instance fields
.field private final bitmapConfig:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageDecoder;-><init>(Landroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap$Config;)V
    .registers 3
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->getPreferredBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz p1, :cond_c

    .line 44
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_15

    :cond_c
    if-eqz v0, :cond_11

    .line 46
    iput-object v0, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_15

    .line 48
    :cond_11
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    :goto_15
    return-void
.end method


# virtual methods
.method public decode(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 11
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 58
    iget-object v2, p0, Lcom/davemorrissey/labs/subscaleview/decoder/SkiaImageDecoder;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const-string v2, "android.resource://"

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 61
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_30

    .line 65
    :cond_28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 70
    :goto_30
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    .line 71
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_56

    .line 72
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "drawable"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 73
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 74
    invoke-virtual {v2, p2, v7, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_6e

    :cond_56
    if-ne v3, v5, :cond_6e

    .line 75
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 77
    :try_start_64
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_6e} :catch_6e

    .line 82
    :catch_6e
    :cond_6e
    :goto_6e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v6, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_b7

    :cond_77
    const-string v2, "file:///android_asset/"

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_93

    const/16 p2, 0x16

    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_b7

    :cond_93
    const-string v2, "file://"

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a5

    const/4 p1, 0x7

    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_b7

    .line 91
    :cond_a5
    :try_start_a5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 92
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_ad
    .catchall {:try_start_a5 .. :try_end_ad} :catchall_c5

    .line 93
    :try_start_ad
    invoke-static {p1, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_c2

    if-eqz p1, :cond_b6

    .line 96
    :try_start_b3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b6} :catch_b6

    :catch_b6
    :cond_b6
    move-object p1, p2

    :goto_b7
    if-eqz p1, :cond_ba

    return-object p1

    .line 101
    :cond_ba
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Skia image region decoder returned null bitmap - image format may not be supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_c2
    move-exception p2

    move-object v3, p1

    goto :goto_c6

    :catchall_c5
    move-exception p2

    :goto_c6
    if-eqz v3, :cond_cb

    .line 96
    :try_start_c8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_cb

    :catch_cb
    :cond_cb
    throw p2
.end method
