.class Lcom/xiaomi/push/hp;
.super Lcom/xiaomi/push/an$b;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/hp;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/push/an$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    invoke-static {}, Lcom/xiaomi/push/ho;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/xiaomi/push/ho;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/xiaomi/push/ho;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    iget-object v0, p0, Lcom/xiaomi/push/hp;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xiaomi/push/ho;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void

    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method
