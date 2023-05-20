.class public Lcom/taobao/accs/utl/OrangeAdapter;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "accs"

.field private static final TAG:Ljava/lang/String; = "OrangeAdapter"

.field private static final TNET_LOG_KEY:Ljava/lang/String; = "tnet_log_off"

.field public static final mOrangeValid:Z = false


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    return-object p2
.end method

.method private static getConfigFromSP(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "EMAS_ACCS_SDK"

    .line 83
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 84
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    goto :goto_1e

    :catch_c
    move-exception p0

    const/4 v1, 0x2

    .line 86
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "key"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "OrangeAdapter"

    const-string v0, "getConfigFromSP fail:"

    invoke-static {p1, v0, p0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1e
    return p2
.end method

.method public static isBindService(Landroid/content/Context;)Z
    .registers 7

    const-string v0, "isBindService"

    const-string v1, "OrangeAdapter"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_6
    const-string v4, "bind_service_enable"

    .line 48
    invoke-static {p0, v4, v3}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfigFromSP(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_c} :catch_d

    goto :goto_14

    :catch_d
    move-exception p0

    .line 51
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, p0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move p0, v3

    :goto_14
    const/4 v4, 0x2

    .line 53
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "result"

    aput-object v5, v4, v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v1, v0, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public static isSmartHb()Z
    .registers 7

    const-string v0, "isSmartHb"

    const-string v1, "OrangeAdapter"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 36
    :try_start_6
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "smart_hb_enable"

    invoke-static {v4, v5, v3}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfigFromSP(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_10} :catch_11

    goto :goto_18

    :catch_11
    move-exception v4

    .line 39
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move v4, v3

    :goto_18
    const/4 v5, 0x2

    .line 41
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "result"

    aput-object v6, v5, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v3

    invoke-static {v1, v0, v5}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public static isTnetLogOff(Z)Z
    .registers 8

    const-string v0, "isTnetLogOff"

    const-string v1, "OrangeAdapter"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "tnet_log_off"

    const-string v5, "default"

    if-eqz p0, :cond_16

    :try_start_c
    const-string p0, "accs"

    .line 63
    invoke-static {p0, v4, v5}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    :catch_13
    move-exception p0

    move v4, v3

    goto :goto_3a

    :cond_16
    move-object p0, v5

    .line 66
    :goto_17
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 67
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v4, v3}, Lcom/taobao/accs/utl/OrangeAdapter;->getConfigFromSP(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_40

    .line 69
    :cond_26
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_2e} :catch_13

    .line 70
    :try_start_2e
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4, p0}, Lcom/taobao/accs/utl/OrangeAdapter;->saveConfigToSP(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_35} :catch_36

    goto :goto_40

    :catch_36
    move-exception v4

    move-object v6, v4

    move v4, p0

    move-object p0, v6

    .line 73
    :goto_3a
    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, p0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move p0, v4

    :goto_40
    const/4 v4, 0x2

    .line 75
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "result"

    aput-object v5, v4, v2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v1, v0, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public static saveConfigToSP(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 13

    const/4 v0, 0x3

    const-string v1, "value"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "key"

    const/4 v5, 0x4

    const-string v6, "OrangeAdapter"

    const/4 v7, 0x0

    if-nez p0, :cond_15

    :try_start_d
    const-string p0, "saveTLogOffToSP context null"

    .line 112
    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, p0, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_15
    const-string v8, "EMAS_ACCS_SDK"

    .line 115
    invoke-virtual {p0, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 117
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 118
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_26

    goto :goto_3a

    :catch_26
    move-exception p0

    .line 121
    new-array v8, v5, [Ljava/lang/Object;

    aput-object v4, v8, v7

    aput-object p1, v8, v3

    aput-object v1, v8, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v0

    const-string v9, "saveConfigToSP fail:"

    invoke-static {v6, v9, p0, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 123
    :goto_3a
    new-array p0, v5, [Ljava/lang/Object;

    aput-object v4, p0, v7

    aput-object p1, p0, v3

    aput-object v1, p0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "saveConfigToSP"

    invoke-static {v6, p1, p0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static saveConfigToSP(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 13

    const/4 v0, 0x3

    const-string v1, "value"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, "key"

    const/4 v5, 0x4

    const-string v6, "OrangeAdapter"

    const/4 v7, 0x0

    if-nez p0, :cond_15

    :try_start_d
    const-string p0, "saveTLogOffToSP context null"

    .line 94
    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, p0, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_15
    const-string v8, "EMAS_ACCS_SDK"

    .line 97
    invoke-virtual {p0, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 99
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 100
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_25} :catch_26

    goto :goto_3a

    :catch_26
    move-exception p0

    .line 104
    new-array v8, v5, [Ljava/lang/Object;

    aput-object v4, v8, v7

    aput-object p1, v8, v3

    aput-object v1, v8, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v0

    const-string v9, "saveConfigToSP fail:"

    invoke-static {v6, v9, p0, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 106
    :goto_3a
    new-array p0, v5, [Ljava/lang/Object;

    aput-object v4, p0, v7

    aput-object p1, p0, v3

    aput-object v1, p0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "saveConfigToSP"

    invoke-static {v6, p1, p0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
