.class Lanet/channel/e;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lanet/channel/SessionRequest;",
            "Ljava/util/List<",
            "Lanet/channel/Session;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

.field private final d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/e;->a:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lanet/channel/e;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 29
    iget-object v0, p0, Lanet/channel/e;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 30
    iget-object v0, p0, Lanet/channel/e;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/e;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    return-void
.end method


# virtual methods
.method public a(Lanet/channel/SessionRequest;I)Lanet/channel/Session;
    .registers 6

    .line 143
    iget-object v0, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 145
    :try_start_5
    iget-object v0, p0, Lanet/channel/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_42

    .line 146
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_42

    .line 150
    :cond_17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/Session;

    if-eqz v1, :cond_1b

    .line 151
    invoke-virtual {v1}, Lanet/channel/Session;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1b

    sget v2, Lanet/channel/entity/c;->c:I

    if-eq p2, v2, :cond_3b

    iget-object v2, v1, Lanet/channel/Session;->j:Lanet/channel/entity/ConnType;

    .line 152
    invoke-virtual {v2}, Lanet/channel/entity/ConnType;->getType()I

    move-result v2
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_48

    if-ne v2, p2, :cond_1b

    :cond_3b
    move-object v0, v1

    .line 158
    :cond_3c
    iget-object p1, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :cond_42
    :goto_42
    iget-object p1, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_48
    move-exception p1

    iget-object p2, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 159
    throw p1
.end method

.method public a()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lanet/channel/SessionRequest;",
            ">;"
        }
    .end annotation

    .line 164
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 165
    iget-object v1, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 167
    :try_start_7
    iget-object v1, p0, Lanet/channel/e;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_26

    if-eqz v1, :cond_15

    .line 173
    iget-object v1, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    .line 171
    :cond_15
    :try_start_15
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lanet/channel/e;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_26

    .line 173
    iget-object v1, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_26
    move-exception v0

    iget-object v1, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 174
    throw v0
.end method

.method public a(Lanet/channel/SessionRequest;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanet/channel/SessionRequest;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/Session;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 79
    :try_start_5
    iget-object v0, p0, Lanet/channel/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1a

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_22

    .line 86
    iget-object p1, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    .line 83
    :cond_1a
    :try_start_1a
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_22

    .line 86
    iget-object v0, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    :catchall_22
    move-exception p1

    iget-object v0, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 87
    throw p1
.end method

.method public a(Lanet/channel/SessionRequest;Lanet/channel/Session;)V
    .registers 5

    if-eqz p1, :cond_44

    .line 39
    invoke-virtual {p1}, Lanet/channel/SessionRequest;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    if-nez p2, :cond_b

    goto :goto_44

    .line 43
    :cond_b
    iget-object v0, p0, Lanet/channel/e;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 45
    :try_start_10
    iget-object v0, p0, Lanet/channel/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_24

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v1, p0, Lanet/channel/e;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_24
    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_3d

    const/4 v1, -0x1

    if-eq p1, v1, :cond_31

    .line 56
    iget-object p1, p0, Lanet/channel/e;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 53
    :cond_31
    :try_start_31
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_3d

    .line 56
    iget-object p1, p0, Lanet/channel/e;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_3d
    move-exception p1

    iget-object p2, p0, Lanet/channel/e;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 57
    throw p1

    :cond_44
    :goto_44
    return-void
.end method

.method public b(Lanet/channel/SessionRequest;Lanet/channel/Session;)V
    .registers 4

    .line 61
    iget-object v0, p0, Lanet/channel/e;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 63
    :try_start_5
    iget-object v0, p0, Lanet/channel/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_29

    if-nez v0, :cond_15

    .line 72
    iget-object p1, p0, Lanet/channel/e;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 67
    :cond_15
    :try_start_15
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_23

    .line 69
    iget-object p2, p0, Lanet/channel/e;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_29

    .line 72
    :cond_23
    iget-object p1, p0, Lanet/channel/e;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_29
    move-exception p1

    iget-object p2, p0, Lanet/channel/e;->d:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 73
    throw p1
.end method

.method public c(Lanet/channel/SessionRequest;Lanet/channel/Session;)Z
    .registers 4

    .line 179
    iget-object v0, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 181
    :try_start_5
    iget-object v0, p0, Lanet/channel/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1f

    const/4 v0, 0x0

    if-nez p1, :cond_16

    .line 187
    :cond_10
    :goto_10
    iget-object p1, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    .line 185
    :cond_16
    :try_start_16
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1f

    const/4 p2, -0x1

    if-eq p1, p2, :cond_10

    const/4 v0, 0x1

    goto :goto_10

    :catchall_1f
    move-exception p1

    .line 187
    iget-object p2, p0, Lanet/channel/e;->c:Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 188
    throw p1
.end method
