.class public Lcom/alibaba/sdk/android/push/utils/SysUtils;
.super Ljava/lang/Object;
.source "SysUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.alibaba.sdk.android.push.utils.SysUtils"

.field private static isMainProcess:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProcessName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "activity"

    .line 42
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 43
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 45
    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1f} :catch_31

    .line 49
    :try_start_1f
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_13

    .line 50
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_25} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_25} :catch_31

    goto :goto_13

    .line 53
    :catch_26
    :try_start_26
    sget-object v2, Lcom/alibaba/sdk/android/push/utils/SysUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "\u83b7\u53d6\u8fdb\u7a0b\u540d\u5931\u8d25"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_30} :catch_31

    goto :goto_13

    :catch_31
    move-exception p0

    .line 57
    sget-object p1, Lcom/alibaba/sdk/android/push/utils/SysUtils;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getProcessName:get process name failed."

    invoke-static {p1, v2, p0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3b
    return-object v0
.end method

.method public static isMainProcess(Landroid/content/Context;)Z
    .registers 6

    .line 17
    sget-object v0, Lcom/alibaba/sdk/android/push/utils/SysUtils;->isMainProcess:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 23
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 26
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 27
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {p0, v2}, Lcom/alibaba/sdk/android/push/utils/SysUtils;->getProcessName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_2e} :catch_3f

    if-eqz p0, :cond_32

    const/4 p0, 0x1

    goto :goto_33

    :cond_32
    move p0, v1

    .line 31
    :goto_33
    :try_start_33
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/push/utils/SysUtils;->isMainProcess:Ljava/lang/Boolean;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_39} :catch_3a

    goto :goto_4b

    :catch_3a
    move-exception v0

    move-object v4, v0

    move v0, p0

    move-object p0, v4

    goto :goto_41

    :catch_3f
    move-exception p0

    move v0, v1

    .line 33
    :goto_41
    sget-object v2, Lcom/alibaba/sdk/android/push/utils/SysUtils;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "isMainProcess:get process name failed."

    invoke-static {v2, v3, p0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move p0, v0

    :goto_4b
    return p0
.end method
