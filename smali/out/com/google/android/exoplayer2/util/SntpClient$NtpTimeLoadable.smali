.class final Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeLoadable;
.super Ljava/lang/Object;
.source "SntpClient.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/SntpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NtpTimeLoadable"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/SntpClient$1;)V
    .registers 2

    .line 284
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeLoadable;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelLoad()V
    .registers 1

    return-void
.end method

.method public load()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 293
    :try_start_5
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->access$200()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_2d

    .line 294
    :try_start_a
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->access$300()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 295
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_2a

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_2d

    return-void

    .line 297
    :cond_13
    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_2a

    .line 298
    :try_start_14
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->access$400()J

    move-result-wide v1

    .line 299
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->access$200()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_2d

    .line 300
    :try_start_1d
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/SntpClient;->access$502(J)J

    const/4 v1, 0x1

    .line 301
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/SntpClient;->access$302(Z)Z

    .line 302
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_27

    .line 303
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_2d

    return-void

    :catchall_27
    move-exception v1

    .line 302
    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2d

    :catchall_2a
    move-exception v2

    .line 297
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v2

    :catchall_2d
    move-exception v1

    .line 303
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_2d

    throw v1
.end method
