.class public Lcom/taobao/agoo/a/b;
.super Lcom/taobao/accs/base/AccsAbstractDataListener;
.source "Taobao"


# static fields
.field public static b:Lcom/taobao/agoo/a/a;


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/agoo/ICallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Lcom/taobao/accs/base/AccsAbstractDataListener;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    .line 45
    sget-object v0, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    if-nez v0, :cond_19

    .line 46
    new-instance v0, Lcom/taobao/agoo/a/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taobao/agoo/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    :cond_19
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/taobao/agoo/IListAliasCallback;)V
    .registers 4

    const-string v0, "aliasTokenMap"

    .line 171
    invoke-static {p1, v0}, Lcom/taobao/accs/utl/JsonUtility;->getMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_d

    .line 173
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_d
    if-eqz p2, :cond_25

    .line 176
    instance-of v0, p2, Lcom/taobao/agoo/IListAliasCallbackInner;

    if-eqz v0, :cond_19

    .line 177
    check-cast p2, Lcom/taobao/agoo/IListAliasCallbackInner;

    invoke-virtual {p2, p1}, Lcom/taobao/agoo/IListAliasCallbackInner;->onSuccess(Ljava/util/Map;)V

    goto :goto_25

    .line 179
    :cond_19
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, v0}, Lcom/taobao/agoo/IListAliasCallback;->onSuccess(Ljava/util/List;)V

    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public onBind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .registers 4

    return-void
.end method

.method public onData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .registers 6

    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/lang/String;I[BLcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .registers 15

    const-string p5, "removeAlias"

    const-string v0, "setAlias"

    const-string v1, "RequestListener"

    const-string v2, "AgooDeviceCmd"

    const/4 v3, 0x0

    .line 54
    :try_start_9
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_168

    .line 55
    iget-object v4, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/agoo/ICallback;

    const/16 v5, 0xc8

    if-ne p3, v5, :cond_15d

    .line 57
    new-instance p3, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {p3, p4, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string p4, "RequestListener onResponse"

    const/4 v5, 0x6

    .line 58
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "dataId"

    aput-object v6, v5, v3

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    const-string v7, "listener"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v4, v5, v6

    const/4 v6, 0x4

    const-string v7, "json"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    aput-object p3, v5, v6

    invoke-static {v1, p4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "resultCode"

    const/4 v5, 0x0

    .line 60
    invoke-static {p4, p3, v5}, Lcom/taobao/accs/utl/JsonUtility;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v6, "cmd"

    .line 61
    invoke-static {p4, v6, v5}, Lcom/taobao/accs/utl/JsonUtility;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "success"

    .line 64
    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_72

    if-eqz v4, :cond_66

    .line 66
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "agoo server error"

    invoke-virtual {v4, p3, p4}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_66} :catch_176
    .catchall {:try_start_9 .. :try_end_66} :catchall_174

    .line 136
    :cond_66
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    .line 137
    iget-object p1, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    return-void

    :cond_72
    :try_start_72
    const-string p3, "register"

    .line 72
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c2

    const-string p3, "deviceId"

    .line 73
    invoke-static {p4, p3, v5}, Lcom/taobao/accs/utl/JsonUtility;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 74
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_90

    if-eqz v4, :cond_b6

    const-string p3, ""

    const-string p4, "agoo server error deviceid null"

    .line 76
    invoke-virtual {v4, p3, p4}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b6

    .line 79
    :cond_90
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p3}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    sget-object p4, Lcom/taobao/agoo/a/b;->b:Lcom/taobao/agoo/a/a;

    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/taobao/agoo/a/a;->a(Ljava/lang/String;)V

    .line 81
    instance-of p4, v4, Lcom/taobao/agoo/IRegister;

    if-eqz p4, :cond_b6

    const-string p4, "EMAS_Agoo_AppStore"

    .line 82
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/taobao/accs/utl/UtilityImpl;->saveUtdid(Ljava/lang/String;Landroid/content/Context;)V

    .line 83
    check-cast v4, Lcom/taobao/agoo/IRegister;

    invoke-virtual {v4, p3}, Lcom/taobao/agoo/IRegister;->onSuccess(Ljava/lang/String;)V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_b6} :catch_176
    .catchall {:try_start_72 .. :try_end_b6} :catchall_174

    .line 136
    :cond_b6
    :goto_b6
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 137
    iget-object p1, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c1
    return-void

    .line 89
    :cond_c2
    :try_start_c2
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_dd

    const-string p3, "pushAliasToken"

    .line 90
    invoke-static {p4, p3, v5}, Lcom/taobao/accs/utl/JsonUtility;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_dd

    .line 91
    iget-object v7, v4, Lcom/taobao/agoo/ICallback;->extra:Ljava/lang/String;

    if-eqz v7, :cond_dd

    .line 92
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v4, Lcom/taobao/agoo/ICallback;->extra:Ljava/lang/String;

    invoke-static {v7, v8, p3}, Lcom/taobao/agoo/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_dd
    invoke-virtual {p5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_f0

    .line 97
    iget-object p3, v4, Lcom/taobao/agoo/ICallback;->extra:Ljava/lang/String;

    if-eqz p3, :cond_f0

    .line 98
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object p3

    iget-object v7, v4, Lcom/taobao/agoo/ICallback;->extra:Ljava/lang/String;

    invoke-static {p3, v7, v5}, Lcom/taobao/agoo/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_f0
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_14c

    .line 104
    invoke-virtual {p5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_14c

    const-string p3, "unbindAllAliasByDeviceId"

    .line 105
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_14c

    const-string p3, "resetDeviceAndBindCurrentAlias"

    .line 106
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_14c

    const-string p3, "resetAliasAndBindCurrentDevice"

    .line 107
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_14c

    const-string p3, "resetDeviceAndAliasToSingleBind"

    .line 108
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11d

    goto :goto_14c

    :cond_11d
    const-string p3, "getAliasTokenMap"

    .line 115
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_136

    .line 116
    check-cast v4, Lcom/taobao/agoo/IListAliasCallback;

    invoke-direct {p0, p4, v4}, Lcom/taobao/agoo/a/b;->a(Lorg/json/JSONObject;Lcom/taobao/agoo/IListAliasCallback;)V
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_c2 .. :try_end_12a} :catch_176
    .catchall {:try_start_c2 .. :try_end_12a} :catchall_174

    .line 136
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_135

    .line 137
    iget-object p1, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_135
    return-void

    :cond_136
    :try_start_136
    const-string p3, "enablePush"

    .line 120
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_146

    const-string p3, "disablePush"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_168

    :cond_146
    if-eqz v4, :cond_168

    .line 122
    invoke-virtual {v4}, Lcom/taobao/agoo/ICallback;->onSuccess()V

    goto :goto_168

    :cond_14c
    :goto_14c
    if-eqz v4, :cond_151

    .line 110
    invoke-virtual {v4}, Lcom/taobao/agoo/ICallback;->onSuccess()V
    :try_end_151
    .catch Ljava/lang/Throwable; {:try_start_136 .. :try_end_151} :catch_176
    .catchall {:try_start_136 .. :try_end_151} :catchall_174

    .line 136
    :cond_151
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15c

    .line 137
    iget-object p1, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15c
    return-void

    :cond_15d
    if-eqz v4, :cond_168

    .line 128
    :try_start_15f
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "accs channel error"

    invoke-virtual {v4, p3, p4}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_168
    .catch Ljava/lang/Throwable; {:try_start_15f .. :try_end_168} :catch_176
    .catchall {:try_start_15f .. :try_end_168} :catchall_174

    .line 136
    :cond_168
    :goto_168
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_185

    .line 137
    :goto_16e
    iget-object p1, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_185

    :catchall_174
    move-exception p3

    goto :goto_186

    :catch_176
    move-exception p3

    :try_start_177
    const-string p4, "onResponse"

    .line 134
    new-array p5, v3, [Ljava/lang/Object;

    invoke-static {v1, p4, p3, p5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_17e
    .catchall {:try_start_177 .. :try_end_17e} :catchall_174

    .line 136
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_185

    goto :goto_16e

    :cond_185
    :goto_185
    return-void

    :goto_186
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_191

    .line 137
    iget-object p1, p0, Lcom/taobao/agoo/a/b;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_191
    throw p3
.end method

.method public onSendData(Ljava/lang/String;Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .registers 5

    return-void
.end method

.method public onUnbind(Ljava/lang/String;ILcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .registers 4

    return-void
.end method
