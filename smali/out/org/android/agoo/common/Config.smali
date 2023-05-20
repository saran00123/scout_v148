.class public Lorg/android/agoo/common/Config;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final AGOO_CLEAR_TIME:Ljava/lang/String; = "agoo_clear_time"

.field public static final AGOO_ENABLE_DAEMONSERVER:Ljava/lang/String; = "agoo_enable_daemonserver"

.field public static final AGOO_UNREPORT_TIMES:Ljava/lang/String; = "agoo_UnReport_times"

.field public static final KEY_DEVICE_TOKEN:Ljava/lang/String; = "deviceId"

.field public static final PREFERENCES:Ljava/lang/String; = "EMAS_Agoo_AppStore"

.field public static final PROPERTY_AGOO_SERVICE_MODE:Ljava/lang/String; = "agoo_service_mode"

.field public static final PROPERTY_APP_KEY:Ljava/lang/String; = "agoo_app_key"

.field public static final PROPERTY_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final PROPERTY_DEVICE_TOKEN:Ljava/lang/String; = "app_device_token"

.field public static final PROPERTY_PUSH_USER_TOKEN:Ljava/lang/String; = "app_push_user_token"

.field public static final PROPERTY_TT_ID:Ljava/lang/String; = "app_tt_id"

.field public static final TAG:Ljava/lang/String; = "Config"

.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


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

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, "getAgooAppKey"

    const-string v1, "Config"

    .line 70
    sget-object v2, Lorg/android/agoo/common/Config;->b:Ljava/lang/String;

    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    return-object v2

    :cond_d
    const/4 v3, 0x0

    :try_start_e
    const-string v4, "EMAS_Agoo_AppStore"

    const/4 v5, 0x4

    .line 2030
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v4, "agoo_app_key"

    .line 76
    sget-object v5, Lorg/android/agoo/common/Config;->b:Ljava/lang/String;

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_1d} :catch_1e

    goto :goto_24

    :catch_1e
    move-exception p0

    .line 78
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, p0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 80
    :goto_24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 81
    new-array p0, v3, [Ljava/lang/Object;

    const-string v4, "getAgooAppKey null!!"

    invoke-static {v1, v4, p0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    const/4 p0, 0x2

    .line 83
    new-array p0, p0, [Ljava/lang/Object;

    const-string v4, "appkey"

    aput-object v4, p0, v3

    const/4 v3, 0x1

    aput-object v2, p0, v3

    invoke-static {v1, v0, p0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 5

    const-string v0, "agoo_UnReport_times"

    :try_start_2
    const-string v1, "EMAS_Agoo_AppStore"

    const/4 v2, 0x4

    .line 3030
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 98
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    .line 99
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    add-int/2addr p0, p1

    .line 101
    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_19} :catch_19

    :catch_19
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .registers 5

    :try_start_0
    const-string v0, "EMAS_Agoo_AppStore"

    const/4 v1, 0x4

    .line 7030
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 148
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "agoo_clear_time"

    .line 149
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_13

    :catch_13
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x2

    .line 171
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "token"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string v2, "setDeviceToken"

    const-string v3, "Config"

    invoke-static {v3, v2, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    .line 175
    :cond_19
    sput-object p1, Lorg/android/agoo/common/Config;->c:Ljava/lang/String;

    :try_start_1b
    const-string v0, "EMAS_Agoo_AppStore"

    const/4 v4, 0x4

    .line 9030
    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 177
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "deviceId"

    .line 178
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_2e} :catch_2f

    goto :goto_35

    :catch_2f
    move-exception p0

    .line 181
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_35
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 88
    sget-object v0, Lorg/android/agoo/common/Config;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 89
    invoke-static {p0}, Lcom/taobao/accs/ACCSManager;->getDefaultConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 91
    :cond_d
    sget-object p0, Lorg/android/agoo/common/Config;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static b(Landroid/content/Context;J)Z
    .registers 11

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "EMAS_Agoo_AppStore"

    const/4 v2, 0x4

    .line 8030
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "agoo_clear_time"

    const-wide/16 v2, 0x0

    .line 158
    invoke-interface {p0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string p0, "isClearTime"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "now="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",now - lastTime="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v4, p1, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ",istrue="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    if-lez v4, :cond_38

    move v6, v5

    goto :goto_39

    :cond_38
    move v6, v0

    :goto_39
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_45} :catch_4c

    cmp-long p0, p1, v2

    if-eqz p0, :cond_4c

    if-lez v4, :cond_4c

    move v0, v5

    :catch_4c
    :cond_4c
    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "EMAS_Agoo_AppStore"

    const/4 v2, 0x4

    .line 4030
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "agoo_UnReport_times"

    .line 111
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_12

    if-lez p0, :cond_12

    const/4 p0, 0x1

    move v0, p0

    :catch_12
    :cond_12
    return v0
.end method

.method public static d(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    const-string v0, "EMAS_Agoo_AppStore"

    const/4 v1, 0x4

    .line 5030
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 125
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "agoo_UnReport_times"

    const/4 v1, 0x0

    .line 126
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method

.method public static e(Landroid/content/Context;)I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "EMAS_Agoo_AppStore"

    const/4 v2, 0x4

    .line 6030
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "agoo_UnReport_times"

    .line 136
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_e

    :catch_e
    return v0
.end method

.method public static getDeviceToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string v0, "getDeviceToken"

    const-string v1, "Config"

    .line 186
    sget-object v2, Lorg/android/agoo/common/Config;->c:Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_7
    const-string v4, "EMAS_Agoo_AppStore"

    const/4 v5, 0x4

    .line 10030
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v4, "deviceId"

    .line 189
    sget-object v5, Lorg/android/agoo/common/Config;->c:Ljava/lang/String;

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_16} :catch_17

    goto :goto_1d

    :catch_17
    move-exception p0

    .line 191
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, p0, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_1d
    const/4 p0, 0x2

    .line 193
    new-array p0, p0, [Ljava/lang/Object;

    const-string v4, "token"

    aput-object v4, p0, v3

    const/4 v3, 0x1

    aput-object v2, p0, v3

    invoke-static {v1, v0, p0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2
.end method

.method public static setAgooAppKey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const-string v0, "setAgooAppKey"

    const-string v1, "Config"

    const/4 v2, 0x0

    .line 53
    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string p0, "setAgooAppKey appkey null"

    .line 54
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 57
    :cond_13
    sput-object p1, Lorg/android/agoo/common/Config;->b:Ljava/lang/String;

    const-string v3, "EMAS_Agoo_AppStore"

    const/4 v4, 0x4

    .line 1030
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 59
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v3, "agoo_app_key"

    .line 60
    invoke-interface {p0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_28} :catch_29

    goto :goto_2f

    :catch_29
    move-exception p0

    .line 64
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, p0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2f
    const/4 p0, 0x2

    .line 66
    new-array p0, p0, [Ljava/lang/Object;

    const-string v3, "appkey"

    aput-object v3, p0, v2

    const/4 v2, 0x1

    aput-object p1, p0, v2

    invoke-static {v1, v0, p0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
