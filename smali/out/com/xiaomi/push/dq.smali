.class public Lcom/xiaomi/push/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/dq$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaomi/push/dq;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lcom/xiaomi/push/dq$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/dq;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(I)I
    .registers 2

    const/16 v0, 0x3c

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/dq;
    .registers 3

    sget-object v0, Lcom/xiaomi/push/dq;->a:Lcom/xiaomi/push/dq;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/push/dq;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/push/dq;->a:Lcom/xiaomi/push/dq;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/push/dq;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/dq;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/push/dq;->a:Lcom/xiaomi/push/dq;

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
    sget-object p0, Lcom/xiaomi/push/dq;->a:Lcom/xiaomi/push/dq;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/dq;)V
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/push/dq;->b()V

    return-void
.end method

.method private a(Lcom/xiaomi/push/service/ax;Lcom/xiaomi/push/ak;Z)V
    .registers 6

    sget-object v0, Lcom/xiaomi/push/ia;->a:Lcom/xiaomi/push/ia;

    invoke-virtual {v0}, Lcom/xiaomi/push/ia;->a()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Lcom/xiaomi/push/du;

    iget-object v1, p0, Lcom/xiaomi/push/dq;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/push/du;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_2b

    sget-object p3, Lcom/xiaomi/push/ia;->b:Lcom/xiaomi/push/ia;

    invoke-virtual {p3}, Lcom/xiaomi/push/ia;->a()I

    move-result p3

    const v1, 0x15180

    invoke-virtual {p1, p3, v1}, Lcom/xiaomi/push/service/ax;->a(II)I

    move-result p1

    invoke-static {p1}, Lcom/xiaomi/push/dq;->a(I)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/xiaomi/push/ak;->a(Lcom/xiaomi/push/ak$a;I)Z

    goto :goto_2e

    :cond_2b
    invoke-virtual {p2, v0}, Lcom/xiaomi/push/ak;->a(Lcom/xiaomi/push/ak$a;)Z

    :cond_2e
    :goto_2e
    return-void
.end method

.method private a()Z
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/dq;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/xiaomi/push/dq;->a:Landroid/content/Context;

    :goto_8
    check-cast v0, Landroid/app/Application;

    goto :goto_12

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/push/dq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_8

    :goto_12
    new-instance v1, Lcom/xiaomi/push/dk;

    iget-object v2, p0, Lcom/xiaomi/push/dq;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaomi/push/dk;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_29

    const/4 v0, 0x1

    return v0

    :catch_29
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private b()V
    .registers 11

    iget-object v0, p0, Lcom/xiaomi/push/dq;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/dq;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/dq;->a:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v4, "mipush_extra"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "first_try_ts"

    invoke-interface {v2, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-nez v9, :cond_2e

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2e
    sub-long/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0xa4cb800

    cmp-long v2, v4, v6

    if-gez v2, :cond_3b

    return-void

    :cond_3b
    invoke-direct {p0, v1, v0, v3}, Lcom/xiaomi/push/dq;->a(Lcom/xiaomi/push/service/ax;Lcom/xiaomi/push/ak;Z)V

    sget-object v2, Lcom/xiaomi/push/ia;->aI:Lcom/xiaomi/push/ia;

    invoke-virtual {v2}, Lcom/xiaomi/push/ia;->a()I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result v2

    if-eqz v2, :cond_66

    sget-object v2, Lcom/xiaomi/push/ia;->aJ:Lcom/xiaomi/push/ia;

    invoke-virtual {v2}, Lcom/xiaomi/push/ia;->a()I

    move-result v2

    const v5, 0x15180

    invoke-virtual {v1, v2, v5}, Lcom/xiaomi/push/service/ax;->a(II)I

    move-result v2

    invoke-static {v2}, Lcom/xiaomi/push/dq;->a(I)I

    move-result v2

    new-instance v5, Lcom/xiaomi/push/dt;

    iget-object v6, p0, Lcom/xiaomi/push/dq;->a:Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Lcom/xiaomi/push/dt;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v5, v2, v3}, Lcom/xiaomi/push/ak;->a(Lcom/xiaomi/push/ak$a;II)Z

    :cond_66
    iget-object v2, p0, Lcom/xiaomi/push/dq;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/push/l;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/xiaomi/push/dq;->a:Lcom/xiaomi/push/dq$a;

    if-eqz v2, :cond_75

    invoke-interface {v2}, Lcom/xiaomi/push/dq$a;->a()V

    :cond_75
    sget-object v2, Lcom/xiaomi/push/ia;->ap:Lcom/xiaomi/push/ia;

    invoke-virtual {v2}, Lcom/xiaomi/push/ia;->a()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-direct {p0}, Lcom/xiaomi/push/dq;->a()Z

    :cond_84
    invoke-direct {p0, v1, v0, v4}, Lcom/xiaomi/push/dq;->a(Lcom/xiaomi/push/service/ax;Lcom/xiaomi/push/ak;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/dq;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/ak;->a(Landroid/content/Context;)Lcom/xiaomi/push/ak;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/push/dr;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/dr;-><init>(Lcom/xiaomi/push/dq;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/ak;->a(Ljava/lang/Runnable;)V

    return-void
.end method
