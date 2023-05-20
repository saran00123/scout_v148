.class Lanet/channel/strategy/m;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static a:Ljava/io/File; = null

.field private static volatile b:Z = false

.field private static c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Lanet/channel/strategy/n;

    invoke-direct {v0}, Lanet/channel/strategy/n;-><init>()V

    sput-object v0, Lanet/channel/strategy/m;->c:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .line 67
    sget-object v0, Lanet/channel/strategy/m;->a:Ljava/io/File;

    invoke-static {v0}, Lanet/channel/strategy/m;->a(Ljava/io/File;)Z

    .line 68
    new-instance v0, Ljava/io/File;

    sget-object v1, Lanet/channel/strategy/m;->a:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static declared-synchronized a(Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lanet/channel/statist/StrategyStatObject;",
            ")TT;"
        }
    .end annotation

    const-class v0, Lanet/channel/strategy/m;

    monitor-enter v0

    .line 140
    :try_start_3
    invoke-static {p0}, Lanet/channel/strategy/m;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lanet/channel/util/SerializeHelper;->restore(Ljava/io/File;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized a()V
    .registers 8

    const-class v0, Lanet/channel/strategy/m;

    monitor-enter v0

    :try_start_3
    const-string v1, "awcn.StrategySerializeHelper"

    const-string v2, "clear start."

    const/4 v3, 0x0

    .line 72
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    sget-object v1, Lanet/channel/strategy/m;->a:Ljava/io/File;

    if-nez v1, :cond_20

    const-string v1, "awcn.StrategySerializeHelper"

    const-string v2, "folder path not initialized, wait to clear"

    .line 74
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v5, v3}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 75
    sput-boolean v1, Lanet/channel/strategy/m;->b:Z
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_47

    .line 76
    monitor-exit v0

    return-void

    .line 79
    :cond_20
    :try_start_20
    sget-object v1, Lanet/channel/strategy/m;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_47

    if-nez v1, :cond_2a

    .line 81
    monitor-exit v0

    return-void

    .line 83
    :cond_2a
    :try_start_2a
    array-length v2, v1

    move v4, v3

    :goto_2c
    if-ge v4, v2, :cond_3c

    aget-object v6, v1, v4

    .line 84
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_39

    .line 85
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_3c
    const-string v1, "awcn.StrategySerializeHelper"

    const-string v2, "clear end."

    .line 88
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v5, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_2a .. :try_end_45} :catchall_47

    .line 89
    monitor-exit v0

    return-void

    :catchall_47
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Landroid/content/Context;)V
    .registers 10

    const-string v0, "awcn.StrategySerializeHelper"

    if-eqz p0, :cond_8e

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 32
    :try_start_6
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v4, "awcn_strategy"

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v3, Lanet/channel/strategy/m;->a:Ljava/io/File;

    .line 33
    sget-object p0, Lanet/channel/strategy/m;->a:Ljava/io/File;

    invoke-static {p0}, Lanet/channel/strategy/m;->a(Ljava/io/File;)Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_19} :catch_86

    const-string v3, "dir"

    const-string v4, "create directory failed!!!"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez p0, :cond_30

    .line 34
    :try_start_21
    new-array p0, v5, [Ljava/lang/Object;

    aput-object v3, p0, v2

    sget-object v7, Lanet/channel/strategy/m;->a:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p0, v6

    invoke-static {v0, v4, v1, p0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :cond_30
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isTargetProcess()Z

    move-result p0

    if-nez p0, :cond_65

    .line 38
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getCurrentProcess()Ljava/lang/String;

    move-result-object p0

    const/16 v7, 0x3a

    .line 39
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 40
    new-instance v7, Ljava/io/File;

    sget-object v8, Lanet/channel/strategy/m;->a:Ljava/io/File;

    invoke-direct {v7, v8, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v7, Lanet/channel/strategy/m;->a:Ljava/io/File;

    .line 41
    sget-object p0, Lanet/channel/strategy/m;->a:Ljava/io/File;

    invoke-static {p0}, Lanet/channel/strategy/m;->a(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_65

    .line 42
    new-array p0, v5, [Ljava/lang/Object;

    aput-object v3, p0, v2

    sget-object v3, Lanet/channel/strategy/m;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v6

    invoke-static {v0, v4, v1, p0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_65
    const-string p0, "StrateyFolder"

    .line 46
    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "path"

    aput-object v4, v3, v2

    sget-object v4, Lanet/channel/strategy/m;->a:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, p0, v1, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    sget-boolean p0, Lanet/channel/strategy/m;->b:Z

    if-eqz p0, :cond_82

    .line 48
    invoke-static {}, Lanet/channel/strategy/m;->a()V

    .line 49
    sput-boolean v2, Lanet/channel/strategy/m;->b:Z

    goto :goto_8e

    .line 51
    :cond_82
    invoke-static {}, Lanet/channel/strategy/m;->c()V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_85} :catch_86

    goto :goto_8e

    :catch_86
    move-exception p0

    .line 55
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "StrategySerializeHelper initialize failed!!!"

    invoke-static {v0, v3, v1, p0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_8e
    :goto_8e
    return-void
.end method

.method static declared-synchronized a(Ljava/io/Serializable;Ljava/lang/String;Lanet/channel/statist/StrategyStatObject;)V
    .registers 4

    const-class v0, Lanet/channel/strategy/m;

    monitor-enter v0

    .line 136
    :try_start_3
    invoke-static {p1}, Lanet/channel/strategy/m;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lanet/channel/util/SerializeHelper;->persist(Ljava/io/Serializable;Ljava/io/File;Lanet/channel/statist/StrategyStatObject;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 137
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/io/File;)Z
    .registers 2

    if-eqz p0, :cond_d

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    .line 61
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method static declared-synchronized b()[Ljava/io/File;
    .registers 3

    const-class v0, Lanet/channel/strategy/m;

    monitor-enter v0

    .line 99
    :try_start_3
    sget-object v1, Lanet/channel/strategy/m;->a:Ljava/io/File;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_19

    if-nez v1, :cond_a

    const/4 v1, 0x0

    .line 100
    monitor-exit v0

    return-object v1

    .line 102
    :cond_a
    :try_start_a
    sget-object v1, Lanet/channel/strategy/m;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 104
    sget-object v2, Lanet/channel/strategy/m;->c:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_19

    .line 106
    :cond_17
    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized c()V
    .registers 10

    const-class v0, Lanet/channel/strategy/m;

    monitor-enter v0

    .line 110
    :try_start_3
    invoke-static {}, Lanet/channel/strategy/m;->b()[Ljava/io/File;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_4b

    if-nez v1, :cond_b

    .line 112
    monitor-exit v0

    return-void

    :cond_b
    const/4 v2, 0x0

    move v3, v2

    .line 116
    :goto_d
    :try_start_d
    array-length v4, v1

    if-ge v2, v4, :cond_49

    .line 117
    aget-object v4, v1, v2

    .line 118
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_46

    .line 123
    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0xa4cb800

    cmp-long v5, v5, v7

    if-lez v5, :cond_2d

    .line 124
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_46

    .line 129
    :cond_2d
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WIFI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    add-int/lit8 v5, v3, 0x1

    int-to-long v6, v3

    const-wide/16 v8, 0xa

    cmp-long v3, v6, v8

    if-lez v3, :cond_45

    .line 130
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_45
    .catchall {:try_start_d .. :try_end_45} :catchall_4b

    :cond_45
    move v3, v5

    :cond_46
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 133
    :cond_49
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception v1

    monitor-exit v0

    throw v1
.end method
