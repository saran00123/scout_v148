.class public Lcom/huawei/hms/framework/common/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/framework/common/NetworkUtil$NetType;
    }
.end annotation


# static fields
.field private static final INVALID_RSSI:I = -0x7f

.field private static final STR_NSA:Ljava/lang/String; = "5G_NSA"

.field private static final STR_SA:Ljava/lang/String; = "5G_SA"

.field private static final TAG:Ljava/lang/String; = "NetworkUtil"

.field private static final TYPE_WIFI_P2P:I = 0xd


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDnsServerIps(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 358
    invoke-static {p0}, Lcom/huawei/hms/framework/common/NetworkUtil;->getDnsServerIpsFromConnectionManager(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    .line 359
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDnsServerIpsFromConnectionManager(Landroid/content/Context;)[Ljava/lang/String;
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "getActiveNetworkInfo failed, exception:"

    .line 316
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 317
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v2, v4, :cond_9d

    if-eqz p0, :cond_9d

    const-string v2, "connectivity"

    .line 319
    invoke-static {p0, v2}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_9d

    .line 322
    :try_start_1a
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_9d

    .line 324
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    .line 325
    array-length v5, v4

    move v6, v3

    :goto_26
    if-ge v6, v5, :cond_9d

    aget-object v7, v4, v6

    if-nez v7, :cond_2d

    goto :goto_5f

    .line 330
    :cond_2d
    invoke-virtual {p0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v8

    if-eqz v8, :cond_5f

    .line 331
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-ne v8, v9, :cond_5f

    .line 332
    invoke-virtual {p0, v7}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v7

    if-eqz v7, :cond_5f

    .line 334
    invoke-virtual {v7}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetAddress;

    .line 335
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_5e
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_5e} :catch_80
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_5e} :catch_62

    goto :goto_4b

    :cond_5f
    :goto_5f
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    :catch_62
    move-exception p0

    .line 344
    sget-object v2, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9d

    :catch_80
    move-exception p0

    .line 342
    sget-object v2, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    :cond_9d
    :goto_9d
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a6

    new-array p0, v3, [Ljava/lang/String;

    goto :goto_b2

    :cond_a6
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_b2
    return-object p0
.end method

.method public static getHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 622
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 627
    :cond_9
    :try_start_9
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_e} :catch_13

    .line 632
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_13
    move-exception p0

    .line 629
    sget-object v0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static getHwNetworkType(Landroid/content/Context;)I
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "NewApi"
        }
    .end annotation

    const-string v0, "com.huawei.android.os.BuildEx$VERSION"

    .line 190
    invoke-static {v0}, Lcom/huawei/hms/framework/common/ReflectionUtils;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-eqz p0, :cond_3f

    const-string v0, "phone"

    .line 196
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_3f

    .line 201
    :try_start_16
    sget v0, Lcom/huawei/android/os/BuildEx$VERSION;->EMUI_SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_3f

    .line 202
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_3f

    .line 204
    invoke-static {p0}, Lcom/huawei/android/telephony/ServiceStateEx;->getConfigRadioTechnology(Landroid/telephony/ServiceState;)I

    move-result p0
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_26} :catch_38
    .catch Ljava/lang/NoSuchMethodError; {:try_start_16 .. :try_end_26} :catch_30
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_16 .. :try_end_26} :catch_28

    move v1, p0

    goto :goto_3f

    .line 213
    :catch_28
    sget-object p0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v0, "NoClassDefFoundError occur in method getHwNetworkType."

    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3f

    .line 211
    :catch_30
    sget-object p0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v0, "NoSuchMethodError occur in method getHwNetworkType."

    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3f

    .line 209
    :catch_38
    sget-object p0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v0, "requires permission maybe missing."

    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3f
    :goto_3f
    return v1
.end method

.method public static getMNC(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, "unknown"

    if-nez p0, :cond_5

    return-object v0

    .line 586
    :cond_5
    invoke-static {p0}, Lcom/huawei/hms/framework/common/NetworkUtil;->isSimReady(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    return-object v0

    :cond_c
    const/4 v1, 0x0

    const-string v2, "phone"

    .line 590
    invoke-static {p0, v2}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 591
    instance-of v2, p0, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1a

    .line 592
    move-object v1, p0

    check-cast v1, Landroid/telephony/TelephonyManager;

    :cond_1a
    if-nez v1, :cond_24

    .line 595
    sget-object p0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v1, "getSubscriptionOperatorType: other error!"

    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 598
    :cond_24
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    const-string v0, "46001"

    .line 600
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "46006"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_84

    const-string v0, "46009"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_84

    :cond_41
    const-string v0, "46000"

    .line 603
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    const-string v0, "46002"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    const-string v0, "46004"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_81

    const-string v0, "46007"

    .line 604
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    goto :goto_81

    :cond_62
    const-string v0, "46003"

    .line 607
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "46005"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "46011"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7b

    goto :goto_7e

    :cond_7b
    const-string p0, "other"

    goto :goto_86

    :cond_7e
    :goto_7e
    const-string p0, "China_Telecom"

    goto :goto_86

    :cond_81
    :goto_81
    const-string p0, "China_Mobile"

    goto :goto_86

    :cond_84
    :goto_84
    const-string p0, "China_Unicom"

    :goto_86
    return-object p0
.end method

.method public static getMobileRsrp(Landroid/content/Context;)I
    .registers 5

    .line 371
    invoke-static {p0}, Lcom/huawei/hms/framework/common/NetworkUtil;->getSignalStrength(Landroid/content/Context;)Landroid/telephony/SignalStrength;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 376
    :cond_8
    :try_start_8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_25

    .line 377
    const-class v1, Landroid/telephony/CellSignalStrengthLte;

    .line 378
    invoke-virtual {p0, v1}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 379
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_78

    .line 380
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result p0

    return p0

    .line 383
    :cond_25
    const-class v1, Landroid/telephony/SignalStrength;

    const-string v2, "getDbm"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 384
    new-instance v2, Lcom/huawei/hms/framework/common/NetworkUtil$1;

    invoke-direct {v2, v1}, Lcom/huawei/hms/framework/common/NetworkUtil$1;-><init>(Ljava/lang/reflect/Method;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 391
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_43
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_43} :catch_71
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_43} :catch_69
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_43} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_43} :catch_45

    move v0, p0

    goto :goto_78

    :catch_45
    move-exception p0

    .line 400
    sget-object v1, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDbm: throwable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_78

    .line 398
    :catch_61
    sget-object p0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v1, "getDbm: InvocationTargetException"

    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_78

    .line 396
    :catch_69
    sget-object p0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v1, "getDbm: cannot access"

    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_78

    .line 394
    :catch_71
    sget-object p0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v1, "getDbm: function not found"

    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_78
    :goto_78
    return v0
.end method

.method public static getNetWorkNSAorSA()Ljava/lang/String;
    .registers 5

    .line 143
    :try_start_0
    invoke-static {}, Landroid/telephony/HwTelephonyManager;->getDefault()Landroid/telephony/HwTelephonyManager;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/telephony/HwTelephonyManager;->getDefault4GSlotId()I

    move-result v1

    .line 145
    sget-object v2, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v0, v1}, Landroid/telephony/HwTelephonyManager;->isNsaState(I)Z

    move-result v0

    .line 147
    sget-object v1, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNsa "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_3d

    const-string v0, "5G_NSA"

    goto :goto_48

    :cond_3d
    const-string v0, "5G_SA"
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_48

    .line 154
    :catch_40
    sget-object v0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v1, "isNsaState error"

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_48
    return-object v0
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 71
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    const-string v0, "connectivity"

    .line 74
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_3e

    .line 77
    :try_start_13
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_17} :catch_18

    goto :goto_3e

    :catch_18
    move-exception p0

    .line 79
    sget-object v0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveNetworkInfo failed, exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3e
    :goto_3e
    return-object v1
.end method

.method public static getNetworkStatus(Landroid/content/Context;)Landroid/net/NetworkInfo$DetailedState;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 504
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-eqz p0, :cond_52

    const-string v1, "connectivity"

    .line 507
    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 508
    instance-of v1, p0, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_4b

    .line 510
    :try_start_e
    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 512
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    move-object v0, p0

    goto :goto_52

    .line 514
    :cond_1c
    sget-object p0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v1, "getNetworkStatus networkIsConnected netInfo is null!"

    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_23} :catch_24

    goto :goto_52

    :catch_24
    move-exception p0

    .line 517
    sget-object v1, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkStatus exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_52

    .line 520
    :cond_4b
    sget-object p0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v1, "getNetworkStatus ConnectivityManager is null!"

    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_52
    :goto_52
    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .registers 2

    if-eqz p0, :cond_b

    .line 174
    invoke-static {p0}, Lcom/huawei/hms/framework/common/NetworkUtil;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 175
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/NetworkUtil;->getNetworkType(Landroid/net/NetworkInfo;Landroid/content/Context;)I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static getNetworkType(Landroid/net/NetworkInfo;)I
    .registers 2

    const/4 v0, 0x0

    .line 311
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/NetworkUtil;->getNetworkType(Landroid/net/NetworkInfo;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getNetworkType(Landroid/net/NetworkInfo;Landroid/content/Context;)I
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_60

    .line 236
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 237
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v0, v2, :cond_61

    const/16 v3, 0xd

    if-ne v3, v2, :cond_15

    goto :goto_61

    :cond_15
    if-nez v2, :cond_5e

    .line 243
    invoke-static {p1}, Lcom/huawei/hms/framework/common/NetworkUtil;->getHwNetworkType(Landroid/content/Context;)I

    move-result p1

    .line 244
    sget-object v0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHwNetworkType return is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_37

    .line 246
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p1

    :cond_37
    const/16 p0, 0x14

    const/4 v0, 0x3

    const/4 v2, 0x2

    if-eq p1, p0, :cond_48

    packed-switch p1, :pswitch_data_62

    move p0, v1

    goto :goto_49

    :pswitch_42
    const/4 p0, 0x4

    goto :goto_49

    :pswitch_44
    move p0, v0

    goto :goto_49

    :pswitch_46
    move p0, v2

    goto :goto_49

    :cond_48
    const/4 p0, 0x5

    :goto_49
    if-nez p0, :cond_5c

    .line 279
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-lt v3, v4, :cond_5c

    const/16 p0, 0x10

    if-eq p1, p0, :cond_5a

    const/16 p0, 0x11

    if-eq p1, p0, :cond_61

    goto :goto_5e

    :cond_5a
    move v0, v2

    goto :goto_61

    :cond_5c
    move v0, p0

    goto :goto_61

    :cond_5e
    :goto_5e
    move v0, v1

    goto :goto_61

    :cond_60
    const/4 v0, -0x1

    :cond_61
    :goto_61
    return v0

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_46
        :pswitch_46
        :pswitch_44
        :pswitch_46
        :pswitch_44
        :pswitch_44
        :pswitch_46
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_46
        :pswitch_44
        :pswitch_42
        :pswitch_44
        :pswitch_44
    .end packed-switch
.end method

.method public static getPrimaryNetworkType(Landroid/content/Context;)I
    .registers 2

    .line 713
    invoke-static {p0}, Lcom/huawei/hms/framework/common/NetworkUtil;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 714
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/NetworkUtil;->getNetworkType(Landroid/net/NetworkInfo;Landroid/content/Context;)I

    move-result p0

    .line 715
    invoke-static {p0}, Lcom/huawei/hms/framework/common/NetworkUtil;->groupNetworkType(I)I

    move-result p0

    return p0
.end method

.method public static getPrimaryNetworkType(Landroid/net/NetworkInfo;)I
    .registers 1

    .line 722
    invoke-static {p0}, Lcom/huawei/hms/framework/common/NetworkUtil;->getNetworkType(Landroid/net/NetworkInfo;)I

    move-result p0

    .line 723
    invoke-static {p0}, Lcom/huawei/hms/framework/common/NetworkUtil;->groupNetworkType(I)I

    move-result p0

    return p0
.end method

.method private static getSignalStrength(Landroid/content/Context;)Landroid/telephony/SignalStrength;
    .registers 3

    if-eqz p0, :cond_21

    .line 406
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_21

    const-string v0, "phone"

    .line 407
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 408
    instance-of v0, p0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_21

    .line 409
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 412
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 413
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object p0

    return-object p0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWifiGatewayIp(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, " "

    if-eqz p0, :cond_6c

    .line 472
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "wifi"

    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 473
    instance-of v1, p0, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_6c

    .line 474
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 477
    :try_start_14
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object p0

    .line 478
    iget p0, p0, Landroid/net/DhcpInfo;->gateway:I

    const/4 v1, 0x4

    .line 480
    new-array v1, v1, [B

    const/4 v2, 0x0

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v1, v2

    .line 483
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    .line 484
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_43} :catch_46
    .catch Ljava/net/UnknownHostException; {:try_start_14 .. :try_end_43} :catch_44

    goto :goto_6c

    :catch_44
    move-exception p0

    goto :goto_47

    :catch_46
    move-exception p0

    .line 487
    :goto_47
    sget-object v1, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiGatewayIp error!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6c
    :goto_6c
    return-object v0
.end method

.method public static getWifiRssi(Landroid/content/Context;)I
    .registers 5

    const/16 v0, -0x7f

    if-eqz p0, :cond_4c

    .line 430
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "wifi"

    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 432
    instance-of v1, p0, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_4c

    .line 433
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 436
    :try_start_14
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_4c

    .line 438
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 439
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_24} :catch_26

    move v0, p0

    goto :goto_4c

    :catch_26
    move-exception p0

    .line 443
    sget-object v1, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiRssiLevel did not has permission!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 443
    invoke-static {v1, p0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4c
    :goto_4c
    return v0
.end method

.method public static getWifiRssiLevel(Landroid/content/Context;)I
    .registers 2

    .line 459
    invoke-static {p0}, Lcom/huawei/hms/framework/common/NetworkUtil;->getWifiRssi(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x5

    invoke-static {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result p0

    return p0
.end method

.method private static groupNetworkType(I)I
    .registers 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p0, v1, :cond_16

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_14

    const/4 v0, 0x5

    if-eq p0, v0, :cond_14

    const/4 v0, 0x0

    goto :goto_17

    :cond_14
    const/4 v0, 0x6

    goto :goto_17

    :cond_16
    move v0, v1

    :cond_17
    :goto_17
    return v0
.end method

.method public static isChangeToConnected(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)Z
    .registers 2

    if-eqz p0, :cond_8

    .line 702
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-nez p0, :cond_17

    :cond_8
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_17

    .line 703
    sget-object p0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    const-string p1, "Find network state changed to connected"

    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public static isConnectTypeChange(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;)Z
    .registers 3

    if-eqz p0, :cond_21

    .line 685
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 686
    invoke-static {p0}, Lcom/huawei/hms/framework/common/NetworkUtil;->getPrimaryNetworkType(Landroid/net/NetworkInfo;)I

    move-result p0

    invoke-static {p1}, Lcom/huawei/hms/framework/common/NetworkUtil;->getPrimaryNetworkType(Landroid/net/NetworkInfo;)I

    move-result p1

    if-eq p0, p1, :cond_21

    .line 687
    sget-object p0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    const-string p1, "Find activity network changed"

    invoke-static {p0, p1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public static isForeground(Landroid/content/Context;)Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 663
    invoke-static {p0}, Lcom/huawei/hms/framework/common/ActivityUtil;->isForeground(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 96
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 97
    invoke-static {p0}, Lcom/huawei/hms/framework/common/NetworkUtil;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 98
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_16

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :cond_17
    :goto_17
    return v1
.end method

.method public static isSimReady(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "phone"

    .line 567
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 568
    instance-of v0, p0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_d

    .line 569
    check-cast p0, Landroid/telephony/TelephonyManager;

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    if-eqz p0, :cond_19

    .line 571
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .registers 3

    .line 642
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1d

    const-string v0, "user"

    .line 643
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_1d

    .line 646
    :try_start_10
    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_14} :catch_15

    return p0

    :catch_15
    move-exception p0

    .line 648
    sget-object v0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v1, "dealType rethrowFromSystemServer:"

    invoke-static {v0, v1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    const/4 p0, 0x1

    return p0
.end method

.method public static netWork(Landroid/content/Context;)I
    .registers 4

    .line 112
    invoke-static {p0}, Lcom/huawei/hms/framework/common/NetworkUtil;->getNetworkType(Landroid/content/Context;)I

    move-result p0

    .line 113
    sget-object v0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newWorkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2b

    .line 117
    invoke-static {}, Lcom/huawei/hms/framework/common/NetworkUtil;->getNetWorkNSAorSA()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5G_NSA"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 p0, 0x7

    :cond_2a
    return p0

    :cond_2b
    const/4 v0, 0x5

    if-ne p0, v0, :cond_3c

    .line 125
    invoke-static {}, Lcom/huawei/hms/framework/common/NetworkUtil;->getNetWorkNSAorSA()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5G_SA"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 p0, 0x8

    :cond_3c
    return p0
.end method

.method public static networkStatus(Landroid/content/Context;)Landroid/net/NetworkInfo$DetailedState;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 674
    invoke-static {p0}, Lcom/huawei/hms/framework/common/NetworkUtil;->getNetworkStatus(Landroid/content/Context;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p0

    return-object p0
.end method

.method public static readDataSaverMode(Landroid/content/Context;)I
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_39

    .line 538
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_39

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 539
    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    const-string v1, "connectivity"

    .line 540
    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 541
    instance-of v1, p0, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_39

    .line 542
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 544
    :try_start_1d
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 545
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result p0

    move v0, p0

    goto :goto_39

    .line 547
    :cond_29
    sget-object p0, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v1, "ConnectType is not Mobile Network!"

    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_30} :catch_31

    goto :goto_39

    :catch_31
    move-exception p0

    .line 550
    sget-object v1, Lcom/huawei/hms/framework/common/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v2, "SystemServer error:"

    invoke-static {v1, v2, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    return v0
.end method
