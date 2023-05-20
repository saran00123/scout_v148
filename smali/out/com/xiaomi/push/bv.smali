.class public Lcom/xiaomi/push/bv;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/push/bv;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/bv;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/bv;
    .registers 3

    sget-object v0, Lcom/xiaomi/push/bv;->a:Lcom/xiaomi/push/bv;

    if-nez v0, :cond_17

    const-class v0, Lcom/xiaomi/push/bv;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/xiaomi/push/bv;->a:Lcom/xiaomi/push/bv;

    if-nez v1, :cond_12

    new-instance v1, Lcom/xiaomi/push/bv;

    invoke-direct {v1, p0}, Lcom/xiaomi/push/bv;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaomi/push/bv;->a:Lcom/xiaomi/push/bv;

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
    sget-object p0, Lcom/xiaomi/push/bv;->a:Lcom/xiaomi/push/bv;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/bv;->a:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_11
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-wide p1

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_11
    monitor-exit p0

    return-wide p3
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/bv;->a:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_11
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object p1

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_11
    monitor-exit p0

    return-object p3
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/bv;->a:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/bv;->a:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method
