.class public Lcom/xiaomi/mipush/sdk/s;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/mipush/sdk/s;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;
    .registers 3

    sget-object v0, Lcom/xiaomi/mipush/sdk/s;->a:Lcom/xiaomi/mipush/sdk/s;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/mipush/sdk/s;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/mipush/sdk/s;->a:Lcom/xiaomi/mipush/sdk/s;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/mipush/sdk/s;

    invoke-direct {v1, p0}, Lcom/xiaomi/mipush/sdk/s;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/mipush/sdk/s;->a:Lcom/xiaomi/mipush/sdk/s;

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
    sget-object p0, Lcom/xiaomi/mipush/sdk/s;->a:Lcom/xiaomi/mipush/sdk/s;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/push/ir;)V
    .registers 4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/mipush/sdk/s;->a(Lcom/xiaomi/push/ir;IZ)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/push/ir;Z)V
    .registers 4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object p0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mipush/sdk/s;->a(Lcom/xiaomi/push/ir;IZ)V

    return-void
.end method

.method private a(Lcom/xiaomi/push/ir;IZ)V
    .registers 15

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-static {}, Lcom/xiaomi/push/l;->a()Z

    move-result v0

    if-eqz v0, :cond_7e

    if-eqz p1, :cond_7e

    iget-object v0, p1, Lcom/xiaomi/push/ir;->a:Lcom/xiaomi/push/hv;

    sget-object v1, Lcom/xiaomi/push/hv;->e:Lcom/xiaomi/push/hv;

    if-ne v0, v1, :cond_7e

    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object v0

    if-eqz v0, :cond_7e

    if-eqz p3, :cond_7e

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "click to start activity result:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/xiaomi/push/iu;

    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Lcom/xiaomi/push/ii;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaomi/push/ii;->a()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {v1, p3, v0}, Lcom/xiaomi/push/iu;-><init>(Ljava/lang/String;Z)V

    sget-object p3, Lcom/xiaomi/push/if;->ae:Lcom/xiaomi/push/if;

    iget-object p3, p3, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {v1, p3}, Lcom/xiaomi/push/iu;->c(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    invoke-virtual {p1}, Lcom/xiaomi/push/ir;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/xiaomi/push/iu;->b(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    iget-object p3, p1, Lcom/xiaomi/push/ir;->b:Ljava/lang/String;

    invoke-virtual {v1, p3}, Lcom/xiaomi/push/iu;->d(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, v1, Lcom/xiaomi/push/iu;->a:Ljava/util/Map;

    iget-object p3, v1, Lcom/xiaomi/push/iu;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "result"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/xiaomi/mipush/sdk/s;->a:Landroid/content/Context;

    invoke-static {p2}, Lcom/xiaomi/mipush/sdk/ao;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/ao;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/push/hv;->i:Lcom/xiaomi/push/hv;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p1, Lcom/xiaomi/push/ir;->b:Ljava/lang/String;

    iget-object v8, p1, Lcom/xiaomi/push/ir;->a:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/xiaomi/mipush/sdk/ao;->a(Lcom/xiaomi/push/jg;Lcom/xiaomi/push/hv;ZZLcom/xiaomi/push/ii;ZLjava/lang/String;Ljava/lang/String;ZZ)V

    :cond_7e
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/xiaomi/push/ir;Z)V
    .registers 4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object p0

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mipush/sdk/s;->a(Lcom/xiaomi/push/ir;IZ)V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/xiaomi/push/ir;Z)V
    .registers 4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object p0

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mipush/sdk/s;->a(Lcom/xiaomi/push/ir;IZ)V

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/xiaomi/push/ir;Z)V
    .registers 4

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object p0

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mipush/sdk/s;->a(Lcom/xiaomi/push/ir;IZ)V

    return-void
.end method

.method public static e(Landroid/content/Context;Lcom/xiaomi/push/ir;Z)V
    .registers 5

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_2b

    :cond_19
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/b;->f()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object p0

    const/4 v0, 0x7

    goto :goto_30

    :cond_25
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object p0

    const/4 v0, 0x5

    goto :goto_30

    :cond_2b
    :goto_2b
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/s;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/s;

    move-result-object p0

    const/4 v0, 0x6

    :goto_30
    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/mipush/sdk/s;->a(Lcom/xiaomi/push/ir;IZ)V

    return-void
.end method
