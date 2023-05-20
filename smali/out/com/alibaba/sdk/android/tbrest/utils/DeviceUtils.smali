.class public Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static final NETWORK_CLASS_2_G:Ljava/lang/String; = "2G"

.field private static final NETWORK_CLASS_3_G:Ljava/lang/String; = "3G"

.field private static final NETWORK_CLASS_4_G:Ljava/lang/String; = "4G"

.field private static final NETWORK_CLASS_5_G:Ljava/lang/String; = "5G"

.field private static final NETWORK_CLASS_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final NETWORK_CLASS_WIFI:Ljava/lang/String; = "Wi-Fi"

.field private static arrayOfString:[Ljava/lang/String;

.field private static carrier:Ljava/lang/String;

.field private static cpuName:Ljava/lang/String;

.field private static imei:Ljava/lang/String;

.field private static imsi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Unknown"

    .line 98
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->arrayOfString:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 261
    sput-object v0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->imsi:Ljava/lang/String;

    .line 263
    sput-object v0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->imei:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IntGetBytes(I)[B
    .registers 4

    const/4 v0, 0x4

    .line 294
    new-array v0, v0, [B

    .line 296
    rem-int/lit16 v1, p0, 0x100

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x8

    .line 298
    rem-int/lit16 v1, p0, 0x100

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x8

    .line 300
    rem-int/lit16 v1, p0, 0x100

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x8

    .line 302
    rem-int/lit16 p0, p0, 0x100

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 78
    :try_start_0
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->carrier:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 79
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->carrier:Ljava/lang/String;

    return-object p0

    :cond_7
    const-string v0, "phone"

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 83
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->carrier:Ljava/lang/String;

    .line 84
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->carrier:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-object p0

    :catch_18
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCountry()Ljava/lang/String;
    .registers 2

    .line 216
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "get country error "

    .line 218
    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCpuName()Ljava/lang/String;
    .registers 6

    .line 38
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->cpuName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "/proc/cpuinfo"

    const/4 v1, 0x0

    .line 46
    :try_start_8
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_53
    .catchall {:try_start_8 .. :try_end_d} :catchall_44

    .line 47
    :try_start_d
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_42
    .catchall {:try_start_d .. :try_end_12} :catchall_3d

    .line 48
    :cond_12
    :try_start_12
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_34

    const-string v4, "Hardware"

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, ":"

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sput-object v3, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->cpuName:Ljava/lang/String;

    .line 51
    sget-object v1, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->cpuName:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2d} :catch_55
    .catchall {:try_start_12 .. :try_end_2d} :catchall_3b

    .line 58
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 61
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_33

    :catch_33
    return-object v1

    .line 58
    :cond_34
    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 61
    :goto_37
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3a} :catch_5d

    goto :goto_5d

    :catchall_3b
    move-exception v1

    goto :goto_48

    :catchall_3d
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_48

    :catch_42
    move-object v0, v1

    goto :goto_55

    :catchall_44
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_48
    if-eqz v2, :cond_4d

    .line 58
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    :cond_4d
    if-eqz v0, :cond_52

    .line 61
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_52} :catch_52

    .line 64
    :catch_52
    :cond_52
    throw v1

    :catch_53
    move-object v0, v1

    move-object v2, v0

    :catch_55
    :goto_55
    if-eqz v2, :cond_5a

    .line 58
    :try_start_57
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5d

    :cond_5a
    if-eqz v0, :cond_5d

    goto :goto_37

    :catch_5d
    :cond_5d
    :goto_5d
    return-object v1
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 286
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->imei:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    .line 289
    :cond_5
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getUniqueID()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->imei:Ljava/lang/String;

    .line 290
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->imei:Ljava/lang/String;

    return-object p0
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 270
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->imsi:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    .line 273
    :cond_5
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 274
    invoke-static {}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getUniqueID()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->imsi:Ljava/lang/String;

    .line 276
    :cond_11
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->imsi:Ljava/lang/String;

    return-object p0
.end method

.method public static getLanguage()Ljava/lang/String;
    .registers 2

    .line 202
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "get country error "

    .line 204
    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getNetworkClass(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_13

    packed-switch p0, :pswitch_data_16

    const-string p0, "Unknown"

    return-object p0

    :pswitch_a
    const-string p0, "4G"

    return-object p0

    :pswitch_d
    const-string p0, "3G"

    return-object p0

    :pswitch_10
    const-string p0, "2G"

    return-object p0

    :cond_13
    const-string p0, "5G"

    return-object p0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public static getNetworkType(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    if-nez p0, :cond_5

    .line 107
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->arrayOfString:[Ljava/lang/String;

    return-object p0

    .line 110
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    .line 112
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->arrayOfString:[Ljava/lang/String;

    return-object p0

    :cond_18
    const-string v0, "connectivity"

    .line 114
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_25

    .line 116
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->arrayOfString:[Ljava/lang/String;

    return-object p0

    .line 118
    :cond_25
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 120
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->arrayOfString:[Ljava/lang/String;

    return-object p0

    .line 122
    :cond_2e
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 123
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_45

    .line 124
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->arrayOfString:[Ljava/lang/String;

    const-string v0, "Wi-Fi"

    aput-object v0, p0, v3

    .line 125
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->arrayOfString:[Ljava/lang/String;

    return-object p0

    .line 126
    :cond_45
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_77

    const-string v1, "phone"

    .line 127
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 129
    invoke-static {p0}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->isNRConnected(Landroid/telephony/TelephonyManager;)Z

    move-result p0

    if-eqz p0, :cond_60

    .line 130
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->arrayOfString:[Ljava/lang/String;

    const-string v1, "5G"

    aput-object v1, p0, v3

    goto :goto_6c

    .line 132
    :cond_60
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->arrayOfString:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->getNetworkClass(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v3

    .line 134
    :goto_6c
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->arrayOfString:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v2

    .line 135
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->arrayOfString:[Ljava/lang/String;
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_76} :catch_77

    return-object p0

    .line 140
    :catch_77
    :cond_77
    sget-object p0, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->arrayOfString:[Ljava/lang/String;

    return-object p0
.end method

.method public static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 230
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 231
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 232
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, p0, :cond_11

    xor-int/2addr v0, p0

    xor-int/2addr p0, v0

    xor-int/2addr v0, p0

    .line 238
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "*"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2e

    :catch_26
    move-exception p0

    const-string v0, "DeviceUtils getResolution: error"

    .line 240
    invoke-static {v0, p0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "Unknown"

    :goto_2e
    return-object p0
.end method

.method public static final getUniqueID()Ljava/lang/String;
    .registers 7

    .line 308
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 309
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    long-to-int v1, v1

    .line 310
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 311
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 312
    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->IntGetBytes(I)[B

    move-result-object v0

    .line 313
    invoke-static {v1}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->IntGetBytes(I)[B

    move-result-object v1

    .line 314
    invoke-static {v2}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->IntGetBytes(I)[B

    move-result-object v2

    .line 315
    invoke-static {v3}, Lcom/alibaba/sdk/android/tbrest/utils/DeviceUtils;->IntGetBytes(I)[B

    move-result-object v3

    const/16 v4, 0x10

    .line 316
    new-array v4, v4, [B

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 317
    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    invoke-static {v1, v6, v4, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    .line 319
    invoke-static {v2, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xc

    .line 320
    invoke-static {v3, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    invoke-static {v4}, Lcom/alibaba/sdk/android/tbrest/utils/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_49} :catch_4a

    return-object v0

    :catch_4a
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 253
    :try_start_0
    invoke-static {p0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    const-string v0, "get utdid error "

    .line 255
    invoke-static {v0, p0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static isNRConnected(Landroid/telephony/TelephonyManager;)Z
    .registers 8

    const/4 v0, 0x0

    .line 145
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getServiceState"

    new-array v3, v0, [Ljava/lang/Class;

    .line 146
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 151
    array-length v2, v1

    move v3, v0

    :goto_2d
    if-ge v3, v2, :cond_61

    aget-object v4, v1, v3

    .line 152
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getNrStatus"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getNrState"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    goto :goto_4d

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_4d
    :goto_4d
    const/4 v1, 0x1

    .line 154
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 155
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5d} :catch_61

    const/4 v2, 0x3

    if-ne p0, v2, :cond_61

    move v0, v1

    :catch_61
    :cond_61
    return v0
.end method
