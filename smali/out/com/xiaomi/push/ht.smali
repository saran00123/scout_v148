.class public Lcom/xiaomi/push/ht;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/push/ht;


# instance fields
.field private final a:Landroid/content/Context;

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/push/hu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ht;->a:Ljava/util/Map;

    iput-object p1, p0, Lcom/xiaomi/push/ht;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/ht;
    .registers 3

    if-nez p0, :cond_9

    const-string p0, "[TinyDataManager]:mContext is null, TinyDataManager.getInstance(Context) failed."

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_9
    sget-object v0, Lcom/xiaomi/push/ht;->a:Lcom/xiaomi/push/ht;

    if-nez v0, :cond_20

    const-class v0, Lcom/xiaomi/push/ht;

    monitor-enter v0

    :try_start_10
    sget-object v1, Lcom/xiaomi/push/ht;->a:Lcom/xiaomi/push/ht;

    if-nez v1, :cond_1b

    new-instance v1, Lcom/xiaomi/push/ht;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/ht;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/push/ht;->a:Lcom/xiaomi/push/ht;

    :cond_1b
    monitor-exit v0

    goto :goto_20

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw p0

    :cond_20
    :goto_20
    sget-object p0, Lcom/xiaomi/push/ht;->a:Lcom/xiaomi/push/ht;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .registers 9

    new-instance v0, Lcom/xiaomi/push/hz;

    invoke-direct {v0}, Lcom/xiaomi/push/hz;-><init>()V

    invoke-virtual {v0, p3}, Lcom/xiaomi/push/hz;->d(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    invoke-virtual {v0, p4}, Lcom/xiaomi/push/hz;->c(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    invoke-virtual {v0, p5, p6}, Lcom/xiaomi/push/hz;->a(J)Lcom/xiaomi/push/hz;

    invoke-virtual {v0, p7}, Lcom/xiaomi/push/hz;->b(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    const/4 p3, 0x1

    invoke-virtual {v0, p3}, Lcom/xiaomi/push/hz;->a(Z)Lcom/xiaomi/push/hz;

    const-string p3, "push_sdk_channel"

    invoke-virtual {v0, p3}, Lcom/xiaomi/push/hz;->a(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/hz;->e(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/push/ht;->a(Lcom/xiaomi/push/hz;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method a()Lcom/xiaomi/push/hu;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/ht;->a:Ljava/util/Map;

    const-string v1, "UPLOADER_PUSH_CHANNEL"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/hu;

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/xiaomi/push/ht;->a:Ljava/util/Map;

    const-string v1, "UPLOADER_HTTP"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/hu;

    if-eqz v0, :cond_1a

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method a()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/push/hu;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/push/ht;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/hu;Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_8

    const-string p1, "[TinyDataManager]: please do not add null mUploader to TinyDataManager."

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "[TinyDataManager]: can not add a provider from unkown resource."

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    return-void

    :cond_14
    invoke-virtual {p0}, Lcom/xiaomi/push/ht;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/xiaomi/push/hz;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    const-string p1, "pkgName is null or empty, upload ClientUploadDataItem failed."

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return v1

    :cond_d
    invoke-static {p1, v1}, Lcom/xiaomi/push/service/bw;->a(Lcom/xiaomi/push/hz;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    :cond_14
    invoke-virtual {p1}, Lcom/xiaomi/push/hz;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/xiaomi/push/service/bw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/hz;->f(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    :cond_25
    invoke-virtual {p1, p2}, Lcom/xiaomi/push/hz;->g(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    iget-object p2, p0, Lcom/xiaomi/push/ht;->a:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/xiaomi/push/service/bx;->a(Landroid/content/Context;Lcom/xiaomi/push/hz;)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z
    .registers 15

    iget-object v0, p0, Lcom/xiaomi/push/ht;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/push/ht;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/xiaomi/push/ht;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Z

    move-result p1

    return p1
.end method
