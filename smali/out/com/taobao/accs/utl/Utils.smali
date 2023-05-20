.class public Lcom/taobao/accs/utl/Utils;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final SP_AGOO_BIND_FILE_NAME:Ljava/lang/String; = "EMAS_AGOO_BIND"

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static debugMode:I

.field private static final mLock:[B

.field private static targetSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    .line 21
    new-array v1, v0, [B

    sput-object v1, Lcom/taobao/accs/utl/Utils;->mLock:[B

    const/4 v1, -0x1

    .line 24
    sput v1, Lcom/taobao/accs/utl/Utils;->targetSdkVersion:I

    .line 37
    sput v0, Lcom/taobao/accs/utl/Utils;->debugMode:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearAgooBindCache(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "EMAS_AGOO_BIND"

    .line 138
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 139
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_12

    goto :goto_1c

    :catch_12
    move-exception p0

    .line 142
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Utils"

    const-string v2, "clearAgooBindCache"

    invoke-static {v1, v2, p0, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1c
    return-void
.end method

.method public static clearAllSharePreferences(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    .line 49
    :try_start_1
    sget-object v1, Lcom/taobao/accs/utl/Utils;->mLock:[B

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_19

    :try_start_4
    const-string v2, "EMAS_ACCS_SDK"

    .line 50
    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 51
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 53
    monitor-exit v1

    goto :goto_23

    :catchall_16
    move-exception p0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_16

    :try_start_18
    throw p0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_19} :catch_19

    :catch_19
    move-exception p0

    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Utils"

    const-string v2, "clearAllSharePreferences"

    invoke-static {v1, v2, p0, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_23
    return-void
.end method

.method public static getMetaInfo(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 5

    const/4 v0, 0x0

    .line 149
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 151
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_15

    move-object v0, p0

    goto :goto_20

    :catch_15
    move-exception p0

    const/4 v1, 0x0

    .line 154
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Utils"

    const-string v3, "getMetaInfo"

    invoke-static {v2, v3, p0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_20
    :goto_20
    return-object v0
.end method

.method public static getMode(Landroid/content/Context;)I
    .registers 1

    .line 44
    sget p0, Lcom/taobao/accs/utl/Utils;->debugMode:I

    return p0
.end method

.method public static getSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 118
    :try_start_2
    sget-object v2, Lcom/taobao/accs/utl/Utils;->mLock:[B

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_3a

    :try_start_5
    const-string v3, "EMAS_ACCS_SDK"

    .line 119
    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 120
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_37

    .line 121
    :try_start_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_34

    :try_start_10
    const-string p1, "Utils"

    const-string v0, "getSpValue"

    const/4 v2, 0x2

    .line 122
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "value"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {p1, v0, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_45

    const-string p1, "Utils"

    const-string v0, "getSpValue use default!"

    .line 125
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_30} :catch_32

    move-object p0, p2

    goto :goto_45

    :catch_32
    move-exception p1

    goto :goto_3c

    :catchall_34
    move-exception p1

    move-object v0, p0

    goto :goto_38

    :catchall_37
    move-exception p1

    .line 121
    :goto_38
    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw p1
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3a} :catch_3a

    :catch_3a
    move-exception p1

    move-object p0, v0

    .line 129
    :goto_3c
    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Utils"

    const-string v1, "getSpValue fail"

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_45
    :goto_45
    return-object p0
.end method

.method public static isMainProcess(Landroid/content/Context;)Z
    .registers 8

    const-string v0, "isMainProcess"

    const-string v1, "Utils"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 73
    :try_start_6
    invoke-static {}, Lcom/taobao/accs/b/a;->a()Lcom/taobao/accs/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/accs/b/a;->b()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "com.taobao.accs.utl.UtilityImpl"

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 75
    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 76
    new-array v6, v3, [Ljava/lang/Object;

    aput-object p0, v6, v2

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_2c} :catch_2d

    goto :goto_39

    :catch_2d
    move-exception p0

    .line 78
    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "killservice"

    invoke-static {v1, v5, p0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move p0, v3

    :goto_39
    const/4 v4, 0x2

    .line 81
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "result"

    aput-object v5, v4, v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v1, v0, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public static isTarget26(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 30
    :cond_4
    sget v1, Lcom/taobao/accs/utl/Utils;->targetSdkVersion:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput p0, Lcom/taobao/accs/utl/Utils;->targetSdkVersion:I

    .line 34
    :cond_11
    sget p0, Lcom/taobao/accs/utl/Utils;->targetSdkVersion:I

    const/16 v1, 0x1a

    if-lt p0, v1, :cond_1c

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public static killService(Landroid/content/Context;)V
    .registers 7

    const-string v0, "killService"

    const/4 v1, 0x0

    .line 61
    :try_start_3
    invoke-static {}, Lcom/taobao/accs/b/a;->a()Lcom/taobao/accs/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/accs/b/a;->b()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.taobao.accs.utl.UtilityImpl"

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    .line 63
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 64
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-virtual {v4, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_23} :catch_24

    goto :goto_2c

    :catch_24
    move-exception p0

    .line 66
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Utils"

    invoke-static {v2, v0, p0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2c
    return-void
.end method

.method public static setAgooAppkey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    .line 87
    :try_start_1
    invoke-static {}, Lcom/taobao/accs/b/a;->a()Lcom/taobao/accs/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/b/a;->b()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "org.android.agoo.common.Config"

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setAgooAppKey"

    const/4 v3, 0x2

    .line 89
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 90
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    aput-object p1, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2a} :catch_2b

    goto :goto_38

    :catch_2b
    move-exception p0

    .line 92
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "Utils"

    const-string v1, "setAgooAppkey"

    invoke-static {v0, v1, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_38
    return-void
.end method

.method public static setMode(Landroid/content/Context;I)V
    .registers 2

    .line 40
    sput p1, Lcom/taobao/accs/utl/Utils;->debugMode:I

    return-void
.end method

.method public static setSpValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 99
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "Utils"

    const-string p2, "setSpValue null"

    invoke-static {p1, p2, p0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 103
    :cond_11
    :try_start_11
    sget-object v0, Lcom/taobao/accs/utl/Utils;->mLock:[B

    monitor-enter v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_42

    :try_start_14
    const-string v2, "EMAS_ACCS_SDK"

    .line 104
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 105
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 106
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_3f

    :try_start_25
    const-string p0, "Utils"

    const-string v0, "setSpValue"

    const/4 v2, 0x4

    .line 109
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "key"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    const-string v3, "value"

    aput-object v3, v2, p1

    const/4 p1, 0x3

    aput-object p2, v2, p1

    invoke-static {p0, v0, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3e} :catch_42

    goto :goto_4c

    :catchall_3f
    move-exception p0

    .line 108
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    throw p0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_42} :catch_42

    :catch_42
    move-exception p0

    .line 111
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Utils"

    const-string v0, "setSpValue fail"

    invoke-static {p2, v0, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_4c
    return-void
.end method
