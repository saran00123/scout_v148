.class public abstract Lcom/taobao/accs/net/f;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field protected static volatile b:Lcom/taobao/accs/net/f;

.field private static final c:[I


# instance fields
.field protected a:Landroid/content/Context;

.field private d:I

.field private e:J

.field private f:Z

.field private g:[I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    .line 29
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/taobao/accs/net/f;->c:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x10e
        0x168
        0x1e0
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/taobao/accs/net/f;->f:Z

    const/4 v1, 0x3

    .line 50
    new-array v1, v1, [I

    fill-array-data v1, :array_2c

    iput-object v1, p0, Lcom/taobao/accs/net/f;->g:[I

    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p0, Lcom/taobao/accs/net/f;->h:Z

    .line 60
    :try_start_11
    iput-object p1, p0, Lcom/taobao/accs/net/f;->a:Landroid/content/Context;

    .line 61
    iput v0, p0, Lcom/taobao/accs/net/f;->d:I

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/accs/net/f;->e:J

    .line 63
    invoke-static {}, Lcom/taobao/accs/utl/OrangeAdapter;->isSmartHb()Z

    move-result p1

    iput-boolean p1, p0, Lcom/taobao/accs/net/f;->h:Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_21} :catch_22

    goto :goto_2a

    :catch_22
    move-exception p1

    .line 65
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HeartbeatManager"

    invoke-static {v1, v1, p1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2a
    return-void

    nop

    :array_2c
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static a(Landroid/content/Context;)Lcom/taobao/accs/net/f;
    .registers 5

    .line 70
    sget-object v0, Lcom/taobao/accs/net/f;->b:Lcom/taobao/accs/net/f;

    if-nez v0, :cond_3e

    .line 71
    const-class v0, Lcom/taobao/accs/net/f;

    monitor-enter v0

    .line 72
    :try_start_7
    sget-object v1, Lcom/taobao/accs/net/f;->b:Lcom/taobao/accs/net/f;

    if-nez v1, :cond_39

    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_29

    invoke-static {p0}, Lcom/taobao/accs/net/f;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "HeartbeatManager"

    const-string v2, "hb use job"

    .line 74
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    new-instance v1, Lcom/taobao/accs/net/r;

    invoke-direct {v1, p0}, Lcom/taobao/accs/net/r;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/taobao/accs/net/f;->b:Lcom/taobao/accs/net/f;

    goto :goto_39

    :cond_29
    const-string v1, "HeartbeatManager"

    const-string v2, "hb use alarm"

    .line 77
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    new-instance v1, Lcom/taobao/accs/net/a;

    invoke-direct {v1, p0}, Lcom/taobao/accs/net/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/taobao/accs/net/f;->b:Lcom/taobao/accs/net/f;

    .line 81
    :cond_39
    :goto_39
    monitor-exit v0

    goto :goto_3e

    :catchall_3b
    move-exception p0

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_3b

    throw p0

    .line 83
    :cond_3e
    :goto_3e
    sget-object p0, Lcom/taobao/accs/net/f;->b:Lcom/taobao/accs/net/f;

    return-object p0
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    .line 88
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v3, Lcom/taobao/accs/internal/AccsJobService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    .line 89
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception p0

    .line 91
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "HeartbeatManager"

    const-string v3, "isJobServiceExist"

    invoke-static {v2, v3, p0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 101
    :try_start_2
    iget-wide v1, p0, Lcom/taobao/accs/net/f;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_10

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/accs/net/f;->e:J

    .line 105
    :cond_10
    invoke-virtual {p0}, Lcom/taobao/accs/net/f;->b()I

    move-result v1

    .line 106
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v2, "HeartbeatManager"

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_34
    invoke-virtual {p0, v1}, Lcom/taobao/accs/net/f;->a(I)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_37} :catch_3a
    .catchall {:try_start_2 .. :try_end_37} :catchall_38

    goto :goto_44

    :catchall_38
    move-exception v0

    goto :goto_46

    :catch_3a
    move-exception v1

    :try_start_3b
    const-string v2, "HeartbeatManager"

    const-string v3, "set"

    .line 112
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_38

    .line 115
    :goto_44
    monitor-exit p0

    return-void

    :goto_46
    monitor-exit p0

    throw v0
.end method

.method protected abstract a(I)V
.end method

.method public b()I
    .registers 3

    .line 132
    iget-boolean v0, p0, Lcom/taobao/accs/net/f;->h:Z

    if-eqz v0, :cond_b

    .line 133
    sget-object v0, Lcom/taobao/accs/net/f;->c:[I

    iget v1, p0, Lcom/taobao/accs/net/f;->d:I

    aget v0, v0, v1

    goto :goto_d

    :cond_b
    const/16 v0, 0x10e

    .line 136
    :goto_d
    invoke-static {}, Lcom/taobao/accs/utl/OrangeAdapter;->isSmartHb()Z

    move-result v1

    iput-boolean v1, p0, Lcom/taobao/accs/net/f;->h:Z

    return v0
.end method

.method public c()V
    .registers 4

    const-wide/16 v0, -0x1

    .line 145
    iput-wide v0, p0, Lcom/taobao/accs/net/f;->e:J

    .line 146
    iget-boolean v0, p0, Lcom/taobao/accs/net/f;->f:Z

    if-eqz v0, :cond_12

    .line 147
    iget-object v0, p0, Lcom/taobao/accs/net/f;->g:[I

    iget v1, p0, Lcom/taobao/accs/net/f;->d:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 149
    :cond_12
    iget v0, p0, Lcom/taobao/accs/net/f;->d:I

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    iput v0, p0, Lcom/taobao/accs/net/f;->d:I

    .line 150
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "HeartbeatManager"

    const-string v2, "onNetworkTimeout"

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public d()V
    .registers 4

    const-wide/16 v0, -0x1

    .line 157
    iput-wide v0, p0, Lcom/taobao/accs/net/f;->e:J

    const/4 v0, 0x0

    .line 158
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HeartbeatManager"

    const-string v2, "onNetworkFail"

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .registers 8

    const/4 v0, 0x0

    .line 165
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "HeartbeatManager"

    const-string v3, "onHeartbeatSucc"

    invoke-static {v2, v3, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/taobao/accs/net/f;->e:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x6dd918

    cmp-long v1, v3, v5

    if-lez v1, :cond_3d

    .line 167
    iget v1, p0, Lcom/taobao/accs/net/f;->d:I

    sget-object v3, Lcom/taobao/accs/net/f;->c:[I

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_45

    iget-object v3, p0, Lcom/taobao/accs/net/f;->g:[I

    aget v1, v3, v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_45

    .line 168
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "upgrade"

    invoke-static {v2, v1, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget v0, p0, Lcom/taobao/accs/net/f;->d:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/taobao/accs/net/f;->d:I

    .line 170
    iput-boolean v4, p0, Lcom/taobao/accs/net/f;->f:Z

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/accs/net/f;->e:J

    goto :goto_45

    .line 174
    :cond_3d
    iput-boolean v0, p0, Lcom/taobao/accs/net/f;->f:Z

    .line 175
    iget-object v1, p0, Lcom/taobao/accs/net/f;->g:[I

    iget v2, p0, Lcom/taobao/accs/net/f;->d:I

    aput v0, v1, v2

    :cond_45
    :goto_45
    return-void
.end method

.method public f()V
    .registers 4

    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/taobao/accs/net/f;->d:I

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/taobao/accs/net/f;->e:J

    .line 182
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HeartbeatManager"

    const-string v2, "resetLevel"

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
