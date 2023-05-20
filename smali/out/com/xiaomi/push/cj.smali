.class Lcom/xiaomi/push/cj;
.super Lcom/xiaomi/push/ak$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/ci;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/ci;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/cj;->a:Lcom/xiaomi/push/ci;

    invoke-direct {p0}, Lcom/xiaomi/push/ak$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "100957"

    return-object v0
.end method

.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/cj;->a:Lcom/xiaomi/push/ci;

    invoke-static {v0}, Lcom/xiaomi/push/ci;->a(Lcom/xiaomi/push/ci;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/push/cj;->a:Lcom/xiaomi/push/ci;

    invoke-static {v1}, Lcom/xiaomi/push/ci;->a(Lcom/xiaomi/push/ci;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4a

    iget-object v1, p0, Lcom/xiaomi/push/cj;->a:Lcom/xiaomi/push/ci;

    invoke-static {v1}, Lcom/xiaomi/push/ci;->a(Lcom/xiaomi/push/ci;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2c

    iget-object v1, p0, Lcom/xiaomi/push/cj;->a:Lcom/xiaomi/push/ci;

    iget-object v2, p0, Lcom/xiaomi/push/cj;->a:Lcom/xiaomi/push/ci;

    invoke-static {v2}, Lcom/xiaomi/push/ci;->a(Lcom/xiaomi/push/ci;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/ci;->a(Ljava/util/ArrayList;)V

    goto :goto_3e

    :cond_2c
    iget-object v1, p0, Lcom/xiaomi/push/cj;->a:Lcom/xiaomi/push/ci;

    iget-object v2, p0, Lcom/xiaomi/push/cj;->a:Lcom/xiaomi/push/ci;

    invoke-static {v2}, Lcom/xiaomi/push/ci;->a(Lcom/xiaomi/push/ci;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/ci$a;

    invoke-virtual {v1, v2}, Lcom/xiaomi/push/ci;->b(Lcom/xiaomi/push/ci$a;)V

    :goto_3e
    iget-object v1, p0, Lcom/xiaomi/push/cj;->a:Lcom/xiaomi/push/ci;

    invoke-static {v1}, Lcom/xiaomi/push/ci;->a(Lcom/xiaomi/push/ci;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_4a
    monitor-exit v0

    return-void

    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_7 .. :try_end_4e} :catchall_4c

    throw v1
.end method
