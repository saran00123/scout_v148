.class final Lcom/xiaomi/push/service/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/push/service/n$c;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/n$c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/service/n$a;->a:Lcom/xiaomi/push/service/n$c;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/n$a;->a:Lcom/xiaomi/push/service/n$c;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_16

    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/push/service/n$a;->a:Lcom/xiaomi/push/service/n$c;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaomi/push/service/n$c;->a(Lcom/xiaomi/push/service/n$c;Z)Z

    iget-object v1, p0, Lcom/xiaomi/push/service/n$a;->a:Lcom/xiaomi/push/service/n$c;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
