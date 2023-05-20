.class public Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister;
.super Ljava/lang/Object;
.source "HuaWeiRegister.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MPS:HuaWeiRegister"

.field public static isChannelRegister:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .registers 1

    .line 22
    invoke-static {p0}, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister;->getToken(Landroid/content/Context;)V

    return-void
.end method

.method private static checkDevice()Z
    .registers 4

    .line 99
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_19

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "honor"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    move v0, v2

    goto :goto_1a

    :cond_19
    :goto_19
    move v0, v1

    :goto_1a
    if-nez v0, :cond_38

    const-string v0, "ro.build.version.emui"

    .line 103
    invoke-static {v0}, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "hw_sc.build.platform.version"

    .line 104
    invoke-static {v3}, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_37

    :cond_35
    move v0, v2

    goto :goto_38

    :cond_37
    :goto_37
    move v0, v1

    :cond_38
    :goto_38
    return v0
.end method

.method private static getProp(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 114
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    .line 115
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 116
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_22

    :catch_20
    const-string p0, ""

    :goto_22
    return-object p0
.end method

.method private static getToken(Landroid/content/Context;)V
    .registers 3

    .line 59
    invoke-static {}, Lcom/alibaba/sdk/android/push/utils/ThreadUtil;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister$2;

    invoke-direct {v1, p0}, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister$2;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static register(Landroid/app/Application;)Z
    .registers 2

    const/4 v0, 0x0

    .line 28
    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister;->registerBundle(Landroid/app/Application;Z)Z

    move-result p0

    return p0
.end method

.method public static registerBundle(Landroid/app/Application;Z)Z
    .registers 7

    const-string v0, "MPS:HuaWeiRegister"

    const/4 v1, 0x0

    .line 33
    :try_start_3
    sput-boolean p1, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister;->isChannelRegister:Z

    .line 34
    sget-boolean p1, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister;->isChannelRegister:Z

    if-nez p1, :cond_17

    invoke-static {p0}, Lcom/alibaba/sdk/android/push/utils/SysUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_17

    const-string p0, "register not in main process, return"

    .line 35
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 38
    :cond_17
    invoke-static {}, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister;->checkDevice()Z

    move-result p1

    if-eqz p1, :cond_40

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt p1, v2, :cond_40

    .line 39
    new-instance p1, Lcom/alibaba/sdk/android/push/impl/HuaweiMsgParseImpl;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/push/impl/HuaweiMsgParseImpl;-><init>()V

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->registerImpl(Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;)V

    .line 40
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    new-instance v2, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister$1;

    invoke-direct {v2, p0}, Lcom/alibaba/sdk/android/push/huawei/HuaWeiRegister$1;-><init>(Landroid/app/Application;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0

    :cond_40
    const-string p0, "register checkDevice false"

    .line 50
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_47} :catch_48

    goto :goto_50

    :catch_48
    move-exception p0

    .line 53
    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "register"

    invoke-static {v0, v2, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_50
    return v1
.end method
