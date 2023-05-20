.class public final Lcom/pilotlab/rollereye/Utils/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activityIsRunning(Landroid/content/Intent;)Z
    .registers 3

    .line 82
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 85
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v1, 0xa

    .line 87
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 89
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 p0, 0x1

    goto :goto_43

    :cond_42
    const/4 p0, 0x0

    :goto_43
    return p0
.end method

.method private static appendNumber(Ljava/lang/StringBuilder;II)V
    .registers 5

    .line 531
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 532
    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, p1, v1

    if-ge v0, v1, :cond_15

    const/16 v1, 0x30

    .line 533
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 535
    :cond_15
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static checkScratchNewUser(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 206
    invoke-static {p0, p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getScratchInit(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 207
    invoke-static {p0, p1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setScratchInit(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_9
    const-string p1, "Scratch.zip"

    .line 210
    invoke-static {}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getInstance()Lcom/pilotlab/rollereye/Controller/FilePathController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Controller/FilePathController;->getScratchPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 209
    invoke-static {p0, p1, v0, v1}, Lcom/pilotlab/rollereye/Utils/Unzip;->unZip(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p0

    .line 212
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static checkWifiState(Landroid/content/Context;)I
    .registers 3

    const-string v0, "wifi"

    .line 223
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 224
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-nez p0, :cond_11

    const/16 p0, -0x64

    return p0

    .line 229
    :cond_11
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p0

    const/16 v0, -0x3c

    if-lt p0, v0, :cond_1c

    if-gtz p0, :cond_1c

    goto :goto_25

    :cond_1c
    const/16 v1, -0x46

    if-lt p0, v1, :cond_23

    if-ge p0, v0, :cond_23

    goto :goto_25

    :cond_23
    const/16 v0, -0x50

    :goto_25
    return p0
.end method

.method public static compareDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 431
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 433
    :try_start_6
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 434
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 435
    invoke-virtual {p0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0
    :try_end_12
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_12} :catch_17

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return p2

    :catch_17
    move-exception p0

    .line 441
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    return p2
.end method

.method public static compareDateDistance(Ljava/util/Date;Ljava/util/Date;)J
    .registers 4

    .line 420
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x5265c00

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public static createGmtOffsetString(ZZZI)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_6

    const p0, 0x36ee80

    add-int/2addr p3, p0

    :cond_6
    const p0, 0xea60

    .line 511
    div-int/2addr p3, p0

    const/16 p0, 0x2b

    if-gez p3, :cond_11

    const/16 p0, 0x2d

    neg-int p3, p3

    .line 517
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p1, :cond_1f

    const-string p1, "GMT"

    .line 519
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_1f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    div-int/lit8 p0, p3, 0x3c

    const/4 p1, 0x2

    invoke-static {v0, p1, p0}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->appendNumber(Ljava/lang/StringBuilder;II)V

    if-eqz p2, :cond_2f

    const/16 p0, 0x3a

    .line 524
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    :cond_2f
    rem-int/lit8 p3, p3, 0x3c

    invoke-static {v0, p1, p3}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->appendNumber(Ljava/lang/StringBuilder;II)V

    .line 527
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static durationFormLong2Text(J)Ljava/lang/String;
    .registers 9

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0xe10

    div-long v4, p0, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr p0, v2

    const-wide/16 v2, 0x3c

    div-long v5, p0, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-long/2addr p0, v2

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const-string v2, "0"

    const/4 v3, 0x2

    if-ge p1, v3, :cond_51

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_51
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v3, :cond_66

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 270
    :cond_66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p1, v3, :cond_7b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_7b
    const-string p1, "00"

    .line 272
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v2, ":"

    if-nez p1, :cond_97

    .line 273
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    :cond_97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultRegion(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 106
    invoke-static {p0}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->getUserRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return-object v0

    .line 110
    :cond_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_33

    const-string v2, "country3to2.json"

    .line 113
    invoke-static {p0, v2}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getAssetJsonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 116
    :try_start_25
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception v2

    .line 119
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_33
    :goto_33
    const-string v2, "country.json"

    .line 123
    invoke-static {p0, v2}, Lcom/pilotlab/rollereye/Utils/FileUtil;->getAssetJsonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    :try_start_39
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "continent"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_48} :catch_49

    goto :goto_4d

    :catch_49
    move-exception v0

    .line 128
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 130
    :goto_4d
    invoke-static {p0, v1}, Lcom/pilotlab/rollereye/DataBase/SharedPreferenceData;->setUserRegion(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 451
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 453
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.category.LAUNCHER"

    .line 457
    invoke-virtual {v1, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000

    .line 462
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_24

    const/4 p0, 0x0

    .line 467
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 470
    :cond_24
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .registers 3

    const/4 v0, 0x0

    .line 406
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 408
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 410
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p0

    .line 413
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_14
    return v0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 386
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 390
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_15

    :catch_10
    move-exception p0

    .line 393
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_15
    return-object p0
.end method

.method public static getWIFISSID(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "\""

    const-string v2, ""

    const/16 v3, 0x1a

    if-le v0, v3, :cond_37

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1b

    if-le v0, v3, :cond_11

    goto :goto_37

    .line 167
    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v3, :cond_36

    const-string v0, "connectivity"

    .line 168
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 169
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 172
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 173
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_36
    return-object v2

    :cond_37
    :goto_37
    const-string v0, "wifi"

    .line 158
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 160
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 162
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v0, v3, :cond_4e

    .line 163
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 165
    :cond_4e
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWifiIp(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "wifi"

    .line 138
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 139
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result p0

    .line 141
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/JCType;->int2Ip(I)Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    const-string p0, ""

    return-object p0
.end method

.method public static isServiceExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "activity"

    .line 618
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const v0, 0x7fffffff

    .line 619
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    .line 620
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_17

    return v1

    :cond_17
    move v0, v1

    .line 623
    :goto_18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_35

    .line 624
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 625
    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 626
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_35
    return v1
.end method

.method public static final isUIThread(J)Z
    .registers 4

    .line 63
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static jsonArrayDeleteString(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 6

    .line 481
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 483
    :goto_6
    :try_start_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 484
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 486
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_19} :catch_1c

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :catch_1c
    move-exception p0

    .line 491
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_20
    return-object v0
.end method

.method public static readTxtFile(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    .line 671
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 672
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result p0

    .line 673
    new-array p0, p0, [B

    .line 674
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 675
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_15} :catch_23
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_15} :catch_1d

    .line 676
    :try_start_15
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_18} :catch_1b
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_28

    :catch_19
    move-exception p0

    goto :goto_1f

    :catch_1b
    move-exception p0

    goto :goto_25

    :catch_1d
    move-exception p0

    move-object v2, v0

    .line 680
    :goto_1f
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28

    :catch_23
    move-exception p0

    move-object v2, v0

    .line 678
    :goto_25
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_28
    return-object v2
.end method

.method public static readTxtFromAessetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 643
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception p0

    .line 645
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    .line 648
    :goto_12
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ""

    .line 651
    :goto_1e
    :try_start_1e
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    .line 654
    :cond_39
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 655
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception p0

    .line 657
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_44
    return-object v0
.end method

.method public static removeWiFiSSID(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-string v0, "wifi"

    .line 187
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 188
    invoke-static {p0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_11

    return-void

    .line 191
    :cond_11
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    .line 192
    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 193
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 195
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 196
    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 197
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_35
    return-void
.end method

.method public static repeatDateTranslate(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 8

    const-string v0, "0"

    const-string v1, "0"

    const-string v2, "0"

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "0"

    const-string v6, "0"

    .line 342
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 344
    :goto_14
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 346
    :try_start_1a
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_2a

    const-string v4, "1"

    .line 348
    aput-object v4, v0, v3
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception v3

    .line 351
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2d
    const-string p0, ""

    .line 356
    :goto_2f
    array-length v2, v0

    if-ge v1, v2, :cond_4b

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_4b
    return-object p0
.end method

.method public static repeatTranslate(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 5

    .line 369
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, ","

    .line 370
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 371
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_1f

    .line 372
    aget-object v2, p0, v1

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 373
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1f
    return-object v0
.end method

.method public static final runOnUIThread(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 4

    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->isUIThread(J)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 68
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_15

    .line 70
    :cond_12
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_15
    return-void
.end method

.method public static setHuaweiBadgeNum(Landroid/content/Context;I)V
    .registers 5

    .line 586
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "package"

    .line 587
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "class"

    .line 588
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "badgenumber"

    .line 589
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 590
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "content://com.huawei.android.launcher.settings/badge/"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "change_badge"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p0

    .line 592
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_31
    return-void
.end method

.method public static setSamsungNum(Landroid/content/Context;I)V
    .registers 5

    .line 599
    :try_start_0
    invoke-static {p0}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 600
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "badge_count"

    .line 601
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "badge_count_package_name"

    .line 602
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "badge_count_class_name"

    .line 603
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_26

    :catch_22
    move-exception p0

    .line 606
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_26
    return-void
.end method

.method public static sizeFromLong2Text(J)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gez v2, :cond_18

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_76

    :cond_18
    const-wide/32 v2, 0x40000000

    cmp-long v2, p0, v2

    if-ltz v2, :cond_49

    long-to-float p0, p0

    const/high16 p1, 0x44800000    # 1024.0f

    div-float/2addr p0, p1

    div-float/2addr p0, p1

    div-float/2addr p0, p1

    .line 250
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object p1

    const/4 v0, 0x2

    .line 251
    invoke-virtual {p1, v0}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 252
    sget-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {p1, v0}, Ljava/text/NumberFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    float-to-double v0, p0

    .line 253
    invoke-virtual {p1, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "G"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_76

    :cond_49
    const-wide/32 v2, 0x100000

    cmp-long v2, p0, v2

    if-ltz v2, :cond_64

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v0

    div-long/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "M"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_76

    .line 258
    :cond_64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "K"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_76
    return-object p0
.end method

.method public static symTimeAndZone(Lcom/pilotlab/rollereye/P2P/P2PClient;ZLjava/lang/String;)V
    .registers 6

    .line 545
    new-instance v0, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;

    invoke-direct {v0}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;-><init>()V

    if-eqz p2, :cond_c

    .line 548
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p2

    goto :goto_10

    .line 549
    :cond_c
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p2

    .line 550
    :goto_10
    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->setArea(Ljava/lang/String;)V

    .line 551
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->setTime(J)V

    .line 552
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p2

    const/4 v2, 0x1

    invoke-static {v1, v2, v2, p2}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->createGmtOffsetString(ZZZI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->setGMT(Ljava/lang/String;)V

    .line 553
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p2

    invoke-virtual {p2}, Lcom/pilotlab/rollereye/Global;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/pilotlab/rollereye/Utils/CommonUtils;->getDefaultRegion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "US"

    if-nez p2, :cond_4c

    .line 555
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->setContinent(Ljava/lang/String;)V

    goto :goto_69

    :cond_4c
    const-string v2, "AS"

    .line 556
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    const-string p2, "ASIA"

    .line 557
    invoke-virtual {v0, p2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->setContinent(Ljava/lang/String;)V

    goto :goto_69

    :cond_5a
    const-string v2, "EU"

    .line 558
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_66

    .line 559
    invoke-virtual {v0, v2}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->setContinent(Ljava/lang/String;)V

    goto :goto_69

    .line 560
    :cond_66
    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->setContinent(Ljava/lang/String;)V

    :goto_69
    if-eqz p1, :cond_70

    const/4 p1, 0x2

    .line 562
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->setType(I)V

    goto :goto_74

    :cond_70
    const/4 p1, 0x0

    .line 563
    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/Bean/ParamBean$BodyBean$TimeZoneBean;->setType(I)V

    .line 564
    :goto_74
    sget-object p1, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->SYSTEM_SET_PARAM:Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;

    .line 565
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 567
    :try_start_7b
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "timeZone"

    .line 568
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_97
    .catch Lorg/json/JSONException; {:try_start_7b .. :try_end_97} :catch_98

    goto :goto_9c

    :catch_98
    move-exception v0

    .line 571
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_9c
    if-eqz p0, :cond_b3

    .line 573
    invoke-virtual {p0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 574
    new-instance v0, Lcom/pilotlab/rollereye/Bean/IoMessage;

    sget v1, Lcom/pilotlab/rollereye/Bean/IoMessage;->P2P_TYPE:I

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/pilotlab/rollereye/Bean/IoMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/pilotlab/rollereye/P2P/P2PClient;->sendIOMessage(Lcom/pilotlab/rollereye/Bean/IoMessage;)V

    goto :goto_cc

    .line 575
    :cond_b3
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Global;->getSocketServices()Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object p0

    if-eqz p0, :cond_cc

    .line 576
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p0

    invoke-virtual {p0}, Lcom/pilotlab/rollereye/Global;->getSocketServices()Lcom/pilotlab/rollereye/Services/SocketServices;

    move-result-object p0

    invoke-virtual {p1, p2}, Lcom/pilotlab/rollereye/Api/RollerEyeApi$Command;->to_JSONstring(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/Services/SocketServices;->send(Ljava/lang/String;)V

    :cond_cc
    :goto_cc
    return-void
.end method

.method public static timeCompare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .line 292
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 294
    :try_start_8
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 295
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1f

    const/4 p0, 0x1

    :goto_1d
    move v1, p0

    goto :goto_3f

    .line 300
    :cond_1f
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2d

    const/4 p0, 0x2

    goto :goto_1d

    .line 303
    :cond_2d
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_35} :catch_3b

    cmp-long p0, v2, p0

    if-lez p0, :cond_3f

    const/4 p0, 0x3

    goto :goto_1d

    :catch_3b
    move-exception p0

    .line 308
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    :goto_3f
    return v1
.end method

.method public static timeTranslate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 323
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 325
    :try_start_5
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 326
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception p0

    .line 329
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "00:00"

    :goto_19
    return-object p0
.end method
