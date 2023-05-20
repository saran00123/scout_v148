.class public Lanet/channel/c/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lanetwork/channel/config/IRemoteConfig;


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 1

    :try_start_0
    const-string v0, "com.taobao.orange.OrangeConfig"

    .line 72
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    .line 73
    sput-boolean v0, Lanet/channel/c/a;->a:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_c

    :catch_9
    const/4 v0, 0x0

    .line 75
    sput-boolean v0, Lanet/channel/c/a;->a:Z

    :goto_c
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs getConfig([Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 113
    sget-boolean v0, Lanet/channel/c/a;->a:Z

    const-string v1, "awcn.OrangeConfigImpl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_10

    .line 114
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "no orange sdk"

    invoke-static {v1, v0, v3, p1}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 119
    :cond_10
    :try_start_10
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    aget-object v4, p1, v2

    const/4 v5, 0x1

    aget-object v5, p1, v5

    const/4 v6, 0x2

    aget-object p1, p1, v6

    invoke-virtual {v0, v4, v5, p1}, Lcom/taobao/orange/OrangeConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_21

    return-object p1

    :catch_21
    move-exception p1

    .line 121
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "get config failed!"

    invoke-static {v1, v2, v3, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-object v3
.end method

.method public onConfigUpdate(Ljava/lang/String;)V
    .registers 11

    const-string/jumbo v0, "true"

    const-string v1, "networkSdk"

    .line 128
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4ac

    const/4 v1, 0x2

    .line 129
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "namespace"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const/4 v5, 0x0

    const-string v6, "awcn.OrangeConfigImpl"

    const-string v7, "onConfigUpdate"

    invoke-static {v6, v7, v5, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x3

    .line 133
    :try_start_1f
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_empty_scheme_https_switch"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1016
    sget-object v7, Lanet/channel/strategy/c$a;->a:Lanet/channel/strategy/c;

    .line 134
    invoke-virtual {v7, v6}, Lanet/channel/strategy/c;->a(Z)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3a} :catch_3a

    .line 141
    :catch_3a
    :try_start_3a
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_spdy_enable_switch"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 142
    invoke-static {v6}, Lanetwork/channel/config/NetworkConfigCenter;->setSpdyEnabled(Z)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_53} :catch_53

    .line 149
    :catch_53
    :try_start_53
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_http_cache_switch"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 150
    invoke-static {v6}, Lanetwork/channel/config/NetworkConfigCenter;->setHttpCacheEnable(Z)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_6c} :catch_6c

    .line 156
    :catch_6c
    :try_start_6c
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_http_cache_flag"

    aput-object v7, v6, v4

    aput-object v5, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_87

    .line 158
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lanetwork/channel/config/NetworkConfigCenter;->setCacheFlag(J)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_87} :catch_87

    .line 165
    :catch_87
    :cond_87
    :try_start_87
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_https_sni_enable_switch"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 166
    invoke-static {v6}, Lanet/channel/AwcnConfig;->setHttpsSniEnable(Z)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_a0} :catch_a0

    .line 173
    :catch_a0
    :try_start_a0
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_accs_session_bg_switch"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 174
    invoke-static {v6}, Lanet/channel/AwcnConfig;->setAccsSessionCreateForbiddenInBg(Z)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_b9} :catch_b9

    .line 180
    :catch_b9
    :try_start_b9
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_request_statistic_sample_rate"

    aput-object v7, v6, v4

    const-string v7, "10000"

    aput-object v7, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 181
    invoke-static {v6}, Lanetwork/channel/config/NetworkConfigCenter;->setRequestStatisticSampleRate(I)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_d4} :catch_d4

    .line 187
    :catch_d4
    :try_start_d4
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_request_forbidden_bg"

    aput-object v7, v6, v4

    aput-object v5, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 188
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f3

    .line 189
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 190
    invoke-static {v6}, Lanetwork/channel/config/NetworkConfigCenter;->setBgRequestForbidden(Z)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_f3} :catch_f3

    .line 197
    :catch_f3
    :cond_f3
    :try_start_f3
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_url_white_list_bg"

    aput-object v7, v6, v4

    aput-object v5, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lanetwork/channel/config/NetworkConfigCenter;->updateWhiteListMap(Ljava/lang/String;)V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_104} :catch_104

    .line 203
    :catch_104
    :try_start_104
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_biz_white_list_bg"

    aput-object v7, v6, v4

    aput-object v5, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 204
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11b

    .line 205
    invoke-static {v6}, Lanetwork/channel/config/NetworkConfigCenter;->updateBizWhiteList(Ljava/lang/String;)V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_11b} :catch_11b

    .line 212
    :catch_11b
    :cond_11b
    :try_start_11b
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_amdc_preset_hosts"

    aput-object v7, v6, v4

    aput-object v5, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 213
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_132

    .line 214
    invoke-static {v6}, Lanetwork/channel/config/NetworkConfigCenter;->setAmdcPresetHosts(Ljava/lang/String;)V
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_132} :catch_132

    .line 221
    :catch_132
    :cond_132
    :try_start_132
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_horse_race_switch"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 222
    invoke-static {v6}, Lanet/channel/AwcnConfig;->setHorseRaceEnable(Z)V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_14b} :catch_14b

    .line 228
    :catch_14b
    :try_start_14b
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string/jumbo v7, "tnet_enable_header_cache"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 229
    invoke-static {v6}, Lanet/channel/AwcnConfig;->setTnetHeaderCacheEnable(Z)V
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_165} :catch_165

    .line 235
    :catch_165
    :try_start_165
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_http3_enable_switch"

    aput-object v7, v6, v4

    aput-object v5, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 236
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_19d

    .line 237
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 238
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "HTTP3_ENABLE"

    .line 239
    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    invoke-static {v6}, Lanet/channel/AwcnConfig;->setHttp3OrangeEnable(Z)V

    if-nez v6, :cond_19d

    .line 243
    invoke-static {v3}, Lanet/channel/AwcnConfig;->setHttp3Enable(Z)V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_19d} :catch_19d

    .line 251
    :catch_19d
    :cond_19d
    :try_start_19d
    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    const-string v7, "network_response_buffer_switch"

    aput-object v7, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p0, v6}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 252
    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->setResponseBufferEnable(Z)V
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1b6} :catch_1b6

    .line 258
    :catch_1b6
    :try_start_1b6
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_get_session_async_switch"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e6

    .line 260
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 261
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "SESSION_ASYNC_OPTIMIZE"

    .line 262
    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_1b6 .. :try_end_1e6} :catch_1e6

    .line 270
    :catch_1e6
    :cond_1e6
    :try_start_1e6
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_bg_forbid_request_threshold"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_208

    .line 272
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_205

    move v0, v3

    .line 276
    :cond_205
    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->setBgForbidRequestThreshold(I)V
    :try_end_208
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_208} :catch_208

    .line 283
    :catch_208
    :cond_208
    :try_start_208
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_normal_thread_pool_executor_size"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_227

    .line 285
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 286
    invoke-static {v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->setNormalExecutorPoolSize(I)V
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_208 .. :try_end_227} :catch_227

    .line 293
    :catch_227
    :cond_227
    :try_start_227
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_idle_session_close_switch"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_246

    .line 295
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 296
    invoke-static {v0}, Lanet/channel/AwcnConfig;->setIdleSessionCloseEnable(Z)V
    :try_end_246
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_246} :catch_246

    .line 303
    :catch_246
    :cond_246
    :try_start_246
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_monitor_requests"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_25d

    .line 305
    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->setMonitorRequestList(Ljava/lang/String;)V
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_246 .. :try_end_25d} :catch_25d

    .line 312
    :catch_25d
    :cond_25d
    :try_start_25d
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_session_preset_hosts"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_274

    .line 314
    invoke-static {v0}, Lanet/channel/AwcnConfig;->registerPresetSessions(Ljava/lang/String;)V
    :try_end_274
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_274} :catch_274

    .line 321
    :catch_274
    :cond_274
    :try_start_274
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_ipv6_blacklist_switch"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_293

    .line 323
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 324
    invoke-static {v0}, Lanet/channel/AwcnConfig;->setIpv6BlackListEnable(Z)V
    :try_end_293
    .catch Ljava/lang/Exception; {:try_start_274 .. :try_end_293} :catch_293

    .line 329
    :catch_293
    :cond_293
    :try_start_293
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_ipv6_blacklist_ttl"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2b2

    .line 331
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 332
    invoke-static {v6, v7}, Lanet/channel/AwcnConfig;->setIpv6BlackListTtl(J)V
    :try_end_2b2
    .catch Ljava/lang/Exception; {:try_start_293 .. :try_end_2b2} :catch_2b2

    .line 339
    :catch_2b2
    :cond_2b2
    :try_start_2b2
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_url_degrade_list"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2c9

    .line 341
    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->setDegradeRequestList(Ljava/lang/String;)V
    :try_end_2c9
    .catch Ljava/lang/Exception; {:try_start_2b2 .. :try_end_2c9} :catch_2c9

    .line 349
    :catch_2c9
    :cond_2c9
    :try_start_2c9
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_delay_retry_request_no_network"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2e8

    .line 351
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 352
    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->setRequestDelayRetryForNoNetwork(Z)V
    :try_end_2e8
    .catch Ljava/lang/Exception; {:try_start_2c9 .. :try_end_2e8} :catch_2e8

    .line 359
    :catch_2e8
    :cond_2e8
    :try_start_2e8
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_bind_service_optimize"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_318

    .line 361
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 362
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "SERVICE_OPTIMIZE"

    .line 363
    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 364
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_318
    .catch Ljava/lang/Exception; {:try_start_2e8 .. :try_end_318} :catch_318

    .line 371
    :catch_318
    :cond_318
    :try_start_318
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_forbid_next_launch_optimize"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_348

    .line 373
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 374
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "NEXT_LAUNCH_FORBID"

    .line 375
    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_348
    .catch Ljava/lang/Exception; {:try_start_318 .. :try_end_348} :catch_348

    .line 383
    :catch_348
    :cond_348
    :try_start_348
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_detect_enable_switch"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_367

    .line 385
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 386
    invoke-static {v0}, Lanet/channel/AwcnConfig;->setNetworkDetectEnable(Z)V
    :try_end_367
    .catch Ljava/lang/Exception; {:try_start_348 .. :try_end_367} :catch_367

    .line 393
    :catch_367
    :cond_367
    :try_start_367
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_ping6_enable_switch"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_386

    .line 395
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 396
    invoke-static {v0}, Lanet/channel/AwcnConfig;->setPing6Enable(Z)V
    :try_end_386
    .catch Ljava/lang/Exception; {:try_start_367 .. :try_end_386} :catch_386

    .line 403
    :catch_386
    :cond_386
    :try_start_386
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_ipv6_global_enable_swtich"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3a5

    .line 405
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 406
    invoke-static {v0}, Lanet/channel/AwcnConfig;->setIpv6Enable(Z)V
    :try_end_3a5
    .catch Ljava/lang/Exception; {:try_start_386 .. :try_end_3a5} :catch_3a5

    .line 413
    :catch_3a5
    :cond_3a5
    :try_start_3a5
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_xquic_cong_control"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3c4

    .line 415
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 416
    invoke-static {v0}, Lanet/channel/AwcnConfig;->setXquicCongControl(I)V
    :try_end_3c4
    .catch Ljava/lang/Exception; {:try_start_3a5 .. :try_end_3c4} :catch_3c4

    .line 422
    :catch_3c4
    :cond_3c4
    :try_start_3c4
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_http3_detect_valid_time"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3e3

    .line 424
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 425
    invoke-static {v6, v7}, Lanet/channel/e/a;->a(J)V
    :try_end_3e3
    .catch Ljava/lang/Exception; {:try_start_3c4 .. :try_end_3e3} :catch_3e3

    .line 432
    :catch_3e3
    :cond_3e3
    :try_start_3e3
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_ip_stack_detect_by_udp_connect_enable_switch"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_402

    .line 434
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 435
    invoke-static {v0}, Lanet/channel/AwcnConfig;->setIpStackDetectByUdpConnect(Z)V
    :try_end_402
    .catch Ljava/lang/Exception; {:try_start_3e3 .. :try_end_402} :catch_402

    .line 442
    :catch_402
    :cond_402
    :try_start_402
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_cookie_monitor"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_419

    .line 444
    invoke-static {v0}, Lanetwork/channel/cookie/CookieManager;->setTargetMonitorCookieName(Ljava/lang/String;)V
    :try_end_419
    .catch Ljava/lang/Exception; {:try_start_402 .. :try_end_419} :catch_419

    .line 451
    :catch_419
    :cond_419
    :try_start_419
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_cookie_header_redundant_fix"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_438

    .line 453
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 454
    invoke-static {v0}, Lanet/channel/AwcnConfig;->setCookieHeaderRedundantFix(Z)V
    :try_end_438
    .catch Ljava/lang/Exception; {:try_start_419 .. :try_end_438} :catch_438

    .line 461
    :catch_438
    :cond_438
    :try_start_438
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_channel_local_instance_enable_switch"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_457

    .line 463
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 464
    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->setChannelLocalInstanceEnable(Z)V
    :try_end_457
    .catch Ljava/lang/Exception; {:try_start_438 .. :try_end_457} :catch_457

    .line 471
    :catch_457
    :cond_457
    :try_start_457
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_allow_spdy_when_bind_service_failed"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_476

    .line 473
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 474
    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->setAllowSpdyWhenBindServiceFailed(Z)V
    :try_end_476
    .catch Ljava/lang/Exception; {:try_start_457 .. :try_end_476} :catch_476

    .line 481
    :catch_476
    :cond_476
    :try_start_476
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string v6, "network_send_connect_info_by_service"

    aput-object v6, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_495

    .line 483
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 484
    invoke-static {v0}, Lanet/channel/AwcnConfig;->setSendConnectInfoByService(Z)V
    :try_end_495
    .catch Ljava/lang/Exception; {:try_start_476 .. :try_end_495} :catch_495

    .line 491
    :catch_495
    :cond_495
    :try_start_495
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string p1, "network_http_dns_notify_white_list"

    aput-object p1, v0, v4

    aput-object v5, v0, v1

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 492
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4ac

    .line 493
    invoke-static {p1}, Lanet/channel/AwcnConfig;->setHttpDnsNotifyWhiteList(Ljava/lang/String;)V
    :try_end_4ac
    .catch Ljava/lang/Exception; {:try_start_495 .. :try_end_4ac} :catch_4ac

    :catch_4ac
    :cond_4ac
    return-void
.end method

.method public register()V
    .registers 8

    const-string v0, "networkSdk"

    .line 82
    sget-boolean v1, Lanet/channel/c/a;->a:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "awcn.OrangeConfigImpl"

    if-nez v1, :cond_12

    .line 83
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "no orange sdk"

    invoke-static {v4, v1, v3, v0}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 88
    :cond_12
    :try_start_12
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lanet/channel/c/b;

    invoke-direct {v6, p0}, Lanet/channel/c/b;-><init>(Lanet/channel/c/a;)V

    invoke-virtual {v1, v5, v6}, Lcom/taobao/orange/OrangeConfig;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    const-string v1, "network_empty_scheme_https_switch"

    const-string/jumbo v5, "true"

    .line 95
    filled-new-array {v0, v1, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lanet/channel/c/a;->getConfig([Ljava/lang/String;)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2e} :catch_2f

    goto :goto_37

    :catch_2f
    move-exception v0

    .line 97
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "register fail"

    invoke-static {v4, v2, v3, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_37
    return-void
.end method

.method public unRegister()V
    .registers 5

    .line 103
    sget-boolean v0, Lanet/channel/c/a;->a:Z

    if-nez v0, :cond_10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 104
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "awcn.OrangeConfigImpl"

    const-string v3, "no orange sdk"

    invoke-static {v2, v3, v0, v1}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 108
    :cond_10
    invoke-static {}, Lcom/taobao/orange/OrangeConfig;->getInstance()Lcom/taobao/orange/OrangeConfig;

    move-result-object v0

    const-string v1, "networkSdk"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/orange/OrangeConfig;->unregisterListener([Ljava/lang/String;)V

    return-void
.end method
