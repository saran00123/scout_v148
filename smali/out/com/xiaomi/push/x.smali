.class public abstract Lcom/xiaomi/push/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Ljava/io/File;

.field private a:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/x;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/push/x;->a:Ljava/io/File;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/xiaomi/push/y;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/push/x;-><init>(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Ljava/lang/Runnable;)V
    .registers 4

    new-instance v0, Lcom/xiaomi/push/y;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/push/y;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/xiaomi/push/y;->run()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)V
.end method

.method public final run()V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/push/x;->a:Ljava/io/File;

    if-nez v1, :cond_14

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaomi/push/x;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "default_locker"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/xiaomi/push/x;->a:Ljava/io/File;

    :cond_14
    iget-object v1, p0, Lcom/xiaomi/push/x;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/push/x;->a:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/xiaomi/push/w;->a(Landroid/content/Context;Ljava/io/File;)Lcom/xiaomi/push/w;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/x;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/xiaomi/push/x;->a:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_25
    iget-object v1, p0, Lcom/xiaomi/push/x;->a:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/xiaomi/push/x;->a(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2a} :catch_2f
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2d

    if-eqz v0, :cond_38

    goto :goto_35

    :catchall_2d
    move-exception v1

    goto :goto_39

    :catch_2f
    move-exception v1

    :try_start_30
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_2d

    if-eqz v0, :cond_38

    :goto_35
    invoke-virtual {v0}, Lcom/xiaomi/push/w;->a()V

    :cond_38
    return-void

    :goto_39
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/xiaomi/push/w;->a()V

    :cond_3e
    throw v1
.end method
