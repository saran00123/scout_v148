.class public final Lcom/vivo/push/util/v;
.super Lcom/vivo/push/util/a;
.source "SharePreferenceManager.java"


# static fields
.field private static b:Lcom/vivo/push/util/v;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/vivo/push/util/a;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/vivo/push/util/v;
    .registers 2

    const-class v0, Lcom/vivo/push/util/v;

    monitor-enter v0

    .line 15
    :try_start_3
    sget-object v1, Lcom/vivo/push/util/v;->b:Lcom/vivo/push/util/v;

    if-nez v1, :cond_e

    .line 16
    new-instance v1, Lcom/vivo/push/util/v;

    invoke-direct {v1}, Lcom/vivo/push/util/v;-><init>()V

    sput-object v1, Lcom/vivo/push/util/v;->b:Lcom/vivo/push/util/v;

    .line 18
    :cond_e
    sget-object v1, Lcom/vivo/push/util/v;->b:Lcom/vivo/push/util/v;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .registers 3

    monitor-enter p0

    .line 23
    :try_start_1
    iget-object v0, p0, Lcom/vivo/push/util/v;->a:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 24
    iput-object p1, p0, Lcom/vivo/push/util/v;->a:Landroid/content/Context;

    const-string v0, "com.vivo.push_preferences"

    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/vivo/push/util/v;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 27
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
