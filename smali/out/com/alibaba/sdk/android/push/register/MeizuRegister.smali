.class public Lcom/alibaba/sdk/android/push/register/MeizuRegister;
.super Ljava/lang/Object;
.source "MeizuRegister.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MPS:MeizuPush"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDevice(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "ro.meizu.product.model"

    .line 72
    invoke-static {v1}, Lcom/alibaba/sdk/android/push/register/MeizuRegister;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "meizu"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "22c4185e"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_24

    :cond_22
    move v1, v0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v1, 0x1

    :goto_25
    if-nez v1, :cond_33

    const-string v1, "ro.product.other.brand"

    .line 75
    invoke-static {v1}, Lcom/alibaba/sdk/android/push/register/MeizuRegister;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unisoc"

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_33} :catch_34

    :cond_33
    return v1

    :catch_34
    move-exception v1

    .line 80
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "MPS:MeizuPush"

    const-string v3, "checkDevice"

    invoke-static {v2, v3, v1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 82
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/util/MzSystemUtils;->isBrandMeizu(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static getProp(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 91
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    .line 92
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
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

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "MeizuPush"

    const/4 v1, 0x0

    if-eqz p0, :cond_54

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 42
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 43
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_1c

    return v1

    .line 48
    :cond_1c
    invoke-static {p0}, Lcom/alibaba/sdk/android/push/utils/SysUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string p0, "not in main process, return"

    .line 49
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 53
    :cond_2a
    invoke-static {p0}, Lcom/alibaba/sdk/android/push/register/MeizuRegister;->checkDevice(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string p0, "not meizu return"

    .line 54
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_38
    const-string v2, "register meizu"

    .line 58
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    new-instance v2, Lcom/alibaba/sdk/android/push/impl/MeizuMsgParseImpl;

    invoke-direct {v2}, Lcom/alibaba/sdk/android/push/impl/MeizuMsgParseImpl;-><init>()V

    invoke-static {v2}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->registerImpl(Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;)V

    .line 60
    invoke-static {p0, p1, p2}, Lcom/meizu/cloud/pushsdk/PushManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_4a} :catch_4c

    const/4 p0, 0x1

    return p0

    :catch_4c
    move-exception p0

    .line 63
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "register"

    invoke-static {v0, p2, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_54
    return v1
.end method

.method public static registerAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 31
    invoke-static {}, Lcom/alibaba/sdk/android/push/utils/ThreadUtil;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/push/register/MeizuRegister$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/sdk/android/push/register/MeizuRegister$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
