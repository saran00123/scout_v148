.class public Lcom/huawei/hms/availableupdate/n;
.super Ljava/lang/Object;
.source "ContentUriHelper.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    return-object v0
.end method

.method public static b(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    .line 24
    invoke-static {p1}, Lcom/huawei/hms/availableupdate/n;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 29
    :cond_8
    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    return-object v0

    .line 34
    :cond_f
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/net/Uri;)Ljava/io/File;
    .registers 3

    .line 35
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 40
    :cond_8
    invoke-virtual {p0, p1}, Lcom/huawei/hms/availableupdate/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    return-object v0

    .line 45
    :cond_f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/huawei/hms/availableupdate/n;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/n;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/huawei/hms/availableupdate/n;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/lang/String;
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/n;->a:Landroid/content/Context;

    const-string v1, "mContext is null, call setContext first."

    invoke-static {v0, v1}, Lcom/huawei/hms/utils/Checker;->assertNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 13
    monitor-enter p0

    .line 14
    :try_start_b
    iget-object v1, p0, Lcom/huawei/hms/availableupdate/n;->b:Ljava/lang/String;

    if-nez v1, :cond_2a

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/availableupdate/n;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/availableupdate/n;->b:Ljava/lang/String;

    goto :goto_2a

    .line 18
    :cond_20
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/availableupdate/n;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/availableupdate/n;->b:Ljava/lang/String;

    .line 22
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/n;->b:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_2e
    move-exception v0

    .line 23
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/availableupdate/n;->a:Landroid/content/Context;

    if-nez v0, :cond_b

    const-string v0, "context must not be null."

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/huawei/hms/availableupdate/n;->a:Landroid/content/Context;

    :cond_b
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/n;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 7
    :cond_8
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    return-object v1

    :cond_f
    const-string v1, "/"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_22

    .line 15
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 18
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentUriHelper"

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/availableupdate/n;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    const/16 v2, 0x2f

    const/4 v3, 0x1

    .line 6
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gez v2, :cond_12

    return-object v1

    .line 11
    :cond_12
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ContentUriHelper"

    .line 12
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    return-object v1

    .line 16
    :cond_23
    new-instance v4, Ljava/io/File;

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/huawei/hms/availableupdate/n;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_38

    return-object v1

    .line 21
    :cond_38
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    return-object v1

    :cond_3f
    return-object p1
.end method
