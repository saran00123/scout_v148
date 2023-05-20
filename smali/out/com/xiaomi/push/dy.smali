.class public Lcom/xiaomi/push/dy;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    invoke-static {p0}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/dz;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/push/dz;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ak;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/push/ec;->a(Landroid/content/Context;)Lcom/xiaomi/push/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/ec;->a()Lcom/xiaomi/push/eg;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/push/eg;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    :cond_d
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/push/dy;->c(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/push/ec;->a(Landroid/content/Context;)Lcom/xiaomi/push/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/ec;->a()Lcom/xiaomi/push/eg;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/push/eg;->c(Landroid/content/Context;Ljava/util/HashMap;)V

    :cond_d
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    if-eqz p0, :cond_45

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_45

    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "awake_info"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "event_type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "description"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/xiaomi/push/ec;->a(Landroid/content/Context;)Lcom/xiaomi/push/ec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/push/ec;->a()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3a

    const/4 p2, 0x2

    if-eq p1, p2, :cond_36

    const/4 p2, 0x3

    if-eq p1, p2, :cond_33

    goto :goto_3d

    :cond_33
    invoke-static {p0, v0}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    :cond_36
    invoke-static {p0, v0}, Lcom/xiaomi/push/dy;->c(Landroid/content/Context;Ljava/util/HashMap;)V

    goto :goto_3d

    :cond_3a
    invoke-static {p0, v0}, Lcom/xiaomi/push/dy;->a(Landroid/content/Context;Ljava/util/HashMap;)V

    :goto_3d
    invoke-static {p0, v0}, Lcom/xiaomi/push/dy;->b(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception p0

    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/push/ec;->a(Landroid/content/Context;)Lcom/xiaomi/push/ec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/ec;->a()Lcom/xiaomi/push/eg;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0, p0, p1}, Lcom/xiaomi/push/eg;->b(Landroid/content/Context;Ljava/util/HashMap;)V

    :cond_d
    return-void
.end method
