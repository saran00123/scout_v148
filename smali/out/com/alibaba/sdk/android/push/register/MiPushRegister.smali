.class public Lcom/alibaba/sdk/android/push/register/MiPushRegister;
.super Ljava/lang/Object;
.source "MiPushRegister.java"


# static fields
.field private static final BLACKSHARK:Ljava/lang/String; = "blackshark"

.field private static final REDMI:Ljava/lang/String; = "redmi"

.field private static final TAG:Ljava/lang/String; = "MPS:MiPushRegistar"

.field private static final XIAOMI:Ljava/lang/String; = "xiaomi"

.field private static final brand:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_d

    :cond_b
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    :goto_d
    if-nez v0, :cond_12

    const-string v0, ""

    goto :goto_16

    .line 24
    :cond_12
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_16
    sput-object v0, Lcom/alibaba/sdk/android/push/register/MiPushRegister;->brand:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDevice()Z
    .registers 2

    .line 30
    sget-object v0, Lcom/alibaba/sdk/android/push/register/MiPushRegister;->brand:Ljava/lang/String;

    const-string/jumbo v1, "xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lcom/alibaba/sdk/android/push/register/MiPushRegister;->brand:Ljava/lang/String;

    const-string v1, "redmi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    sget-object v0, Lcom/alibaba/sdk/android/push/register/MiPushRegister;->brand:Ljava/lang/String;

    const-string v1, "blackshark"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_22

    :cond_20
    const/4 v0, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v0, 0x1

    :goto_23
    return v0
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/sdk/android/push/register/MiPushRegister;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7

    const-string v0, "MPS:MiPushRegistar"

    const/4 v1, 0x0

    .line 35
    :try_start_3
    sput-object p0, Lcom/alibaba/sdk/android/push/register/MiPushRegister;->mContext:Landroid/content/Context;

    .line 36
    invoke-static {p0}, Lcom/alibaba/sdk/android/push/utils/SysUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string p0, "register not in main process, return"

    .line 37
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 40
    :cond_13
    invoke-static {}, Lcom/alibaba/sdk/android/push/register/MiPushRegister;->checkDevice()Z

    move-result v2

    if-nez v2, :cond_24

    if-eqz p3, :cond_1c

    goto :goto_24

    :cond_1c
    const-string p0, "check device fail"

    .line 46
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_40

    :cond_24
    :goto_24
    const-string p3, "register begin"

    .line 41
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p3, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    new-instance p3, Lcom/alibaba/sdk/android/push/impl/XiaoMiMsgParseImpl;

    invoke-direct {p3}, Lcom/alibaba/sdk/android/push/impl/XiaoMiMsgParseImpl;-><init>()V

    invoke-static {p3}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->registerImpl(Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;)V

    .line 43
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_36} :catch_38

    const/4 p0, 0x1

    return p0

    :catch_38
    move-exception p0

    .line 49
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "register"

    invoke-static {v0, p2, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_40
    return v1
.end method

.method public static unregister(Landroid/content/Context;)V
    .registers 4

    .line 60
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unregisterPush(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_10

    :catch_4
    move-exception p0

    const/4 v0, 0x0

    .line 62
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MPS:MiPushRegistar"

    const-string/jumbo v2, "unregister"

    invoke-static {v1, v2, p0, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_10
    return-void
.end method
