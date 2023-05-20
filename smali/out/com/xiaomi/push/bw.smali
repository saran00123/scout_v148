.class public Lcom/xiaomi/push/bw;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/push/bw;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Lcom/xiaomi/push/ak$a;

.field private a:Lcom/xiaomi/push/cl;

.field private a:Lcom/xiaomi/push/cm;

.field private final a:Ljava/lang/String;

.field private b:Lcom/xiaomi/push/ak$a;

.field private final b:Ljava/lang/String;

.field private c:Lcom/xiaomi/push/ak$a;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "push_stat_sp"

    iput-object v0, p0, Lcom/xiaomi/push/bw;->a:Ljava/lang/String;

    const-string v0, "upload_time"

    iput-object v0, p0, Lcom/xiaomi/push/bw;->b:Ljava/lang/String;

    const-string v0, "delete_time"

    iput-object v0, p0, Lcom/xiaomi/push/bw;->c:Ljava/lang/String;

    const-string v0, "check_time"

    iput-object v0, p0, Lcom/xiaomi/push/bw;->d:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/push/bx;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/bx;-><init>(Lcom/xiaomi/push/bw;)V

    iput-object v0, p0, Lcom/xiaomi/push/bw;->a:Lcom/xiaomi/push/ak$a;

    new-instance v0, Lcom/xiaomi/push/by;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/by;-><init>(Lcom/xiaomi/push/bw;)V

    iput-object v0, p0, Lcom/xiaomi/push/bw;->b:Lcom/xiaomi/push/ak$a;

    new-instance v0, Lcom/xiaomi/push/bz;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/bz;-><init>(Lcom/xiaomi/push/bw;)V

    iput-object v0, p0, Lcom/xiaomi/push/bw;->c:Lcom/xiaomi/push/ak$a;

    iput-object p1, p0, Lcom/xiaomi/push/bw;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/push/bw;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/bw;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/bw;
    .registers 3

    sget-object v0, Lcom/xiaomi/push/bw;->a:Lcom/xiaomi/push/bw;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/push/bw;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/push/bw;->a:Lcom/xiaomi/push/bw;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/push/bw;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/bw;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/push/bw;->a:Lcom/xiaomi/push/bw;

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
    sget-object p0, Lcom/xiaomi/push/bw;->a:Lcom/xiaomi/push/bw;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/bw;)Lcom/xiaomi/push/cm;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/push/bw;->a:Lcom/xiaomi/push/cm;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/bw;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/xiaomi/push/bw;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/push/bw;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/xiaomi/push/bw;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a()Z
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/bw;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/ia;->bn:Lcom/xiaomi/push/ia;

    invoke-virtual {v1}, Lcom/xiaomi/push/ia;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/bw;->a:Landroid/content/Context;

    const-string v1, "push_stat_sp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/xiaomi/push/s;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/bw;->a:Landroid/content/Context;

    sget-object v1, Lcom/xiaomi/push/ca;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/bw;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/ci$a;)V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/push/bw;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/push/ci;->a(Landroid/content/Context;)Lcom/xiaomi/push/ci;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/ci;->a(Lcom/xiaomi/push/ci$a;)V

    return-void
.end method

.method public a(Lcom/xiaomi/push/hz;)V
    .registers 4

    invoke-direct {p0}, Lcom/xiaomi/push/bw;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/xiaomi/push/hz;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/bw;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    invoke-direct {p0}, Lcom/xiaomi/push/bw;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/bw;->a:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/xiaomi/push/cf;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/push/hz;)Lcom/xiaomi/push/cf;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/bw;->a(Lcom/xiaomi/push/ci$a;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/xiaomi/push/bw;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/xiaomi/push/bw;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/xiaomi/push/cn;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/push/hz;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/bw;->a(Lcom/xiaomi/push/hz;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/bw;->a:Lcom/xiaomi/push/cl;

    if-eqz v0, :cond_19

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_12

    iget-object p3, p0, Lcom/xiaomi/push/bw;->a:Lcom/xiaomi/push/cl;

    iget-object v0, p0, Lcom/xiaomi/push/bw;->a:Landroid/content/Context;

    invoke-interface {p3, v0, p2, p1}, Lcom/xiaomi/push/cl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_12
    iget-object p3, p0, Lcom/xiaomi/push/bw;->a:Lcom/xiaomi/push/cl;

    iget-object v0, p0, Lcom/xiaomi/push/bw;->a:Landroid/content/Context;

    invoke-interface {p3, v0, p2, p1}, Lcom/xiaomi/push/cl;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/bw;->f:Ljava/lang/String;

    return-object v0
.end method
