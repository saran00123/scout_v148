.class public Lcom/huawei/hms/common/internal/BindResolveClients;
.super Ljava/lang/Object;
.source "BindResolveClients.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/common/internal/BindResolveClients$SingletonManager;
    }
.end annotation


# static fields
.field private static final LOCK_INST:Ljava/lang/Object;


# instance fields
.field private mClientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/huawei/hms/common/internal/ResolveClientBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/common/internal/BindResolveClients;->LOCK_INST:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/common/internal/BindResolveClients;->mClientList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/common/internal/BindResolveClients$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/BindResolveClients;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/huawei/hms/common/internal/BindResolveClients;
    .registers 1

    .line 1
    invoke-static {}, Lcom/huawei/hms/common/internal/BindResolveClients$SingletonManager;->access$100()Lcom/huawei/hms/common/internal/BindResolveClients;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method isClientRegistered(Lcom/huawei/hms/common/internal/ResolveClientBean;)Z
    .registers 4

    .line 1
    sget-object v0, Lcom/huawei/hms/common/internal/BindResolveClients;->LOCK_INST:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/huawei/hms/common/internal/BindResolveClients;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    .line 3
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public notifyClientReconnect()V
    .registers 4

    .line 1
    sget-object v0, Lcom/huawei/hms/common/internal/BindResolveClients;->LOCK_INST:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/huawei/hms/common/internal/BindResolveClients;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 3
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/common/internal/ResolveClientBean;

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResolveClientBean;->clientReconnect()V

    goto :goto_9

    .line 6
    :cond_19
    iget-object v1, p0, Lcom/huawei/hms/common/internal/BindResolveClients;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method register(Lcom/huawei/hms/common/internal/ResolveClientBean;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    sget-object v0, Lcom/huawei/hms/common/internal/BindResolveClients;->LOCK_INST:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_6
    iget-object v1, p0, Lcom/huawei/hms/common/internal/BindResolveClients;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/common/internal/BindResolveClients;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p1
.end method

.method unRegister(Lcom/huawei/hms/common/internal/ResolveClientBean;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    sget-object v0, Lcom/huawei/hms/common/internal/BindResolveClients;->LOCK_INST:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_6
    iget-object v1, p0, Lcom/huawei/hms/common/internal/BindResolveClients;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/common/internal/BindResolveClients;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 4
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/huawei/hms/common/internal/ResolveClientBean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 11
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public unRegisterAll()V
    .registers 3

    .line 1
    sget-object v0, Lcom/huawei/hms/common/internal/BindResolveClients;->LOCK_INST:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    iget-object v1, p0, Lcom/huawei/hms/common/internal/BindResolveClients;->mClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
