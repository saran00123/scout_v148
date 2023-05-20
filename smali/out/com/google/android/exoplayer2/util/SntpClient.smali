.class public final Lcom/google/android/exoplayer2/util/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;,
        Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeLoadable;,
        Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_NTP_HOST:Ljava/lang/String; = "time.android.com"

.field private static final NTP_LEAP_NOSYNC:I = 0x3

.field private static final NTP_MODE_BROADCAST:I = 0x5

.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_MODE_SERVER:I = 0x4

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_STRATUM_DEATH:I = 0x0

.field private static final NTP_STRATUM_MAX:I = 0xf

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final TIMEOUT_MS:I = 0x2710

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28

.field private static elapsedRealtimeOffsetMs:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "valueLock"
    .end annotation
.end field

.field private static isInitialized:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "valueLock"
    .end annotation
.end field

.field private static final loaderLock:Ljava/lang/Object;

.field private static ntpHost:Ljava/lang/String;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "valueLock"
    .end annotation
.end field

.field private static final valueLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->loaderLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->valueLock:Ljava/lang/Object;

    const-string/jumbo v0, "time.android.com"

    .line 87
    sput-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->ntpHost:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .registers 1

    .line 39
    sget-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->loaderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .registers 1

    .line 39
    sget-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->valueLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 39
    sget-boolean v0, Lcom/google/android/exoplayer2/util/SntpClient;->isInitialized:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    .line 39
    sput-boolean p0, Lcom/google/android/exoplayer2/util/SntpClient;->isInitialized:Z

    return p0
.end method

.method static synthetic access$400()J
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->loadNtpTimeOffsetMs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$502(J)J
    .registers 2

    .line 39
    sput-wide p0, Lcom/google/android/exoplayer2/util/SntpClient;->elapsedRealtimeOffsetMs:J

    return-wide p0
.end method

.method private static checkValidServerReply(BBIJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p0, v0, :cond_51

    const/4 p0, 0x4

    if-eq p1, p0, :cond_23

    const/4 p0, 0x5

    if-ne p1, p0, :cond_a

    goto :goto_23

    .line 274
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const/16 p2, 0x1a

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "SNTP: Untrusted mode: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_23
    if-eqz p2, :cond_38

    const/16 p0, 0xf

    if-gt p2, p0, :cond_38

    const-wide/16 p0, 0x0

    cmp-long p0, p3, p0

    if-eqz p0, :cond_30

    return-void

    .line 280
    :cond_30
    new-instance p0, Ljava/io/IOException;

    const-string p1, "SNTP: Zero transmitTime"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 277
    :cond_38
    new-instance p0, Ljava/io/IOException;

    const/16 p1, 0x24

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "SNTP: Untrusted stratum: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_51
    new-instance p0, Ljava/io/IOException;

    const-string p1, "SNTP: Unsynchronized server"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getElapsedRealtimeOffsetMs()J
    .registers 3

    .line 136
    sget-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    sget-boolean v1, Lcom/google/android/exoplayer2/util/SntpClient;->isInitialized:Z

    if-eqz v1, :cond_a

    sget-wide v1, Lcom/google/android/exoplayer2/util/SntpClient;->elapsedRealtimeOffsetMs:J

    goto :goto_f

    :cond_a
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_f
    monitor-exit v0

    return-wide v1

    :catchall_11
    move-exception v1

    .line 138
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static getNtpHost()Ljava/lang/String;
    .registers 2

    .line 93
    sget-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/util/SntpClient;->ntpHost:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 95
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static initialize(Lcom/google/android/exoplayer2/upstream/Loader;Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;)V
    .registers 4
    .param p0    # Lcom/google/android/exoplayer2/upstream/Loader;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 150
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_b

    .line 152
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;->onInitialized()V

    :cond_b
    return-void

    :cond_c
    if-nez p0, :cond_15

    .line 157
    new-instance p0, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string v0, "SntpClient"

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    .line 159
    :cond_15
    new-instance v0, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeLoadable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeLoadable;-><init>(Lcom/google/android/exoplayer2/util/SntpClient$1;)V

    new-instance v1, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/util/SntpClient$NtpTimeCallback;-><init>(Lcom/google/android/exoplayer2/util/SntpClient$InitializationCallback;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    return-void
.end method

.method public static isInitialized()Z
    .registers 2

    .line 124
    sget-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    sget-boolean v1, Lcom/google/android/exoplayer2/util/SntpClient;->isInitialized:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    .line 126
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private static loadNtpTimeOffsetMs()J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    invoke-static {}, Lcom/google/android/exoplayer2/util/SntpClient;->getNtpHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V

    const/16 v2, 0x2710

    .line 166
    :try_start_f
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/16 v2, 0x30

    .line 167
    new-array v2, v2, [B

    .line 168
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v2

    const/16 v5, 0x7b

    invoke-direct {v3, v2, v4, v0, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v0, 0x1b

    const/4 v4, 0x0

    aput-byte v0, v2, v4

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 176
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/16 v0, 0x28

    .line 177
    invoke-static {v2, v0, v5, v6}, Lcom/google/android/exoplayer2/util/SntpClient;->writeTimestamp([BIJ)V

    .line 179
    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 182
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v9, v2

    invoke-direct {v3, v2, v9}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 183
    invoke-virtual {v1, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v7, v9, v7

    add-long/2addr v5, v7

    .line 188
    aget-byte v3, v2, v4

    shr-int/lit8 v3, v3, 0x6

    and-int/lit8 v3, v3, 0x3

    int-to-byte v3, v3

    .line 189
    aget-byte v4, v2, v4

    and-int/lit8 v4, v4, 0x7

    int-to-byte v4, v4

    const/4 v7, 0x1

    .line 190
    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    const/16 v8, 0x18

    .line 191
    invoke-static {v2, v8}, Lcom/google/android/exoplayer2/util/SntpClient;->readTimestamp([BI)J

    move-result-wide v11

    const/16 v8, 0x20

    .line 192
    invoke-static {v2, v8}, Lcom/google/android/exoplayer2/util/SntpClient;->readTimestamp([BI)J

    move-result-wide v13
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_60} :catch_76

    move-object v8, v1

    .line 193
    :try_start_61
    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/SntpClient;->readTimestamp([BI)J

    move-result-wide v0

    .line 196
    invoke-static {v3, v4, v7, v0, v1}, Lcom/google/android/exoplayer2/util/SntpClient;->checkValidServerReply(BBIJ)V

    sub-long/2addr v13, v11

    sub-long/2addr v0, v5

    add-long/2addr v13, v0

    const-wide/16 v0, 0x2

    .line 206
    div-long/2addr v13, v0
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_6e} :catch_74

    add-long/2addr v5, v13

    sub-long/2addr v5, v9

    .line 214
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->close()V

    return-wide v5

    :catch_74
    move-exception v0

    goto :goto_78

    :catch_76
    move-exception v0

    move-object v8, v1

    :goto_78
    move-object v1, v0

    .line 165
    :try_start_79
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->close()V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_82

    :catch_7d
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_82
    throw v1
.end method

.method private static read32([BI)J
    .registers 7

    .line 254
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    .line 255
    aget-byte v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    .line 256
    aget-byte v2, p0, v2

    add-int/lit8 p1, p1, 0x3

    .line 257
    aget-byte p0, p0, p1

    and-int/lit16 p1, v0, 0x80

    const/16 v3, 0x80

    if-ne p1, v3, :cond_18

    and-int/lit8 p1, v0, 0x7f

    add-int/lit16 v0, p1, 0x80

    :cond_18
    and-int/lit16 p1, v1, 0x80

    if-ne p1, v3, :cond_20

    and-int/lit8 p1, v1, 0x7f

    add-int/lit16 v1, p1, 0x80

    :cond_20
    and-int/lit16 p1, v2, 0x80

    if-ne p1, v3, :cond_28

    and-int/lit8 p1, v2, 0x7f

    add-int/lit16 v2, p1, 0x80

    :cond_28
    and-int/lit16 p1, p0, 0x80

    if-ne p1, v3, :cond_2f

    and-int/lit8 p0, p0, 0x7f

    add-int/2addr p0, v3

    :cond_2f
    int-to-long v3, v0

    const/16 p1, 0x18

    shl-long/2addr v3, p1

    int-to-long v0, v1

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    add-long/2addr v3, v0

    int-to-long v0, v2

    const/16 p1, 0x8

    shl-long/2addr v0, p1

    add-long/2addr v3, v0

    int-to-long p0, p0

    add-long/2addr v3, p0

    return-wide v3
.end method

.method private static readTimestamp([BI)J
    .registers 7

    .line 218
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/SntpClient;->read32([BI)J

    move-result-wide v0

    add-int/lit8 p1, p1, 0x4

    .line 219
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/SntpClient;->read32([BI)J

    move-result-wide p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_15

    cmp-long v4, p0, v2

    if-nez v4, :cond_15

    return-wide v2

    :cond_15
    const-wide v2, 0x83aa7e80L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    mul-long/2addr p0, v2

    const-wide v2, 0x100000000L

    .line 224
    div-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static setNtpHost(Ljava/lang/String;)V
    .registers 3

    .line 109
    sget-object v0, Lcom/google/android/exoplayer2/util/SntpClient;->valueLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    sget-object v1, Lcom/google/android/exoplayer2/util/SntpClient;->ntpHost:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 111
    sput-object p0, Lcom/google/android/exoplayer2/util/SntpClient;->ntpHost:Ljava/lang/String;

    const/4 p0, 0x0

    .line 112
    sput-boolean p0, Lcom/google/android/exoplayer2/util/SntpClient;->isInitialized:Z

    .line 114
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private static writeTimestamp([BIJ)V
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    add-int/lit8 p2, p1, 0x8

    .line 230
    invoke-static {p0, p1, p2, v1}, Ljava/util/Arrays;->fill([BIIB)V

    return-void

    :cond_d
    const-wide/16 v2, 0x3e8

    .line 234
    div-long v4, p2, v2

    mul-long v6, v4, v2

    sub-long/2addr p2, v6

    const-wide v6, 0x83aa7e80L

    add-long/2addr v4, v6

    add-int/lit8 v0, p1, 0x1

    const/16 v6, 0x18

    shr-long v7, v4, v6

    long-to-int v7, v7

    int-to-byte v7, v7

    .line 239
    aput-byte v7, p0, p1

    add-int/lit8 p1, v0, 0x1

    const/16 v7, 0x10

    shr-long v8, v4, v7

    long-to-int v8, v8

    int-to-byte v8, v8

    .line 240
    aput-byte v8, p0, v0

    add-int/lit8 v0, p1, 0x1

    const/16 v8, 0x8

    shr-long v9, v4, v8

    long-to-int v9, v9

    int-to-byte v9, v9

    .line 241
    aput-byte v9, p0, p1

    add-int/lit8 p1, v0, 0x1

    shr-long/2addr v4, v1

    long-to-int v1, v4

    int-to-byte v1, v1

    .line 242
    aput-byte v1, p0, v0

    const-wide v0, 0x100000000L

    mul-long/2addr p2, v0

    .line 244
    div-long/2addr p2, v2

    add-int/lit8 v0, p1, 0x1

    shr-long v1, p2, v6

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 246
    aput-byte v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    shr-long v1, p2, v7

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 247
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-long/2addr p2, v8

    long-to-int p2, p2

    int-to-byte p2, p2

    .line 248
    aput-byte p2, p0, p1

    .line 250
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    const-wide v1, 0x406fe00000000000L    # 255.0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-void
.end method
