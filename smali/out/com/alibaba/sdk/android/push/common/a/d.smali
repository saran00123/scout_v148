.class public Lcom/alibaba/sdk/android/push/common/a/d;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a(I)V
    .registers 2

    const-class v0, Lcom/alibaba/sdk/android/push/common/a/d;

    monitor-enter v0

    :try_start_3
    sput p0, Lcom/alibaba/sdk/android/push/common/a/c;->e:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/graphics/Bitmap;)V
    .registers 2

    const-class v0, Lcom/alibaba/sdk/android/push/common/a/d;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/alibaba/sdk/android/push/common/a/c;->b:Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    const-class v0, Lcom/alibaba/sdk/android/push/common/a/d;

    monitor-enter v0

    if-eqz p0, :cond_11

    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    sput-object p0, Lcom/alibaba/sdk/android/push/common/a/c;->a:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    goto :goto_11

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_11
    :goto_11
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized a(Z)V
    .registers 2

    const-class v0, Lcom/alibaba/sdk/android/push/common/a/d;

    monitor-enter v0

    :try_start_3
    sput-boolean p0, Lcom/alibaba/sdk/android/push/common/a/c;->h:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method
