.class public final Lcom/ta/utdid2/b/a/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ta/utdid2/b/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/b/a/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ta/utdid2/b/a/d$a;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/ta/utdid2/b/a/d$a;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    const/4 p1, 0x0

    .line 233
    iput-boolean p1, p0, Lcom/ta/utdid2/b/a/d$a$a;->k:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)Lcom/ta/utdid2/b/a/b$a;
    .registers 5

    .line 250
    monitor-enter p0

    .line 251
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    monitor-exit p0

    return-object p0

    :catchall_c
    move-exception p1

    .line 253
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/b/a/b$a;
    .registers 4

    .line 236
    monitor-enter p0

    .line 237
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    monitor-exit p0

    return-object p0

    :catchall_8
    move-exception p1

    .line 239
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public b()Lcom/ta/utdid2/b/a/b$a;
    .registers 2

    .line 278
    monitor-enter p0

    const/4 v0, 0x1

    .line 279
    :try_start_2
    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->k:Z

    .line 280
    monitor-exit p0

    return-object p0

    :catchall_6
    move-exception v0

    .line 281
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public commit()Z
    .registers 10

    .line 291
    invoke-static {}, Lcom/ta/utdid2/b/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 292
    :try_start_5
    iget-object v1, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v1}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_15

    move v1, v3

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    const/4 v4, 0x0

    if-eqz v1, :cond_2e

    .line 294
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 295
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v6}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/WeakHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2f

    :cond_2e
    move-object v5, v4

    .line 298
    :goto_2f
    monitor-enter p0
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_bc

    .line 299
    :try_start_30
    iget-boolean v6, p0, Lcom/ta/utdid2/b/a/d$a$a;->k:Z

    if-eqz v6, :cond_3f

    .line 300
    iget-object v6, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v6}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 301
    iput-boolean v2, p0, Lcom/ta/utdid2/b/a/d$a$a;->k:Z

    .line 304
    :cond_3f
    iget-object v2, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_49
    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 306
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p0, :cond_6b

    .line 308
    iget-object v6, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v6}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    .line 310
    :cond_6b
    iget-object v8, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v8}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_74
    if-eqz v1, :cond_49

    .line 314
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 318
    :cond_7a
    iget-object v2, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 319
    monitor-exit p0
    :try_end_80
    .catchall {:try_start_30 .. :try_end_80} :catchall_b9

    .line 320
    :try_start_80
    iget-object v2, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v2}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 322
    iget-object v6, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-virtual {v6, v3}, Lcom/ta/utdid2/b/a/d$a;->b(Z)V

    .line 324
    :cond_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_80 .. :try_end_8e} :catchall_bc

    if-eqz v1, :cond_b8

    .line 327
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_95
    if-ltz v0, :cond_b8

    .line 328
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a1
    :goto_a1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ta/utdid2/b/a/b$b;

    if-eqz v6, :cond_a1

    .line 331
    iget-object v7, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-interface {v6, v7, v1}, Lcom/ta/utdid2/b/a/b$b;->a(Lcom/ta/utdid2/b/a/b;Ljava/lang/String;)V

    goto :goto_a1

    :cond_b5
    add-int/lit8 v0, v0, -0x1

    goto :goto_95

    :cond_b8
    return v2

    :catchall_b9
    move-exception v1

    .line 319
    :try_start_ba
    monitor-exit p0
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    :try_start_bb
    throw v1

    :catchall_bc
    move-exception v1

    .line 324
    monitor-exit v0
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_bc

    throw v1
.end method
