.class Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;
.super Ljava/lang/Object;
.source "ThumbnailStreamOpener.java"


# static fields
.field private static final DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/mediastore/FileService;

.field private static final TAG:Ljava/lang/String; = "ThumbStreamOpener"


# instance fields
.field private final byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final query:Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;

.field private final service:Lcom/bumptech/glide/load/data/mediastore/FileService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/bumptech/glide/load/data/mediastore/FileService;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/mediastore/FileService;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/mediastore/FileService;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/data/mediastore/FileService;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Landroid/content/ContentResolver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/data/mediastore/FileService;",
            "Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/mediastore/FileService;

    .line 44
    iput-object p3, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->query:Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;

    .line 45
    iput-object p4, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    .line 46
    iput-object p5, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->contentResolver:Landroid/content/ContentResolver;

    .line 47
    iput-object p1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->parsers:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Landroid/content/ContentResolver;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .line 34
    sget-object v2, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->DEFAULT_SERVICE:Lcom/bumptech/glide/load/data/mediastore/FileService;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/data/mediastore/FileService;Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Landroid/content/ContentResolver;)V

    return-void
.end method

.method private getPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "ThumbStreamOpener"

    const/4 v1, 0x0

    .line 99
    :try_start_3
    iget-object v2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->query:Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailQuery;->query(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_9} :catch_27
    .catchall {:try_start_3 .. :try_end_9} :catchall_24

    if-eqz v2, :cond_1e

    .line 100
    :try_start_b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x0

    .line 101
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_16} :catch_1c
    .catchall {:try_start_b .. :try_end_16} :catchall_4a

    if-eqz v2, :cond_1b

    .line 112
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1b
    return-object p1

    :catch_1c
    move-exception v3

    goto :goto_29

    :cond_1e
    if-eqz v2, :cond_23

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_23
    return-object v1

    :catchall_24
    move-exception p1

    move-object v2, v1

    goto :goto_4b

    :catch_27
    move-exception v3

    move-object v2, v1

    :goto_29
    const/4 v4, 0x3

    .line 106
    :try_start_2a
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to query for thumbnail for Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_4a

    :cond_44
    if-eqz v2, :cond_49

    .line 112
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_49
    return-object v1

    :catchall_4a
    move-exception p1

    :goto_4b
    if-eqz v2, :cond_50

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_50
    throw p1
.end method

.method private isValid(Ljava/io/File;)Z
    .registers 6

    .line 118
    iget-object v0, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/mediastore/FileService;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/data/mediastore/FileService;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/mediastore/FileService;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/load/data/mediastore/FileService;->length(Ljava/io/File;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method


# virtual methods
.method getOrientation(Landroid/net/Uri;)I
    .registers 7

    const-string v0, "ThumbStreamOpener"

    const/4 v1, 0x0

    .line 53
    :try_start_3
    iget-object v2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->parsers:Ljava/util/List;

    iget-object v3, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->byteArrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v2, v1, v3}, Lcom/bumptech/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_1b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_11} :catch_19
    .catchall {:try_start_3 .. :try_end_11} :catchall_17

    if-eqz v1, :cond_16

    .line 63
    :try_start_13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_16

    :catch_16
    :cond_16
    return p1

    :catchall_17
    move-exception p1

    goto :goto_3e

    :catch_19
    move-exception v2

    goto :goto_1c

    :catch_1b
    move-exception v2

    :goto_1c
    const/4 v3, 0x3

    .line 57
    :try_start_1d
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_17

    :cond_37
    if-eqz v1, :cond_3c

    .line 63
    :try_start_39
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3c

    :catch_3c
    :cond_3c
    const/4 p1, -0x1

    return p1

    :goto_3e
    if-eqz v1, :cond_43

    :try_start_40
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_43

    .line 66
    :catch_43
    :cond_43
    throw p1
.end method

.method public open(Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    .line 78
    :cond_c
    iget-object v1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->service:Lcom/bumptech/glide/load/data/mediastore/FileService;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/data/mediastore/FileService;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 79
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->isValid(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_19

    return-object v2

    .line 83
    :cond_19
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 85
    :try_start_1d
    iget-object v1, p0, Lcom/bumptech/glide/load/data/mediastore/ThumbnailStreamOpener;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_23
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_23} :catch_24

    return-object p1

    :catch_24
    move-exception v1

    .line 90
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NPE opening uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2, v1}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/FileNotFoundException;

    throw p1
.end method
