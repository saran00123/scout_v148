.class Lcom/taobao/accs/net/l;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/data/Message;

.field final synthetic b:Lcom/taobao/accs/net/j;


# direct methods
.method constructor <init>(Lcom/taobao/accs/net/j;Lcom/taobao/accs/data/Message;)V
    .registers 3

    .line 139
    iput-object p1, p0, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iput-object p2, p0, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    move-object/from16 v1, p0

    const-string v2, "sendMessage"

    const-string v0, "type"

    const-string v3, "accs"

    const-string v4, "status"

    const-string v5, "sendMessage end"

    const-string v6, "dataId"

    .line 142
    iget-object v7, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    if-eqz v7, :cond_33d

    .line 143
    invoke-virtual {v7}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v7

    if-eqz v7, :cond_21

    .line 144
    iget-object v7, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v7}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onTakeFromQueue()V

    .line 147
    :cond_21
    sget-object v7, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    .line 148
    iget-object v8, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v8}, Lcom/taobao/accs/data/Message;->a()I

    move-result v8

    const/4 v9, 0x1

    .line 150
    :try_start_2a
    iget-object v10, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    invoke-static {v10}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v10

    const-string v11, "sendMessage start"

    invoke-interface {v10, v11}, Lcom/alibaba/sdk/android/logger/ILog;->debug(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v10

    iget-object v11, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v11, v11, Lcom/taobao/accs/data/Message;->q:Ljava/lang/String;

    invoke-interface {v10, v6, v11}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v10

    invoke-static {v8}, Lcom/taobao/accs/data/Message$c;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v0, v11}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v10

    invoke-interface {v10}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    if-ne v8, v9, :cond_24a

    .line 152
    iget-object v0, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v0, v0, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    if-nez v0, :cond_5e

    .line 153
    iget-object v0, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v0, v0, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    iget-object v10, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    sget-object v11, Lcom/taobao/accs/a;->MESSAGE_HOST_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v0, v10, v11}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    goto/16 :goto_262

    .line 155
    :cond_5e
    iget-object v0, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v0, v0, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v0}, Lcom/taobao/accs/AccsClientConfig;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lanet/channel/SessionCenter;->getInstance(Ljava/lang/String;)Lanet/channel/SessionCenter;

    move-result-object v0

    .line 156
    iget-object v10, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v11, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v11, v11, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v0, v11, v12}, Lcom/taobao/accs/net/j;->a(Lanet/channel/SessionCenter;Ljava/lang/String;Z)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_78} :catch_2cf
    .catchall {:try_start_2a .. :try_end_78} :catchall_2cd

    const/4 v10, 0x0

    .line 159
    :try_start_79
    iget-object v11, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v11, v11, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lanet/channel/entity/ConnType$TypeLevel;->SPDY:Lanet/channel/entity/ConnType$TypeLevel;

    const-wide/32 v14, 0xea60

    invoke-virtual {v0, v11, v13, v14, v15}, Lanet/channel/SessionCenter;->getThrowsException(Ljava/lang/String;Lanet/channel/entity/ConnType$TypeLevel;J)Lanet/channel/Session;

    move-result-object v10
    :try_end_8a
    .catch Ljava/security/InvalidParameterException; {:try_start_79 .. :try_end_8a} :catch_db
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_79 .. :try_end_8a} :catch_c7
    .catch Ljava/net/ConnectException; {:try_start_79 .. :try_end_8a} :catch_b3
    .catch Lanet/channel/NoAvailStrategyException; {:try_start_79 .. :try_end_8a} :catch_9f
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_8a} :catch_8b
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_8a} :catch_2cf
    .catchall {:try_start_79 .. :try_end_8a} :catchall_2cd

    goto :goto_ee

    :catch_8b
    move-exception v0

    .line 169
    :try_start_8c
    sget-object v7, Lcom/taobao/accs/a;->NETWORK_INAPP_EXCEPTION:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v7

    goto :goto_ee

    :catch_9f
    move-exception v0

    .line 167
    sget-object v7, Lcom/taobao/accs/a;->NETWORK_INAPP_NO_STRATEGY:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lanet/channel/NoAvailStrategyException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v7

    goto :goto_ee

    :catch_b3
    move-exception v0

    .line 165
    sget-object v7, Lcom/taobao/accs/a;->NETWORK_INAPP_CONNECT_FAIL:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/ConnectException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v7

    goto :goto_ee

    :catch_c7
    move-exception v0

    .line 163
    sget-object v7, Lcom/taobao/accs/a;->NETWORK_INAPP_TIMEOUT:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v7

    goto :goto_ee

    :catch_db
    move-exception v0

    .line 161
    sget-object v7, Lcom/taobao/accs/a;->NETWORK_INAPP_ARGS_INVALID:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/error/ErrorCode;->copy()Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/InvalidParameterException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->detail(Ljava/lang/String;)Lcom/alibaba/sdk/android/error/ErrorBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/error/ErrorBuilder;->build()Lcom/alibaba/sdk/android/error/ErrorCode;

    move-result-object v7

    :goto_ee
    if-eqz v10, :cond_205

    .line 173
    iget-object v0, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v11, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v11, v11, Lcom/taobao/accs/net/j;->d:Landroid/content/Context;

    iget-object v13, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget v13, v13, Lcom/taobao/accs/net/j;->c:I

    invoke-virtual {v0, v11, v13}, Lcom/taobao/accs/data/Message;->a(Landroid/content/Context;I)[B

    move-result-object v0

    .line 174
    iget-object v11, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    invoke-static {v11}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v11

    invoke-interface {v11, v2}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v11

    iget-object v13, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    .line 175
    invoke-virtual {v13}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v6, v13}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v11

    const-string v13, "command"

    iget-object v14, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v14, v14, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    .line 176
    invoke-interface {v11, v13, v14}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v11

    const-string v13, "host"

    iget-object v14, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v14, v14, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    .line 177
    invoke-interface {v11, v13, v14}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v11

    const-string v13, "len"

    if-nez v0, :cond_12b

    goto :goto_12c

    :cond_12b
    array-length v12, v0

    .line 178
    :goto_12c
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v13, v12}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v11

    const-string v12, "utdid"

    iget-object v13, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v13, v13, Lcom/taobao/accs/net/j;->j:Ljava/lang/String;

    .line 179
    invoke-interface {v11, v12, v13}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v11

    .line 180
    invoke-interface {v11}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 181
    iget-object v11, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/taobao/accs/data/Message;->a(J)V

    .line 182
    array-length v11, v0

    const/16 v12, 0x4000

    if-le v11, v12, :cond_168

    iget-object v11, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v11, v11, Lcom/taobao/accs/data/Message;->t:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0x66

    if-eq v11, v12, :cond_168

    .line 183
    iget-object v0, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v0, v0, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    iget-object v10, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    sget-object v11, Lcom/taobao/accs/a;->MESSAGE_TOO_LARGE:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v0, v10, v11}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    goto/16 :goto_261

    .line 185
    :cond_168
    iget-object v11, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v11, v11, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    iget-object v12, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v11, v12}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;)V

    .line 186
    iget-object v11, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-boolean v11, v11, Lcom/taobao/accs/data/Message;->c:Z

    if-eqz v11, :cond_183

    iget-object v11, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v11}, Lcom/taobao/accs/data/Message;->d()Lcom/taobao/accs/data/Message$a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/taobao/accs/data/Message$a;->a()I

    move-result v11

    neg-int v11, v11

    goto :goto_18d

    :cond_183
    iget-object v11, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v11}, Lcom/taobao/accs/data/Message;->d()Lcom/taobao/accs/data/Message$a;

    move-result-object v11

    invoke-virtual {v11}, Lcom/taobao/accs/data/Message$a;->a()I

    move-result v11

    .line 187
    :goto_18d
    iget-object v12, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-boolean v12, v12, Lcom/taobao/accs/data/Message;->c:Z

    if-eqz v12, :cond_1a0

    .line 188
    iget-object v12, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v12, v12, Lcom/taobao/accs/net/j;->l:Ljava/util/LinkedHashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v12, v13, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_1a0
    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object v12

    iget-object v13, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v13, v13, Lcom/taobao/accs/net/j;->m:Ljava/lang/String;

    const-string v14, "lmst"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v13, v14, v15}, Lcom/taobao/accs/AccsState;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v12, 0xc8

    .line 191
    invoke-virtual {v10, v11, v0, v12}, Lanet/channel/Session;->sendCustomFrame(I[BI)V

    .line 192
    iget-object v10, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v10}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v10

    if-eqz v10, :cond_1c7

    .line 193
    iget-object v10, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v10}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onSendData()V

    .line 195
    :cond_1c7
    iget-object v10, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v11, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v11}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v12, v12, Lcom/taobao/accs/net/j;->i:Lcom/taobao/accs/AccsClientConfig;

    invoke-virtual {v12}, Lcom/taobao/accs/AccsClientConfig;->isQuickReconnect()Z

    move-result v12

    iget-object v13, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget v13, v13, Lcom/taobao/accs/data/Message;->S:I

    int-to-long v13, v13

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/taobao/accs/net/j;->a(Ljava/lang/String;ZJ)V

    .line 196
    iget-object v10, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v10, v10, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    new-instance v15, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;

    iget-object v11, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v12, v11, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v13

    iget-object v11, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v11, v11, Lcom/taobao/accs/data/Message;->f:Ljava/net/URL;

    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v14

    array-length v0, v0

    move-object/from16 v17, v10

    int-to-long v9, v0

    move-object v11, v15

    move-object v0, v15

    move-wide v15, v9

    invoke-direct/range {v11 .. v16}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;-><init>(Ljava/lang/String;ZLjava/lang/String;J)V

    move-object/from16 v9, v17

    invoke-virtual {v9, v0}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/ut/monitor/TrafficsMonitor$a;)V

    goto :goto_261

    .line 199
    :cond_205
    invoke-virtual {v7}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v9, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v9}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v9
    :try_end_20f
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_20f} :catch_2cf
    .catchall {:try_start_8c .. :try_end_20f} :catchall_2cd

    const-string v10, "re"

    if-eq v0, v9, :cond_230

    .line 200
    :try_start_213
    iget-object v0, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    invoke-static {v0}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/error/ErrorCode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object v0

    iget-object v9, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v9, v9, Lcom/taobao/accs/net/j;->m:Ljava/lang/String;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/error/ErrorCode;->toShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/taobao/accs/AccsState;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_248

    .line 203
    :cond_230
    iget-object v0, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    invoke-static {v0}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    const-string v9, "sendMessage session is null"

    invoke-interface {v0, v9}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/taobao/accs/AccsState;->getInstance()Lcom/taobao/accs/AccsState;

    move-result-object v0

    iget-object v9, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v9, v9, Lcom/taobao/accs/net/j;->m:Ljava/lang/String;

    const-string v11, "send session null"

    invoke-virtual {v0, v9, v10, v11}, Lcom/taobao/accs/AccsState;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_248
    move v9, v12

    goto :goto_262

    .line 211
    :cond_24a
    iget-object v9, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    invoke-static {v9}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v9

    const-string v10, "sendMessage skip"

    invoke-interface {v9, v10}, Lcom/alibaba/sdk/android/logger/ILog;->warn(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v9

    invoke-static {v8}, Lcom/taobao/accs/data/Message$c;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v0, v10}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/logger/ILog;->done()V
    :try_end_261
    .catch Ljava/lang/Throwable; {:try_start_213 .. :try_end_261} :catch_2cf
    .catchall {:try_start_213 .. :try_end_261} :catchall_2cd

    :goto_261
    const/4 v9, 0x1

    :goto_262
    if-nez v9, :cond_2b4

    .line 219
    invoke-virtual {v7}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v0

    sget-object v2, Lcom/taobao/accs/a;->SUCCESS:Lcom/alibaba/sdk/android/error/ErrorCode;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/error/ErrorCode;->getCodeInt()I

    move-result v2

    if-ne v0, v2, :cond_272

    .line 220
    sget-object v7, Lcom/taobao/accs/a;->SESSION_NULL:Lcom/alibaba/sdk/android/error/ErrorCode;

    :cond_272
    const/4 v2, 0x1

    if-ne v8, v2, :cond_2ab

    .line 223
    iget-object v0, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->g()Z

    move-result v0

    if-nez v0, :cond_289

    iget-object v0, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v2, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    const/16 v8, 0x7d0

    invoke-virtual {v0, v2, v8}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/data/Message;I)Z

    move-result v0

    if-nez v0, :cond_292

    .line 224
    :cond_289
    iget-object v0, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v0, v0, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    iget-object v2, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0, v2, v7}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 226
    :cond_292
    iget-object v0, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget v0, v0, Lcom/taobao/accs/data/Message;->R:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2b4

    iget-object v0, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0}, Lcom/taobao/accs/data/Message;->e()Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    move-result-object v0

    if-eqz v0, :cond_2b4

    const-wide/16 v7, 0x0

    const-string v0, "resend"

    const-string v2, "total_accs"

    .line 227
    invoke-static {v3, v0, v2, v7, v8}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_2b4

    .line 230
    :cond_2ab
    iget-object v0, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget-object v0, v0, Lcom/taobao/accs/net/j;->e:Lcom/taobao/accs/data/d;

    iget-object v2, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v0, v2, v7}, Lcom/taobao/accs/data/d;->a(Lcom/taobao/accs/data/Message;Lcom/alibaba/sdk/android/error/ErrorCode;)V

    .line 233
    :cond_2b4
    :goto_2b4
    iget-object v0, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    invoke-static {v0}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    iget-object v2, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_314

    :catchall_2cd
    move-exception v0

    goto :goto_31c

    :catch_2cf
    move-exception v0

    :try_start_2d0
    const-string v7, "send_fail"

    .line 214
    iget-object v8, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    iget-object v8, v8, Lcom/taobao/accs/data/Message;->H:Ljava/lang/String;

    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    iget v11, v11, Lcom/taobao/accs/net/j;->c:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v7, v8, v9, v10}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitAlarmFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v3, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    invoke-static {v3}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/alibaba/sdk/android/logger/ILog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2fb
    .catchall {:try_start_2d0 .. :try_end_2fb} :catchall_2cd

    .line 233
    iget-object v0, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    invoke-static {v0}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    iget-object v2, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v2}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_314
    invoke-interface {v0, v4, v2}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    goto :goto_33d

    :goto_31c
    iget-object v2, v1, Lcom/taobao/accs/net/l;->b:Lcom/taobao/accs/net/j;

    invoke-static {v2}, Lcom/taobao/accs/net/j;->a(Lcom/taobao/accs/net/j;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/alibaba/sdk/android/logger/ILog;->info(Ljava/lang/String;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    iget-object v3, v1, Lcom/taobao/accs/net/l;->a:Lcom/taobao/accs/data/Message;

    invoke-virtual {v3}, Lcom/taobao/accs/data/Message;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/alibaba/sdk/android/logger/ILog;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/logger/ILog;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/sdk/android/logger/ILog;->done()V

    .line 234
    throw v0

    :cond_33d
    :goto_33d
    return-void
.end method
