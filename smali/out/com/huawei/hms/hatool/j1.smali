.class public abstract Lcom/huawei/hms/hatool/j1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/huawei/hms/hatool/h1;


# direct methods
.method public static declared-synchronized a()Lcom/huawei/hms/hatool/h1;
    .registers 2

    const-class v0, Lcom/huawei/hms/hatool/j1;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/huawei/hms/hatool/j1;->a:Lcom/huawei/hms/hatool/h1;

    if-nez v1, :cond_11

    invoke-static {}, Lcom/huawei/hms/hatool/m1;->c()Lcom/huawei/hms/hatool/m1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/hatool/m1;->b()Lcom/huawei/hms/hatool/h1;

    move-result-object v1

    sput-object v1, Lcom/huawei/hms/hatool/j1;->a:Lcom/huawei/hms/hatool/h1;

    :cond_11
    sget-object v1, Lcom/huawei/hms/hatool/j1;->a:Lcom/huawei/hms/hatool/h1;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object v1

    :catchall_15
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/huawei/hms/hatool/j1;->a()Lcom/huawei/hms/hatool/h1;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/huawei/hms/hatool/u0;->b()Lcom/huawei/hms/hatool/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/hatool/u0;->a()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2d

    if-nez p0, :cond_16

    goto :goto_2d

    :cond_16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Data type no longer collects range.type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "hmsSdk"

    invoke-static {p1, p0}, Lcom/huawei/hms/hatool/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_2d
    :goto_2d
    sget-object v0, Lcom/huawei/hms/hatool/j1;->a:Lcom/huawei/hms/hatool/h1;

    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/hms/hatool/h1;->a(ILjava/lang/String;Ljava/util/LinkedHashMap;)V

    :cond_32
    :goto_32
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/huawei/hms/hatool/j1;->a()Lcom/huawei/hms/hatool/h1;

    move-result-object v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/huawei/hms/hatool/j1;->a:Lcom/huawei/hms/hatool/h1;

    invoke-virtual {v0, p0, p1, p2}, Lcom/huawei/hms/hatool/h1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public static b()Z
    .registers 1

    invoke-static {}, Lcom/huawei/hms/hatool/m1;->c()Lcom/huawei/hms/hatool/m1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/hatool/m1;->a()Z

    move-result v0

    return v0
.end method

.method public static c()V
    .registers 2

    invoke-static {}, Lcom/huawei/hms/hatool/j1;->a()Lcom/huawei/hms/hatool/h1;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/huawei/hms/hatool/u0;->b()Lcom/huawei/hms/hatool/u0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/hatool/u0;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/huawei/hms/hatool/j1;->a:Lcom/huawei/hms/hatool/h1;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/hatool/h1;->a(I)V

    :cond_16
    return-void
.end method
