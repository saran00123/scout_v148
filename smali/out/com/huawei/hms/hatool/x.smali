.class public Lcom/huawei/hms/hatool/x;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/hatool/x$a;
    }
.end annotation


# static fields
.field public static b:Lcom/huawei/hms/hatool/x;


# instance fields
.field public a:Lcom/huawei/hms/hatool/x$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/huawei/hms/hatool/x;

    invoke-direct {v0}, Lcom/huawei/hms/hatool/x;-><init>()V

    sput-object v0, Lcom/huawei/hms/hatool/x;->b:Lcom/huawei/hms/hatool/x;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/huawei/hms/hatool/x$a;

    invoke-direct {v0, p0}, Lcom/huawei/hms/hatool/x$a;-><init>(Lcom/huawei/hms/hatool/x;)V

    iput-object v0, p0, Lcom/huawei/hms/hatool/x;->a:Lcom/huawei/hms/hatool/x$a;

    return-void
.end method

.method public static synthetic a(Lcom/huawei/hms/hatool/x;)Lcom/huawei/hms/hatool/x$a;
    .registers 1

    iget-object p0, p0, Lcom/huawei/hms/hatool/x;->a:Lcom/huawei/hms/hatool/x$a;

    return-object p0
.end method

.method public static f()Lcom/huawei/hms/hatool/x;
    .registers 1

    sget-object v0, Lcom/huawei/hms/hatool/x;->b:Lcom/huawei/hms/hatool/x;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/hatool/x;->a:Lcom/huawei/hms/hatool/x$a;

    iget-object v0, v0, Lcom/huawei/hms/hatool/x$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .registers 3

    iget-object v0, p0, Lcom/huawei/hms/hatool/x;->a:Lcom/huawei/hms/hatool/x$a;

    iget-wide v0, v0, Lcom/huawei/hms/hatool/x$a;->d:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/hms/hatool/x;->a:Lcom/huawei/hms/hatool/x$a;

    iget-object v0, v0, Lcom/huawei/hms/hatool/x$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .registers 9

    invoke-virtual {p0}, Lcom/huawei/hms/hatool/x;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/16 v3, 0x10

    if-nez v2, :cond_3f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/huawei/hms/hatool/x;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v0, "hmsSdk"

    const-string v1, "get rsa pubkey config error"

    invoke-static {v0, v1}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_22
    invoke-static {v3}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandomStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hms/hatool/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/huawei/hms/hatool/x;->a:Lcom/huawei/hms/hatool/x$a;

    invoke-virtual {v5, v2}, Lcom/huawei/hms/hatool/x$a;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/huawei/hms/hatool/x;->a:Lcom/huawei/hms/hatool/x$a;

    invoke-virtual {v2, v0, v1}, Lcom/huawei/hms/hatool/x$a;->a(J)V

    iget-object v0, p0, Lcom/huawei/hms/hatool/x;->a:Lcom/huawei/hms/hatool/x$a;

    invoke-virtual {v0, v3}, Lcom/huawei/hms/hatool/x$a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/hatool/x;->a:Lcom/huawei/hms/hatool/x$a;

    invoke-virtual {v0, v4}, Lcom/huawei/hms/hatool/x$a;->a(Ljava/lang/String;)V

    goto :goto_67

    :cond_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/32 v6, 0x2932e00

    cmp-long v0, v0, v6

    if-lez v0, :cond_67

    iget-object v0, p0, Lcom/huawei/hms/hatool/x;->a:Lcom/huawei/hms/hatool/x$a;

    iget-object v0, v0, Lcom/huawei/hms/hatool/x$a;->a:Ljava/lang/String;

    invoke-static {v3}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandomStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/hatool/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/huawei/hms/hatool/x;->a:Lcom/huawei/hms/hatool/x$a;

    invoke-virtual {v2, v4, v5}, Lcom/huawei/hms/hatool/x$a;->a(J)V

    iget-object v2, p0, Lcom/huawei/hms/hatool/x;->a:Lcom/huawei/hms/hatool/x$a;

    invoke-virtual {v2, v1}, Lcom/huawei/hms/hatool/x$a;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/hatool/x;->a:Lcom/huawei/hms/hatool/x$a;

    invoke-virtual {v1, v0}, Lcom/huawei/hms/hatool/x$a;->a(Ljava/lang/String;)V

    :cond_67
    :goto_67
    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/huawei/hms/hatool/b;->f()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "hianalytics_njjn"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_1d
    .catchall {:try_start_1 .. :try_end_13} :catchall_1b

    :try_start_13
    invoke-static {v1}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_17} :catch_1e
    .catchall {:try_start_13 .. :try_end_17} :catchall_29

    invoke-static {v1}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1b
    move-exception v1

    goto :goto_2d

    :catch_1d
    move-object v1, v0

    :catch_1e
    :try_start_1e
    const-string v2, "hmsSdk"

    const-string v3, "read pubKey error,the file is corrupted"

    invoke-static {v2, v3}, Lcom/huawei/hms/hatool/y;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_29

    invoke-static {v1}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_29
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2d
    invoke-static {v0}, Lcom/huawei/hms/hatool/r0;->a(Ljava/io/Closeable;)V

    throw v1
.end method
