.class public Lcom/xiaomi/push/service/bw;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static a:Ljava/text/SimpleDateFormat;

.field private static a:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/xiaomi/push/service/bw;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/bw;->a:Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/xiaomi/push/service/bw;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/service/bw;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/hy;)Lcom/xiaomi/push/iu;
    .registers 6

    new-instance v0, Lcom/xiaomi/push/iu;

    const-string v1, "-1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/push/iu;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/iu;->d(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/iu;->b(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    move-result-object p0

    invoke-static {p2}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/push/aa;->a([B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/iu;->a([B)Lcom/xiaomi/push/iu;

    move-result-object p0

    sget-object p1, Lcom/xiaomi/push/if;->B:Lcom/xiaomi/push/if;

    iget-object p1, p1, Lcom/xiaomi/push/if;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/iu;->c(Ljava/lang/String;)Lcom/xiaomi/push/iu;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/xiaomi/push/service/bw;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/xiaomi/push/service/bw;->a:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/push/service/bw;->a:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    sget-object v2, Lcom/xiaomi/push/service/bw;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sput-object v1, Lcom/xiaomi/push/service/bw;->a:Ljava/lang/String;

    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaomi/push/service/bw;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3e

    monitor-exit v0

    return-object v1

    :catchall_3e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaomi/push/hz;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/xiaomi/push/iu;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_9

    const-string p0, "requests can not be null in TinyDataHelper.transToThriftObj()."

    :goto_5
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    return-object v0

    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_12

    const-string p0, "requests.length is 0 in TinyDataHelper.transToThriftObj()."

    goto :goto_5

    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/xiaomi/push/hy;

    invoke-direct {v2}, Lcom/xiaomi/push/hy;-><init>()V

    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    move v5, v2

    :goto_20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_ab

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaomi/push/hz;

    if-nez v6, :cond_30

    goto/16 :goto_a7

    :cond_30
    invoke-virtual {v6}, Lcom/xiaomi/push/hz;->a()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_6f

    invoke-virtual {v6}, Lcom/xiaomi/push/hz;->a()Ljava/util/Map;

    move-result-object v7

    const-string v8, "item_size"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-virtual {v6}, Lcom/xiaomi/push/hz;->a()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_57

    :try_start_52
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_56} :catch_57

    goto :goto_58

    :catch_57
    :cond_57
    move v7, v3

    :goto_58
    invoke-virtual {v6}, Lcom/xiaomi/push/hz;->a()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_67

    invoke-virtual {v6, v0}, Lcom/xiaomi/push/hz;->a(Ljava/util/Map;)Lcom/xiaomi/push/hz;

    goto :goto_70

    :cond_67
    invoke-virtual {v6}, Lcom/xiaomi/push/hz;->a()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_70

    :cond_6f
    move v7, v3

    :goto_70
    if-gtz v7, :cond_77

    invoke-static {v6}, Lcom/xiaomi/push/jf;->a(Lcom/xiaomi/push/jg;)[B

    move-result-object v7

    array-length v7, v7

    :cond_77
    if-le v7, p3, :cond_92

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TinyData is too big, ignore upload request item:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/xiaomi/push/hz;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/xiaomi/channel/commonutils/logger/b;->d(Ljava/lang/String;)V

    goto :goto_a7

    :cond_92
    add-int v8, v5, v7

    if-le v8, p3, :cond_a3

    invoke-static {p1, p2, v4}, Lcom/xiaomi/push/service/bw;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/hy;)Lcom/xiaomi/push/iu;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/xiaomi/push/hy;

    invoke-direct {v4}, Lcom/xiaomi/push/hy;-><init>()V

    move v5, v3

    :cond_a3
    invoke-virtual {v4, v6}, Lcom/xiaomi/push/hy;->a(Lcom/xiaomi/push/hz;)V

    add-int/2addr v5, v7

    :goto_a7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_20

    :cond_ab
    invoke-virtual {v4}, Lcom/xiaomi/push/hy;->a()I

    move-result p0

    if-eqz p0, :cond_b8

    invoke-static {p1, p2, v4}, Lcom/xiaomi/push/service/bw;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/push/hy;)Lcom/xiaomi/push/iu;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b8
    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 7

    new-instance v0, Lcom/xiaomi/push/hz;

    invoke-direct {v0}, Lcom/xiaomi/push/hz;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/hz;->d(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    invoke-virtual {v0, p2}, Lcom/xiaomi/push/hz;->c(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    invoke-virtual {v0, p3, p4}, Lcom/xiaomi/push/hz;->a(J)Lcom/xiaomi/push/hz;

    invoke-virtual {v0, p5}, Lcom/xiaomi/push/hz;->b(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    const-string p1, "push_sdk_channel"

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/hz;->a(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/hz;->g(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/hz;->e(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/hz;->a(Z)Lcom/xiaomi/push/hz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/push/hz;->b(J)Lcom/xiaomi/push/hz;

    invoke-static {}, Lcom/xiaomi/push/service/bw;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/hz;->f(Ljava/lang/String;)Lcom/xiaomi/push/hz;

    invoke-static {p0, v0}, Lcom/xiaomi/push/service/bx;->a(Landroid/content/Context;Lcom/xiaomi/push/hz;)V

    return-void
.end method

.method public static a(Lcom/xiaomi/push/hz;Z)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p0, :cond_9

    const-string p0, "item is null, verfiy ClientUploadDataItem failed."

    :goto_5
    invoke-static {p0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    return v0

    :cond_9
    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/xiaomi/push/hz;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p0, "item.channel is null or empty, verfiy ClientUploadDataItem failed."

    goto :goto_5

    :cond_16
    iget-object p1, p0, Lcom/xiaomi/push/hz;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    const-string p0, "item.category is null or empty, verfiy ClientUploadDataItem failed."

    goto :goto_5

    :cond_21
    iget-object p1, p0, Lcom/xiaomi/push/hz;->c:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2c

    const-string p0, "item.name is null or empty, verfiy ClientUploadDataItem failed."

    goto :goto_5

    :cond_2c
    iget-object p1, p0, Lcom/xiaomi/push/hz;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/push/bo;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_37

    const-string p0, "item.category can only contain ascii char, verfiy ClientUploadDataItem failed."

    goto :goto_5

    :cond_37
    iget-object p1, p0, Lcom/xiaomi/push/hz;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/push/bo;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_42

    const-string p0, "item.name can only contain ascii char, verfiy ClientUploadDataItem failed."

    goto :goto_5

    :cond_42
    iget-object p1, p0, Lcom/xiaomi/push/hz;->b:Ljava/lang/String;

    if-eqz p1, :cond_75

    iget-object p1, p0, Lcom/xiaomi/push/hz;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x2800

    if-le p1, v1, :cond_75

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item.data is too large("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/xiaomi/push/hz;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "), max size for data is "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " , verfiy ClientUploadDataItem failed."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_75
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    invoke-static {}, Lcom/xiaomi/push/u;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "com.miui.hybrid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    const/4 p0, 0x1

    return p0
.end method
