.class public final Lcom/huawei/hms/adapter/sysobs/SystemManager$a;
.super Ljava/lang/Object;
.source "SystemManager.java"

# interfaces
.implements Lcom/huawei/hms/adapter/sysobs/SystemNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/adapter/sysobs/SystemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/adapter/sysobs/SystemObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/adapter/sysobs/SystemManager$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public notifyNoticeObservers(I)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object v1, p0, Lcom/huawei/hms/adapter/sysobs/SystemManager$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/adapter/sysobs/SystemObserver;

    invoke-interface {v2, p1}, Lcom/huawei/hms/adapter/sysobs/SystemObserver;->onNoticeResult(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 9
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public notifyObservers(I)V
    .registers 5

    .line 10
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11
    :try_start_5
    iget-object v1, p0, Lcom/huawei/hms/adapter/sysobs/SystemManager$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 13
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/adapter/sysobs/SystemObserver;

    invoke-interface {v2, p1}, Lcom/huawei/hms/adapter/sysobs/SystemObserver;->onUpdateResult(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 18
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public notifyObservers(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object v1, p0, Lcom/huawei/hms/adapter/sysobs/SystemManager$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/adapter/sysobs/SystemObserver;

    invoke-interface {v2, p1, p2}, Lcom/huawei/hms/adapter/sysobs/SystemObserver;->onSolutionResult(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 9
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public registerObserver(Lcom/huawei/hms/adapter/sysobs/SystemObserver;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/huawei/hms/adapter/sysobs/SystemManager$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_10
    iget-object v1, p0, Lcom/huawei/hms/adapter/sysobs/SystemManager$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw p1

    :cond_1a
    :goto_1a
    return-void
.end method

.method public unRegisterObserver(Lcom/huawei/hms/adapter/sysobs/SystemObserver;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_5
    iget-object v1, p0, Lcom/huawei/hms/adapter/sysobs/SystemManager$a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1
.end method
