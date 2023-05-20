.class Lcom/xiaomi/push/cw;
.super Lcom/xiaomi/push/cq;


# instance fields
.field a:Lcom/xiaomi/push/cq;

.field final synthetic a:Lcom/xiaomi/push/cu;

.field final synthetic b:Lcom/xiaomi/push/cq;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/cu;Ljava/lang/String;Lcom/xiaomi/push/cq;)V
    .registers 4

    iput-object p1, p0, Lcom/xiaomi/push/cw;->a:Lcom/xiaomi/push/cu;

    iput-object p3, p0, Lcom/xiaomi/push/cw;->b:Lcom/xiaomi/push/cq;

    invoke-direct {p0, p2}, Lcom/xiaomi/push/cq;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/push/cw;->b:Lcom/xiaomi/push/cq;

    iput-object p1, p0, Lcom/xiaomi/push/cw;->a:Lcom/xiaomi/push/cq;

    iget-object p1, p0, Lcom/xiaomi/push/cw;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/push/cw;->b:Ljava/lang/String;

    iget-object p1, p0, Lcom/xiaomi/push/cw;->b:Lcom/xiaomi/push/cq;

    if-eqz p1, :cond_17

    iget-object p1, p1, Lcom/xiaomi/push/cq;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/push/cw;->f:Ljava/lang/String;

    :cond_17
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Z)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/push/cw;->a:Lcom/xiaomi/push/cq;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/xiaomi/push/cw;->a:Lcom/xiaomi/push/cq;

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/cq;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_14
    sget-object v0, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    monitor-enter v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_52

    :try_start_17
    sget-object v2, Lcom/xiaomi/push/cu;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/xiaomi/push/cw;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/cq;

    if-eqz v2, :cond_4c

    invoke-virtual {v2, v1}, Lcom/xiaomi/push/cq;->a(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2b

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_42
    iget-object v1, p0, Lcom/xiaomi/push/cw;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/xiaomi/push/cw;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_17 .. :try_end_4d} :catchall_4f

    monitor-exit p0

    return-object p1

    :catchall_4f
    move-exception p1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw p1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/xiaomi/push/cp;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/cw;->a:Lcom/xiaomi/push/cq;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/xiaomi/push/cw;->a:Lcom/xiaomi/push/cq;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/cq;->a(Ljava/lang/String;Lcom/xiaomi/push/cp;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
