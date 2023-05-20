.class public Lcom/alibaba/sdk/android/emas/c;
.super Ljava/lang/Object;
.source "DiskCacheManager.java"

# interfaces
.implements Lcom/alibaba/sdk/android/emas/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/emas/Cache<",
        "Lcom/alibaba/sdk/android/emas/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private diskCacheLimitCapacity:I

.field private diskCacheLimitCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p3, p0, Lcom/alibaba/sdk/android/emas/c;->b:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 44
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_20

    goto :goto_22

    :cond_20
    const-string p4, "common"

    .line 48
    :goto_22
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "emas-rest-log"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/sdk/android/emas/c;->a:Ljava/lang/String;

    .line 49
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/alibaba/sdk/android/emas/c;->a:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_5e

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_5e
    return-void
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .registers 8

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1000

    .line 263
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 265
    :try_start_a
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_14} :catch_3a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_34
    .catchall {:try_start_a .. :try_end_14} :catchall_31

    .line 267
    :goto_14
    :try_start_14
    invoke-virtual {v3, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_25

    .line 268
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, p1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 270
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_29} :catch_2f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_29} :catch_2d
    .catchall {:try_start_14 .. :try_end_29} :catchall_43

    .line 276
    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/utils/AppUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    :catch_2d
    move-exception p1

    goto :goto_36

    :catch_2f
    move-exception p1

    goto :goto_3c

    :catchall_31
    move-exception p1

    move-object v3, v2

    goto :goto_44

    :catch_34
    move-exception p1

    move-object v3, v2

    .line 274
    :goto_36
    :try_start_36
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    :catch_3a
    move-exception p1

    move-object v3, v2

    .line 272
    :goto_3c
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_43

    .line 276
    :goto_3f
    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/utils/AppUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    :catchall_43
    move-exception p1

    :goto_44
    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/utils/AppUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method private a(Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 247
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 248
    array-length v0, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_20

    aget-object v2, p1, v1

    .line 249
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 250
    invoke-direct {p0, v2, p2}, Lcom/alibaba/sdk/android/emas/c;->a(Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    goto :goto_1d

    .line 252
    :cond_1a
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_20
    return-object p2
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    .line 286
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_b} :catch_31
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_b} :catch_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_27
    .catchall {:try_start_1 .. :try_end_b} :catchall_25

    :try_start_b
    const-string/jumbo p1, "utf-8"

    .line 287
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_15} :catch_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_15} :catch_1f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_1c
    .catchall {:try_start_b .. :try_end_15} :catchall_19

    .line 295
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/AppUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_38

    :catchall_19
    move-exception p1

    move-object v0, v1

    goto :goto_39

    :catch_1c
    move-exception p1

    move-object v0, v1

    goto :goto_28

    :catch_1f
    move-exception p1

    move-object v0, v1

    goto :goto_2d

    :catch_22
    move-exception p1

    move-object v0, v1

    goto :goto_32

    :catchall_25
    move-exception p1

    goto :goto_39

    :catch_27
    move-exception p1

    .line 293
    :goto_28
    :try_start_28
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_35

    :catch_2c
    move-exception p1

    .line 291
    :goto_2d
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_35

    :catch_31
    move-exception p1

    .line 289
    :goto_32
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_25

    .line 295
    :goto_35
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/AppUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_38
    return-void

    :goto_39
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/AppUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/alibaba/sdk/android/emas/d;
    .registers 7

    .line 103
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_f

    return-object v2

    .line 108
    :cond_f
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_19

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v2

    .line 113
    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/alibaba/sdk/android/emas/c;->a(Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_78

    .line 115
    new-instance v1, Lcom/alibaba/sdk/android/emas/c$1;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/emas/c$1;-><init>(Lcom/alibaba/sdk/android/emas/c;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 128
    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/emas/c;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 129
    iget-object v4, p0, Lcom/alibaba/sdk/android/emas/c;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/alibaba/sdk/android/emas/f;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_48

    return-object v2

    .line 136
    :cond_48
    :try_start_48
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    :goto_52
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-eq v1, v5, :cond_68

    .line 142
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 143
    invoke-static {v5}, Lcom/alibaba/sdk/android/emas/e;->a(Lorg/json/JSONObject;)Lcom/alibaba/sdk/android/emas/e;

    move-result-object v5

    if-eqz v5, :cond_65

    .line 146
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 150
    :cond_68
    new-instance v1, Lcom/alibaba/sdk/android/emas/d;

    sget-object v4, Lcom/alibaba/sdk/android/emas/b;->b:Lcom/alibaba/sdk/android/emas/b;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v4, v0}, Lcom/alibaba/sdk/android/emas/d;-><init>(Ljava/util/List;Lcom/alibaba/sdk/android/emas/b;Ljava/lang/String;)V
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_73} :catch_74

    return-object v1

    :catch_74
    move-exception v0

    .line 152
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_78
    return-object v2
.end method

.method public a(III)V
    .registers 6

    .line 56
    iput p1, p0, Lcom/alibaba/sdk/android/emas/c;->diskCacheLimitCount:I

    .line 57
    iput p2, p0, Lcom/alibaba/sdk/android/emas/c;->diskCacheLimitCapacity:I

    int-to-long p1, p3

    const-wide/32 v0, 0x5265c00

    mul-long/2addr p1, v0

    .line 58
    iput-wide p1, p0, Lcom/alibaba/sdk/android/emas/c;->a:J

    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/emas/d;)V
    .registers 7

    if-eqz p1, :cond_a8

    .line 63
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/d;->a()Lcom/alibaba/sdk/android/emas/b;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/emas/b;->b:Lcom/alibaba/sdk/android/emas/b;

    if-ne v0, v1, :cond_c

    goto/16 :goto_a8

    .line 72
    :cond_c
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/d;->a()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a7

    .line 73
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a7

    .line 74
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 76
    :goto_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_36

    .line 77
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/emas/e;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/emas/e;->a()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 79
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 83
    :cond_36
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lcom/alibaba/sdk/android/emas/c;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/emas/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a2

    const-string v0, "DiskCacheManager putting into cache."

    .line 87
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/utils/MD5Utils;->getMd5Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 91
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 93
    :cond_86
    invoke-direct {p0, v0, p1}, Lcom/alibaba/sdk/android/emas/c;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiskCacheManager success put into "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_a7

    :cond_a2
    const-string p1, "DiskCacheManager failed put into cache."

    .line 96
    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    :cond_a7
    :goto_a7
    return-void

    :cond_a8
    :goto_a8
    if-nez p1, :cond_b0

    const-string p1, "DiskCacheManager add failed. data is null"

    .line 65
    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_cc

    .line 67
    :cond_b0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiskCacheManager add failed. cache type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/d;->a()Lcom/alibaba/sdk/android/emas/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/b;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    :goto_cc
    return-void
.end method

.method public a(Lcom/alibaba/sdk/android/emas/d;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_47

    .line 163
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/d;->a()Lcom/alibaba/sdk/android/emas/b;

    move-result-object v1

    sget-object v2, Lcom/alibaba/sdk/android/emas/b;->b:Lcom/alibaba/sdk/android/emas/b;

    if-ne v1, v2, :cond_47

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/d;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_47

    .line 172
    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiskCacheManager removing. cache type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/d;->a()Lcom/alibaba/sdk/android/emas/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/emas/b;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 173
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/d;->getLocation()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    return p1

    :cond_46
    return v0

    :cond_47
    :goto_47
    if-nez p1, :cond_4f

    const-string p1, "DiskCacheManager remove failed. data is null"

    .line 165
    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_6b

    .line 167
    :cond_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiskCacheManager remove failed. cache type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/d;->a()Lcom/alibaba/sdk/android/emas/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/emas/b;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    :goto_6b
    return v0
.end method

.method public synthetic add(Ljava/lang/Object;)V
    .registers 2

    .line 30
    check-cast p1, Lcom/alibaba/sdk/android/emas/d;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/emas/c;->a(Lcom/alibaba/sdk/android/emas/d;)V

    return-void
.end method

.method public clear()V
    .registers 14

    .line 183
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/sdk/android/emas/c;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    .line 188
    :cond_e
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_18

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void

    .line 193
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/alibaba/sdk/android/emas/c;->a(Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiskCacheManager num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 195
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_bd

    .line 197
    new-instance v1, Lcom/alibaba/sdk/android/emas/c$2;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/emas/c$2;-><init>(Lcom/alibaba/sdk/android/emas/c;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move-wide v7, v3

    move v3, v6

    :goto_54
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 214
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 215
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    sub-long v9, v1, v9

    iget-wide v11, p0, Lcom/alibaba/sdk/android/emas/c;->a:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_73

    .line 216
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 217
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_54

    :cond_73
    add-int/lit8 v3, v3, 0x1

    .line 220
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    goto :goto_54

    .line 224
    :cond_7b
    iget v1, p0, Lcom/alibaba/sdk/android/emas/c;->diskCacheLimitCount:I

    if-gt v3, v1, :cond_86

    iget v1, p0, Lcom/alibaba/sdk/android/emas/c;->diskCacheLimitCapacity:I

    int-to-long v1, v1

    cmp-long v1, v7, v1

    if-lez v1, :cond_bd

    :cond_86
    const-string v1, "DiskCacheManager exceed limit. start clear."

    .line 226
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 229
    iget v1, p0, Lcom/alibaba/sdk/android/emas/c;->diskCacheLimitCount:I

    int-to-double v1, v1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v4

    double-to-int v1, v1

    .line 230
    iget v2, p0, Lcom/alibaba/sdk/android/emas/c;->diskCacheLimitCapacity:I

    int-to-double v9, v2

    mul-double/2addr v9, v4

    double-to-int v2, v9

    :goto_9a
    if-gt v3, v1, :cond_a1

    int-to-long v4, v2

    cmp-long v4, v7, v4

    if-lez v4, :cond_bd

    .line 231
    :cond_a1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v6, v4, :cond_bd

    .line 233
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 234
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_ba

    add-int/lit8 v3, v3, -0x1

    .line 237
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    sub-long/2addr v7, v4

    :cond_ba
    add-int/lit8 v6, v6, 0x1

    goto :goto_9a

    :cond_bd
    return-void
.end method

.method public synthetic get()Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/emas/c;->a()Lcom/alibaba/sdk/android/emas/d;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Z
    .registers 2

    .line 30
    check-cast p1, Lcom/alibaba/sdk/android/emas/d;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/emas/c;->a(Lcom/alibaba/sdk/android/emas/d;)Z

    move-result p1

    return p1
.end method
