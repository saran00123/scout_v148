.class final Lcom/huawei/updatesdk/b/f/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/huawei/updatesdk/b/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/updatesdk/b/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/updatesdk/b/f/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/updatesdk/b/f/c$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(ILcom/huawei/updatesdk/a/b/b/b;)V
    .registers 6

    iget-object v0, p0, Lcom/huawei/updatesdk/b/f/c$a;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/huawei/updatesdk/b/f/c$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/updatesdk/b/f/b;

    invoke-interface {v2, p1, p2}, Lcom/huawei/updatesdk/b/f/b;->a(ILcom/huawei/updatesdk/a/b/b/b;)V

    goto :goto_9

    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public a(Lcom/huawei/updatesdk/b/f/b;)V
    .registers 4

    iget-object v0, p0, Lcom/huawei/updatesdk/b/f/c$a;->a:Ljava/util/List;

    monitor-enter v0

    if-nez p1, :cond_7

    :try_start_5
    monitor-exit v0

    return-void

    :cond_7
    iget-object v1, p0, Lcom/huawei/updatesdk/b/f/c$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_29

    if-nez v1, :cond_27

    :try_start_f
    iget-object v1, p0, Lcom/huawei/updatesdk/b/f/c$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_f .. :try_end_14} :catch_22
    .catch Ljava/lang/ClassCastException; {:try_start_f .. :try_end_14} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_14} :catch_15
    .catchall {:try_start_f .. :try_end_14} :catchall_29

    goto :goto_27

    :catch_15
    :try_start_15
    const-string p1, "InstallObserverManager"

    const-string v1, "registerObserver IllegalArgumentException"

    :goto_19
    invoke-static {p1, v1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :catch_1d
    const-string p1, "InstallObserverManager"

    const-string v1, "registerObserver ClassCastException"

    goto :goto_19

    :catch_22
    const-string p1, "InstallObserverManager"

    const-string v1, "registerObserver UnsupportedOperationException"

    goto :goto_19

    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public b(Lcom/huawei/updatesdk/b/f/b;)V
    .registers 4

    iget-object v0, p0, Lcom/huawei/updatesdk/b/f/c$a;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/huawei/updatesdk/b/f/c$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_12

    :catchall_9
    move-exception p1

    goto :goto_14

    :catch_b
    :try_start_b
    const-string p1, "InstallObserverManager"

    const-string v1, "unRegisterObserver UnsupportedOperationException"

    invoke-static {p1, v1}, Lcom/huawei/updatesdk/a/a/c/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    monitor-exit v0

    return-void

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_9

    throw p1
.end method
