.class public Lanet/channel/util/Utils;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.Utils"

.field public static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 6

    .line 118
    sget-object v0, Lanet/channel/util/Utils;->context:Landroid/content/Context;

    if-eqz v0, :cond_5

    return-object v0

    .line 121
    :cond_5
    const-class v0, Lanet/channel/util/Utils;

    monitor-enter v0

    .line 122
    :try_start_8
    sget-object v1, Lanet/channel/util/Utils;->context:Landroid/content/Context;

    if-eqz v1, :cond_10

    .line 123
    sget-object v1, Lanet/channel/util/Utils;->context:Landroid/content/Context;

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_4b

    return-object v1

    :cond_10
    const/4 v1, 0x0

    :try_start_11
    const-string v2, "android.app.ActivityThread"

    .line 126
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentActivityThread"

    .line 127
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getApplication"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sput-object v2, Lanet/channel/util/Utils;->context:Landroid/content/Context;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3b} :catch_3c
    .catchall {:try_start_11 .. :try_end_3b} :catchall_4b

    goto :goto_47

    :catch_3c
    move-exception v2

    :try_start_3d
    const-string v3, "awcn.Utils"

    const-string v4, "getAppContext"

    const/4 v5, 0x0

    .line 130
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v2, v1}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 132
    :goto_47
    sget-object v1, Lanet/channel/util/Utils;->context:Landroid/content/Context;

    monitor-exit v0

    return-object v1

    :catchall_4b
    move-exception v1

    .line 133
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 33
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMainProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 42
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_16} :catch_16

    :catch_16
    return-object v0
.end method

.method public static getNetworkTimeFactor()F
    .registers 3

    .line 186
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    .line 187
    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G4:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-eq v0, v1, :cond_10

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->WIFI:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_d

    goto :goto_10

    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_13

    :cond_10
    :goto_10
    const v0, 0x3f4ccccd    # 0.8f

    .line 191
    :goto_13
    invoke-static {}, Lanet/channel/monitor/b;->a()Lanet/channel/monitor/b;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/monitor/b;->b()I

    move-result v1

    sget-object v2, Lanet/channel/monitor/NetworkSpeed;->Fast:Lanet/channel/monitor/NetworkSpeed;

    invoke-virtual {v2}, Lanet/channel/monitor/NetworkSpeed;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_26

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    :cond_26
    return v0
.end method

.method public static getProcessName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7

    const-string v0, "rt"

    const-string v1, ""

    const/16 v2, -0x6c

    :try_start_6
    const-string v3, "activity"

    .line 53
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 54
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 55
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_33

    .line 56
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 57
    :cond_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 59
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_1e

    .line 60
    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_6c

    .line 65
    :cond_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BuildVersion="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lanet/channel/util/ErrorConstant;->formatMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v3

    new-instance v4, Lanet/channel/statist/ExceptionStatistic;

    invoke-direct {v4, v2, p0, v0}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_5a} :catch_5b

    goto :goto_6c

    :catch_5b
    move-exception p0

    .line 69
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v3

    new-instance v4, Lanet/channel/statist/ExceptionStatistic;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, v2, p0, v0}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 72
    :cond_6c
    :goto_6c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_76

    .line 73
    invoke-static {p1}, Lanet/channel/util/Utils;->getProcessNameNew(I)Ljava/lang/String;

    move-result-object v1

    :cond_76
    return-object v1
.end method

.method private static getProcessNameNew(I)Ljava/lang/String;
    .registers 11

    const-string v0, "  "

    const-string v1, "getProcessNameNew "

    const-string v2, "awcn.Utils"

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ps  |  grep  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 84
    :try_start_19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "sh"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 85
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_31} :catch_b3
    .catchall {:try_start_19 .. :try_end_31} :catchall_af

    .line 86
    :try_start_31
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3a} :catch_ac
    .catchall {:try_start_31 .. :try_end_3a} :catchall_a9

    .line 87
    :try_start_3a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  &\n"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    const-string v3, "exit\n"

    .line 89
    invoke-virtual {v8, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 93
    :cond_59
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_99

    const-string v6, "\\s+"

    .line 94
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 96
    array-length v6, v3

    const/16 v9, 0x9

    if-lt v6, v9, :cond_59

    const/4 v6, 0x1

    aget-object v9, v3, v6

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_59

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    const/16 p0, 0x8

    .line 97
    aget-object p0, v3, p0
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_8b} :catch_a7
    .catchall {:try_start_3a .. :try_end_8b} :catchall_d1

    .line 105
    :try_start_8b
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 108
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_91} :catch_92

    goto :goto_98

    :catch_92
    move-exception v0

    .line 111
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v5, v0, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_98
    return-object p0

    .line 105
    :cond_99
    :try_start_99
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 108
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9f} :catch_a0

    goto :goto_ce

    :catch_a0
    move-exception p0

    .line 111
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v5, p0, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_ce

    :catch_a7
    move-exception p0

    goto :goto_b6

    :catchall_a9
    move-exception p0

    move-object v8, v5

    goto :goto_d2

    :catch_ac
    move-exception p0

    move-object v8, v5

    goto :goto_b6

    :catchall_af
    move-exception p0

    move-object v7, v5

    move-object v8, v7

    goto :goto_d2

    :catch_b3
    move-exception p0

    move-object v7, v5

    move-object v8, v7

    .line 101
    :goto_b6
    :try_start_b6
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v5, p0, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_bb
    .catchall {:try_start_b6 .. :try_end_bb} :catchall_d1

    if-eqz v7, :cond_c3

    .line 105
    :try_start_bd
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    goto :goto_c3

    :catch_c1
    move-exception p0

    goto :goto_c9

    :cond_c3
    :goto_c3
    if-eqz v8, :cond_ce

    .line 108
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c8} :catch_c1

    goto :goto_ce

    .line 111
    :goto_c9
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v5, p0, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_ce
    :goto_ce
    const-string p0, ""

    return-object p0

    :catchall_d1
    move-exception p0

    :goto_d2
    if-eqz v7, :cond_da

    .line 105
    :try_start_d4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    goto :goto_da

    :catch_d8
    move-exception v0

    goto :goto_e0

    :cond_da
    :goto_da
    if-eqz v8, :cond_e5

    .line 108
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_df} :catch_d8

    goto :goto_e5

    .line 111
    :goto_e0
    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v5, v0, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 113
    :cond_e5
    :goto_e5
    throw p0
.end method

.method public static getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6

    .line 137
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 140
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_3b

    .line 141
    array-length v2, p0

    if-lez v2, :cond_3b

    move v2, v1

    .line 142
    :goto_10
    array-length v3, p0

    if-ge v2, v3, :cond_3b

    .line 143
    aget-object v3, p0, v2

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2d} :catch_30

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :catch_30
    move-exception p0

    const/4 v2, 0x0

    .line 148
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "awcn.Utils"

    const-string v4, "getStackMsg"

    invoke-static {v3, v4, v2, p0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 150
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs invokeStaticMethodThrowException(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2b

    if-nez p1, :cond_6

    goto :goto_2b

    .line 160
    :cond_6
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p2, :cond_12

    .line 163
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_18

    .line 165
    :cond_12
    new-array p2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    :goto_18
    if-eqz p1, :cond_2b

    const/4 p2, 0x1

    .line 168
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    if-eqz p3, :cond_25

    .line 170
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2b

    .line 172
    :cond_25
    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2b
    :goto_2b
    return-object v0
.end method
