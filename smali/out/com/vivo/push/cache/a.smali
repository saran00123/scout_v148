.class public final Lcom/vivo/push/cache/a;
.super Lcom/vivo/push/cache/c;
.source "AppConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vivo/push/cache/c<",
        "Lcom/vivo/push/model/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/vivo/push/cache/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(I)Z
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_a

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_8

    return v0

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_a
    const-string p0, "persist.sys.log.ctrl"

    const-string v0, "no"

    .line 176
    invoke-static {p0, v0}, Lcom/vivo/push/util/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .registers 2

    const-string v0, "com.vivo.pushservice.back_up"

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/vivo/push/model/a;",
            ">;"
        }
    .end annotation

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 43
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "@#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 47
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, v1, :cond_64

    aget-object v4, p1, v3

    .line 48
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 50
    array-length v6, v5

    const/4 v7, 0x2

    if-lt v6, v7, :cond_61

    .line 54
    :try_start_36
    new-instance v6, Lcom/vivo/push/model/a;

    aget-object v7, v5, v2

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Lcom/vivo/push/model/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4c} :catch_4d

    goto :goto_61

    :catch_4d
    move-exception v4

    .line 57
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "str2Clients E: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppConfigSettings"

    invoke-static {v5, v4}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_64
    return-object v0
.end method

.method public final b()I
    .registers 4

    const-string v0, "push_mode"

    .line 155
    invoke-virtual {p0, v0}, Lcom/vivo/push/cache/a;->c(Ljava/lang/String;)Lcom/vivo/push/model/a;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_19

    .line 2027
    iget-object v2, v0, Lcom/vivo/push/model/a;->b:Ljava/lang/String;

    .line 156
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_19

    .line 3027
    :cond_12
    :try_start_12
    iget-object v0, v0, Lcom/vivo/push/model/a;->b:Ljava/lang/String;

    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_19

    return v0

    :catch_19
    :cond_19
    :goto_19
    return v1
.end method

.method final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/vivo/push/cache/a;->a:[B

    invoke-static {v1}, Lcom/vivo/push/util/e;->a([B)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vivo/push/cache/a;->b:[B

    invoke-static {v2}, Lcom/vivo/push/util/e;->a([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/vivo/push/util/e;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/vivo/push/model/a;
    .registers 6

    .line 120
    sget-object v0, Lcom/vivo/push/cache/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_3
    iget-object v1, p0, Lcom/vivo/push/cache/a;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/push/model/a;

    .line 1017
    iget-object v3, v2, Lcom/vivo/push/model/a;->a:Ljava/lang/String;

    .line 122
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2017
    iget-object v3, v2, Lcom/vivo/push/model/a;->a:Ljava/lang/String;

    .line 125
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 126
    monitor-exit v0

    return-object v2

    :cond_27
    const/4 p1, 0x0

    .line 129
    monitor-exit v0

    return-object p1

    :catchall_2a
    move-exception p1

    .line 130
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p1
.end method
