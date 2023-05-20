.class public Lcom/xiaomi/push/service/ay;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/xiaomi/push/service/ax;Lcom/xiaomi/push/ib;)I
    .registers 5

    sget-object v0, Lcom/xiaomi/push/service/az;->a:[I

    invoke-virtual {p1}, Lcom/xiaomi/push/ib;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_e

    const/4 v1, 0x2

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    invoke-virtual {p0, p1, v2}, Lcom/xiaomi/push/service/ax;->a(Lcom/xiaomi/push/ib;I)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/util/List;Z)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/push/ig;",
            ">;Z)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/push/af;->a(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/ig;

    invoke-virtual {v2}, Lcom/xiaomi/push/ig;->a()I

    move-result v3

    invoke-virtual {v2}, Lcom/xiaomi/push/ig;->b()I

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/push/ic;->a(I)Lcom/xiaomi/push/ic;

    move-result-object v4

    if-nez v4, :cond_2c

    goto :goto_11

    :cond_2c
    if-eqz p1, :cond_3f

    iget-boolean v5, v2, Lcom/xiaomi/push/ig;->a:Z

    if-eqz v5, :cond_3f

    new-instance v2, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_3f
    sget-object v5, Lcom/xiaomi/push/service/az;->b:[I

    invoke-virtual {v4}, Lcom/xiaomi/push/ic;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_87

    const/4 v5, 0x2

    if-eq v4, v5, :cond_75

    const/4 v5, 0x3

    if-eq v4, v5, :cond_67

    const/4 v5, 0x4

    if-eq v4, v5, :cond_55

    move-object v4, v1

    goto :goto_98

    :cond_55
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/push/ig;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_98

    :cond_67
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/push/ig;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_98

    :cond_75
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/push/ig;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_98

    :cond_87
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/push/ig;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_98
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_9d
    return-object v0
.end method

.method public static a(Lcom/xiaomi/push/service/ax;Lcom/xiaomi/push/is;)V
    .registers 3

    invoke-virtual {p1}, Lcom/xiaomi/push/is;->a()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaomi/push/service/ay;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/service/ax;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/ax;->b()V

    return-void
.end method

.method public static a(Lcom/xiaomi/push/service/ax;Lcom/xiaomi/push/it;)V
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/xiaomi/push/it;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_12
    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/ie;

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v2}, Lcom/xiaomi/push/ie;->a()Lcom/xiaomi/push/ib;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaomi/push/ie;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/xiaomi/push/ie;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xiaomi/push/service/ay;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/push/af;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    :cond_43
    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/service/ax;->a(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/xiaomi/push/service/ax;->b()V

    return-void
.end method
