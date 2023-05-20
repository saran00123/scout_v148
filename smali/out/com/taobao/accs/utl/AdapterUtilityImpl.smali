.class public Lcom/taobao/accs/utl/AdapterUtilityImpl;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static BACK_APP_KEY:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "AdapterUtilityImpl"

.field public static final channelService:Ljava/lang/String;

.field public static mAgooAppSecret:Ljava/lang/String; = null

.field private static mChecked:Z = false

.field private static mIsMainProc:Z = true

.field public static final msgService:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 259
    const-class v0, Lcom/taobao/accs/ChannelService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/utl/AdapterUtilityImpl;->channelService:Ljava/lang/String;

    .line 264
    const-class v0, Lcom/taobao/accs/data/MsgDistributeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/utl/AdapterUtilityImpl;->msgService:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final checkIsWritable(Ljava/lang/String;I)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 194
    :cond_4
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    .line 196
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .line 198
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_23

    int-to-long v4, p0

    mul-long/2addr v2, v4

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-lez v2, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    move v2, v0

    :goto_24
    if-nez v2, :cond_59

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "target : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " st.getAvailableBlocks()="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",st.getAvailableBlocks() * blockSize="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1

    int-to-long v4, p1

    int-to-long p0, p0

    mul-long/2addr v4, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "FileCheckUtils"

    .line 200
    invoke-static {v0, p0, p1}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_59
    return v2
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 171
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 54
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 55
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    .line 61
    :catch_b
    :cond_b
    invoke-static {p0}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getProcessNameByActivityThread(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    return-object v0

    .line 66
    :cond_16
    invoke-static {}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getProcessNameByPid()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    return-object v0

    .line 71
    :cond_21
    invoke-static {p0}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getProcessNameByAm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getProcessNameByActivityThread(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "android.app.ActivityThread"

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 121
    invoke-static {v2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "currentProcessName"

    .line 123
    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v2, 0x1

    .line 124
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 125
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_21

    goto :goto_2c

    :catch_21
    move-exception p0

    .line 127
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "AdapterUtilityImpl"

    const-string v3, "getProcessNameByActivityThread error: "

    invoke-static {v2, v3, p0, v1}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object p0, v0

    :goto_2c
    return-object p0
.end method

.method private static getProcessNameByAm(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, "activity"

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const-string v0, ""

    if-nez p0, :cond_d

    return-object v0

    .line 80
    :cond_d
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_14

    return-object v0

    .line 84
    :cond_14
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 85
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 86
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_1c

    .line 87
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_2e
    return-object v0
.end method

.method private static getProcessNameByPid()Ljava/lang/String;
    .registers 7

    .line 95
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x0

    .line 99
    :try_start_5
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/proc/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/cmdline"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 101
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_30} :catch_49
    .catchall {:try_start_5 .. :try_end_30} :catchall_47

    .line 102
    :try_start_30
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_38} :catch_39
    .catchall {:try_start_30 .. :try_end_38} :catchall_5b

    goto :goto_3c

    :catch_39
    move-exception v2

    goto :goto_4b

    :cond_3b
    move-object v0, v1

    :goto_3c
    if-eqz v0, :cond_5a

    .line 109
    :try_start_3e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_5a

    :catch_42
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a

    :catchall_47
    move-exception v0

    goto :goto_5f

    :catch_49
    move-exception v2

    move-object v0, v1

    :goto_4b
    :try_start_4b
    const-string v3, "AdapterUtilityImpl"

    const-string v4, "getProcessNameByPid error: "

    const/4 v5, 0x0

    .line 105
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_5b

    if-eqz v0, :cond_5a

    .line 109
    :try_start_57
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_42

    :cond_5a
    :goto_5a
    return-object v1

    :catchall_5b
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_5f
    if-eqz v1, :cond_69

    :try_start_61
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_69

    :catch_65
    move-exception v1

    .line 111
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 114
    :cond_69
    :goto_69
    throw v0
.end method

.method public static getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    .line 154
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 158
    array-length v1, p0

    if-lez v1, :cond_23

    const/4 v1, 0x0

    .line 159
    :goto_f
    array-length v2, p0

    if-ge v1, v2, :cond_23

    .line 160
    aget-object v2, p0, v1

    .line 161
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 167
    :catch_23
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUsableSpace()J
    .registers 6

    const-wide/16 v0, -0x1

    .line 142
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_9

    return-wide v0

    .line 146
    :cond_9
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_e

    return-wide v0

    :catch_e
    move-exception v2

    const/4 v3, 0x0

    .line 148
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "AdapterUtilityImpl"

    const-string v5, "getUsableSpace"

    invoke-static {v4, v5, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-wide v0
.end method

.method public static isMainProcess(Landroid/content/Context;)Z
    .registers 2

    .line 42
    sget-boolean v0, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mChecked:Z

    if-eqz v0, :cond_7

    .line 43
    sget-boolean p0, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mIsMainProc:Z

    return p0

    .line 45
    :cond_7
    invoke-static {p0}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mIsMainProc:Z

    const/4 p0, 0x1

    .line 47
    sput-boolean p0, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mChecked:Z

    .line 48
    sget-boolean p0, Lcom/taobao/accs/utl/AdapterUtilityImpl;->mIsMainProc:Z

    return p0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .registers 1

    if-eqz p0, :cond_19

    .line 178
    :try_start_2
    invoke-static {p0}, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/AdapterGlobalClientInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object p0

    .line 179
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 181
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_15

    return p0

    :catch_15
    move-exception p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static isNotificationEnabled(Landroid/content/Context;)Ljava/lang/String;
    .registers 13

    .line 217
    invoke-static {p0}, Lcom/taobao/accs/utl/Utils;->isTarget26(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "AdapterUtilityImpl"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "unknown"

    if-eqz v0, :cond_6c

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 220
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :try_start_1b
    const-string v7, "notification"

    .line 223
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 224
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getService"

    new-array v9, v4, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 225
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 226
    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v7, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 228
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "areNotificationsEnabledForPackage"

    new-array v9, v2, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 230
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 231
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v6, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v7, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_61} :catch_63

    goto/16 :goto_dc

    :catch_63
    move-exception p0

    .line 233
    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "Android O isNotificationEnabled"

    invoke-static {v1, v2, p0, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_dc

    :cond_6c
    :try_start_6c
    const-string v0, "appops"

    .line 237
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 240
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 242
    const-class v7, Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "checkOpNoThrow"

    const/4 v9, 0x3

    .line 243
    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v4

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v3

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v2

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-string v10, "OP_POST_NOTIFICATION"

    .line 245
    invoke-virtual {v7, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 246
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 247
    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v3

    aput-object p0, v9, v2

    invoke-virtual {v8, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_ce

    goto :goto_cf

    :cond_ce
    move v3, v4

    .line 248
    :goto_cf
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_d3} :catch_d4

    goto :goto_dc

    :catch_d4
    move-exception p0

    .line 250
    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "isNotificationEnabled"

    invoke-static {v1, v2, p0, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_dc
    return-object v5
.end method
