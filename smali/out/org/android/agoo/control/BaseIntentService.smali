.class public abstract Lorg/android/agoo/control/BaseIntentService;
.super Landroid/app/Service;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseIntentService"

.field private static final msgStatus:Ljava/lang/String; = "4"


# instance fields
.field private agooFactory:Lorg/android/agoo/control/AgooFactory;

.field private mContext:Landroid/content/Context;

.field private messageService:Lorg/android/agoo/message/MessageService;

.field private messenger:Landroid/os/Messenger;

.field private notifyManager:Lorg/android/agoo/control/NotifManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lorg/android/agoo/control/h;

    invoke-direct {v1, p0}, Lorg/android/agoo/control/h;-><init>(Lorg/android/agoo/control/BaseIntentService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->messenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Lorg/android/agoo/control/BaseIntentService;)Lorg/android/agoo/control/AgooFactory;
    .registers 1

    .line 41
    iget-object p0, p0, Lorg/android/agoo/control/BaseIntentService;->agooFactory:Lorg/android/agoo/control/AgooFactory;

    return-object p0
.end method

.method static synthetic access$002(Lorg/android/agoo/control/BaseIntentService;Lorg/android/agoo/control/AgooFactory;)Lorg/android/agoo/control/AgooFactory;
    .registers 2

    .line 41
    iput-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->agooFactory:Lorg/android/agoo/control/AgooFactory;

    return-object p1
.end method

.method static synthetic access$102(Lorg/android/agoo/control/BaseIntentService;Lorg/android/agoo/control/NotifManager;)Lorg/android/agoo/control/NotifManager;
    .registers 2

    .line 41
    iput-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->notifyManager:Lorg/android/agoo/control/NotifManager;

    return-object p1
.end method

.method static synthetic access$202(Lorg/android/agoo/control/BaseIntentService;Lorg/android/agoo/message/MessageService;)Lorg/android/agoo/message/MessageService;
    .registers 2

    .line 41
    iput-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;

    return-object p1
.end method

.method private final getTrace(Landroid/content/Context;J)Ljava/lang/String;
    .registers 7

    const/4 p1, 0x0

    .line 416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "unknow"

    if-eqz v0, :cond_b

    move-object v0, v1

    goto :goto_c

    :cond_b
    move-object v0, p1

    .line 419
    :goto_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object p1, v1

    .line 422
    :cond_13
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "appkey"

    .line 423
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "|"

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 426
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 428
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final handleRemoteMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 37

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "1"

    const-string v4, "messageId="

    const-string v5, "fromAppkey"

    const-string v6, "source"

    const-string v7, "body"

    const-string v8, "agoo_arrive"

    const-string v9, "accs"

    const-string v10, "BaseIntentService"

    :try_start_14
    const-string v0, "id"

    .line 242
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 243
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v0, "type"

    .line 244
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v0, "message_source"

    .line 245
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "report"

    .line 246
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "encrypted"

    move-object/from16 v16, v15

    .line 247
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v0, "extData"

    move-object/from16 v17, v3

    .line 248
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "oriData"
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_42} :catch_352

    move-object/from16 v18, v8

    .line 249
    :try_start_44
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_48} :catch_34d

    const/16 v19, 0x0

    move-object/from16 v20, v9

    :try_start_4c
    const-string v0, "trace"
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4e} :catch_93

    move-object/from16 v21, v10

    const-wide/16 v9, -0x1

    .line 255
    :try_start_52
    invoke-virtual {v2, v0, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_5e} :catch_8f

    move-object/from16 v23, v4

    move-object/from16 v4, p1

    :try_start_62
    invoke-direct {v1, v4, v9, v10}, Lorg/android/agoo/control/BaseIntentService;->getTrace(Landroid/content/Context;J)Ljava/lang/String;

    const-string v0, "msg_agoo_bundle"

    .line 257
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 258
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_6f} :catch_8d

    .line 259
    :try_start_6f
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_77

    const-string v9, "oldsdk"

    .line 260
    :cond_77
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_7b} :catch_8b

    if-eqz v0, :cond_86

    :try_start_7d
    const-string v4, "accs_extra"

    .line 263
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_85} :catch_86

    goto :goto_88

    :catch_86
    :cond_86
    move-object/from16 v0, v19

    :goto_88
    move-object/from16 v4, v21

    goto :goto_b6

    :catch_8b
    move-exception v0

    goto :goto_9a

    :catch_8d
    move-exception v0

    goto :goto_98

    :catch_8f
    move-exception v0

    move-object/from16 v23, v4

    goto :goto_98

    :catch_93
    move-exception v0

    move-object/from16 v23, v4

    move-object/from16 v21, v10

    :goto_98
    move-object/from16 v9, v19

    .line 268
    :goto_9a
    :try_start_9a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_trace,t="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v10, v4, [Ljava/lang/Object;

    move-object/from16 v4, v21

    invoke-static {v4, v0, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, v19

    move-object v10, v0

    .line 270
    :goto_b6
    sget-object v21, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static/range {v21 .. v21}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v21

    const/16 v24, 0x4

    move-object/from16 v25, v8

    const/16 v26, 0x1

    if-eqz v21, :cond_101

    const-string v8, "handleRemoteMessage"

    const/16 v2, 0xc

    .line 271
    new-array v2, v2, [Ljava/lang/Object;

    const-string v27, "message"

    const/16 v22, 0x0

    aput-object v27, v2, v22

    aput-object v14, v2, v26

    const/16 v21, 0x2

    aput-object v6, v2, v21

    const/4 v6, 0x3

    aput-object v11, v2, v6

    const-string v6, "msgId"

    aput-object v6, v2, v24

    const/4 v6, 0x5

    aput-object v13, v2, v6

    const/4 v6, 0x6

    const-string v27, "utdid"

    aput-object v27, v2, v6

    const/4 v6, 0x7

    .line 272
    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v2, v6

    const/16 v6, 0x8

    const-string v27, "fromPkg"

    aput-object v27, v2, v6

    const/16 v6, 0x9

    aput-object v9, v2, v6

    const/16 v6, 0xa

    aput-object v5, v2, v6

    const/16 v5, 0xb

    aput-object v10, v2, v5

    .line 271
    invoke-static {v4, v8, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    :cond_101
    new-instance v2, Lorg/android/agoo/common/MsgDO;

    invoke-direct {v2}, Lorg/android/agoo/common/MsgDO;-><init>()V

    .line 275
    iput-object v13, v2, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    .line 276
    iput-object v3, v2, Lorg/android/agoo/common/MsgDO;->extData:Ljava/lang/String;

    .line 277
    iput-object v11, v2, Lorg/android/agoo/common/MsgDO;->messageSource:Ljava/lang/String;

    const-string v3, "4"

    .line 278
    iput-object v3, v2, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;

    .line 279
    iput-object v12, v2, Lorg/android/agoo/common/MsgDO;->reportStr:Ljava/lang/String;

    .line 280
    iput-object v9, v2, Lorg/android/agoo/common/MsgDO;->fromPkg:Ljava/lang/String;

    .line 281
    iput-object v10, v2, Lorg/android/agoo/common/MsgDO;->fromAppkey:Ljava/lang/String;

    .line 282
    invoke-static {}, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->isFirstStartProc()Z

    move-result v3

    iput-boolean v3, v2, Lorg/android/agoo/common/MsgDO;->isStartProc:Z

    .line 283
    iget-object v3, v1, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->isNotificationEnabled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/android/agoo/common/MsgDO;->notifyEnable:Ljava/lang/String;

    .line 285
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_162

    .line 286
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_150

    const-string v3, "message is encrypted, attemp to decrypt msg"

    const/4 v5, 0x0

    .line 287
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    invoke-static {v14}, Lorg/android/agoo/control/AgooFactory;->parseEncryptedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 289
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_162

    const-string v3, "22"

    .line 290
    iput-object v3, v2, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    .line 291
    iget-object v3, v1, Lorg/android/agoo/control/BaseIntentService;->notifyManager:Lorg/android/agoo/control/NotifManager;

    invoke-virtual {v3, v2, v0}, Lorg/android/agoo/control/NotifManager;->handlerACKMessage(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    return-void

    :cond_150
    const-string v3, "msg encrypted flag not exist~~"

    const/4 v5, 0x0

    .line 295
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_158
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_158} :catch_347

    :try_start_158
    const-string v3, "24"

    .line 297
    iput-object v3, v2, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    .line 298
    iget-object v3, v1, Lorg/android/agoo/control/BaseIntentService;->notifyManager:Lorg/android/agoo/control/NotifManager;

    invoke-virtual {v3, v2, v0}, Lorg/android/agoo/control/NotifManager;->report(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_161
    .catch Ljava/lang/Throwable; {:try_start_158 .. :try_end_161} :catch_161

    :catch_161
    return-void

    .line 306
    :cond_162
    :try_start_162
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_166
    .catch Ljava/lang/Throwable; {:try_start_162 .. :try_end_166} :catch_347

    if-eqz v3, :cond_17a

    :try_start_168
    const-string v3, "21"

    .line 308
    iput-object v3, v2, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    .line 310
    iget-object v3, v1, Lorg/android/agoo/control/BaseIntentService;->notifyManager:Lorg/android/agoo/control/NotifManager;

    invoke-virtual {v3, v2, v0}, Lorg/android/agoo/control/NotifManager;->report(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_171
    .catch Ljava/lang/Throwable; {:try_start_168 .. :try_end_171} :catch_171

    :catch_171
    :try_start_171
    const-string v0, "handleMessage--->[null]"

    const/4 v2, 0x0

    .line 314
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_17a
    move-object/from16 v3, p2

    .line 317
    invoke-virtual {v3, v7, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_17f
    .catch Ljava/lang/Throwable; {:try_start_171 .. :try_end_17f} :catch_347

    .line 322
    :try_start_17f
    iget-object v5, v1, Lorg/android/agoo/control/BaseIntentService;->notifyManager:Lorg/android/agoo/control/NotifManager;

    invoke-virtual {v5, v2, v0}, Lorg/android/agoo/control/NotifManager;->report(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    .line 323
    iget-object v0, v1, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;

    const-string v5, "0"

    move-object/from16 v6, v25

    invoke-virtual {v0, v13, v6, v5}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v27

    const/16 v28, 0x4e1f

    const-string v29, "Page_Push"

    const-string v30, "agoo_arrive_id"

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v19, v0, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1a6
    .catch Ljava/lang/Throwable; {:try_start_17f .. :try_end_1a6} :catch_1cf

    move-object/from16 v6, v23

    :try_start_1a8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v26

    move-object/from16 v33, v0

    invoke-virtual/range {v27 .. v33}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    const-string v0, "arrive"
    :try_end_1bd
    .catch Ljava/lang/Throwable; {:try_start_1a8 .. :try_end_1bd} :catch_1c9

    move-object/from16 v7, v18

    move-object/from16 v5, v20

    const-wide/16 v8, 0x0

    .line 326
    :try_start_1c3
    invoke-static {v5, v7, v0, v8, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_1c6
    .catch Ljava/lang/Throwable; {:try_start_1c3 .. :try_end_1c6} :catch_1c7

    goto :goto_1f1

    :catch_1c7
    move-exception v0

    goto :goto_1d6

    :catch_1c9
    move-exception v0

    move-object/from16 v7, v18

    move-object/from16 v5, v20

    goto :goto_1d6

    :catch_1cf
    move-exception v0

    move-object/from16 v7, v18

    move-object/from16 v5, v20

    move-object/from16 v6, v23

    .line 328
    :goto_1d6
    :try_start_1d6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "report message Throwable--->t="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v4, v0, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :goto_1f1
    iget-object v0, v1, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;

    invoke-virtual {v0, v13}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22c

    .line 332
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_224

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoteMessage hasMessageDuplicate,messageId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",utdid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_224
    const-string v0, "arrive_dup"

    const-wide/16 v2, 0x0

    .line 335
    invoke-static {v5, v7, v0, v2, v3}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void

    .line 338
    :cond_22c
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_258

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage--->["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "],["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v4, v0, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_258
    .catch Ljava/lang/Throwable; {:try_start_1d6 .. :try_end_258} :catch_345

    :cond_258
    :try_start_258
    const-string v0, "duplicate"

    .line 344
    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_262
    .catch Ljava/lang/Throwable; {:try_start_258 .. :try_end_262} :catch_285

    if-nez v8, :cond_282

    move-object/from16 v8, v17

    .line 346
    :try_start_266
    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2ab

    .line 347
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 348
    iget-object v9, v1, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;

    invoke-virtual {v9, v13, v0}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2ab

    const-string v0, "arrive_dupbody"

    const-wide/16 v9, 0x0

    .line 350
    invoke-static {v5, v7, v0, v9, v10}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_27f
    .catch Ljava/lang/Throwable; {:try_start_266 .. :try_end_27f} :catch_280

    return-void

    :catch_280
    move-exception v0

    goto :goto_288

    :cond_282
    move-object/from16 v8, v17

    goto :goto_2ab

    :catch_285
    move-exception v0

    move-object/from16 v8, v17

    .line 355
    :goto_288
    :try_start_288
    sget-object v9, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v9}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v9

    if-eqz v9, :cond_2ab

    .line 356
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasMessageDuplicate message,e="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v4, v0, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2ab
    .catch Ljava/lang/Throwable; {:try_start_288 .. :try_end_2ab} :catch_345

    :cond_2ab
    :goto_2ab
    const/4 v0, -0x1

    :try_start_2ac
    const-string v4, "notify"

    .line 362
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 361
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2b6
    .catch Ljava/lang/Throwable; {:try_start_2ac .. :try_end_2b6} :catch_2b6

    :catch_2b6
    :try_start_2b6
    const-string v4, ""
    :try_end_2b8
    .catch Ljava/lang/Throwable; {:try_start_2b6 .. :try_end_2b8} :catch_345

    :try_start_2b8
    const-string v9, "has_test"

    .line 369
    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 370
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2d9

    invoke-static {v9, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2d9

    .line 371
    iget-object v8, v1, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;
    :try_end_2cc
    .catch Ljava/lang/Throwable; {:try_start_2b8 .. :try_end_2cc} :catch_2e4

    move-object/from16 v9, v16

    :try_start_2ce
    invoke-virtual {v8, v13, v14, v9, v0}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v8, "arrive_test"

    const-wide/16 v10, 0x0

    .line 373
    invoke-static {v5, v7, v8, v10, v11}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    return-void

    :cond_2d9
    move-object/from16 v9, v16

    .line 376
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4
    :try_end_2e3
    .catch Ljava/lang/Throwable; {:try_start_2ce .. :try_end_2e3} :catch_2e6

    goto :goto_2e6

    :catch_2e4
    move-object/from16 v9, v16

    .line 381
    :catch_2e6
    :goto_2e6
    :try_start_2e6
    iget-object v8, v1, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;

    invoke-virtual {v8, v13, v14, v9, v0}, Lorg/android/agoo/message/MessageService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 384
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v27

    const/16 v28, 0x4e1f

    const-string v29, "Page_Push"

    const-string v30, "agoo_arrive_real_id"

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v19, v0, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v26

    move-object/from16 v33, v0

    invoke-virtual/range {v27 .. v33}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arrive_real_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v8, 0x0

    invoke-static {v5, v7, v0, v8, v9}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    const-string v0, "monitor"

    .line 386
    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;

    if-eqz v0, :cond_341

    .line 388
    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/NetPerformanceMonitor;->onToAgooTime()V

    .line 389
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v2

    invoke-interface {v2, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 391
    :cond_341
    invoke-virtual/range {p0 .. p2}, Lorg/android/agoo/control/BaseIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_344
    .catch Ljava/lang/Throwable; {:try_start_2e6 .. :try_end_344} :catch_345

    goto :goto_36f

    :catch_345
    move-exception v0

    goto :goto_355

    :catch_347
    move-exception v0

    move-object/from16 v7, v18

    move-object/from16 v5, v20

    goto :goto_355

    :catch_34d
    move-exception v0

    move-object v5, v9

    move-object/from16 v7, v18

    goto :goto_355

    :catch_352
    move-exception v0

    move-object v7, v8

    move-object v5, v9

    .line 393
    :goto_355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arrive_exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-static {v5, v7, v0, v2, v3}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :goto_36f
    return-void
.end method

.method private final handleRemovePackage(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-eqz p2, :cond_4d

    if-nez p1, :cond_5

    goto :goto_4d

    :cond_5
    const/4 p1, 0x0

    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 214
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 217
    :cond_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    const/4 v0, 0x0

    const-string v1, "android.intent.extra.REPLACING"

    .line 221
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 223
    sget-object v1, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemovePackage---->[replacing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "],uninstallPack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "BaseIntentService"

    invoke-static {v2, v1, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_46
    if-nez p2, :cond_4d

    .line 228
    iget-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->notifyManager:Lorg/android/agoo/control/NotifManager;

    invoke-virtual {v0, p1, p2}, Lorg/android/agoo/control/NotifManager;->doUninstall(Ljava/lang/String;Z)V

    :cond_4d
    :goto_4d
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    .line 78
    invoke-static {p0}, Lcom/taobao/accs/utl/OrangeAdapter;->isBindService(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-static {p0}, Lcom/taobao/accs/utl/Utils;->isTarget26(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 79
    invoke-virtual {p0}, Lorg/android/agoo/control/BaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lorg/android/agoo/control/j;

    invoke-direct {v1, p0}, Lorg/android/agoo/control/j;-><init>(Lorg/android/agoo/control/BaseIntentService;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 91
    :cond_22
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->messenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .registers 2

    .line 96
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 97
    new-instance v0, Lorg/android/agoo/control/k;

    invoke-direct {v0, p0}, Lorg/android/agoo/control/k;-><init>(Lorg/android/agoo/control/BaseIntentService;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract onError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 8

    .line 120
    invoke-virtual {p0}, Lorg/android/agoo/control/BaseIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    if-nez p1, :cond_9

    return-void

    .line 124
    :cond_9
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    .line 128
    :cond_14
    iget-object v1, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/intent/IntentUtil;->getThirdPushCommand(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHandleIntent,action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mipushCommand="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "BaseIntentService"

    invoke-static {v5, v2, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :try_start_3b
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ac

    const-string v0, "command"

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "thirdPushId"

    .line 134
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mipushId_report"

    .line 135
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 137
    iget-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->notifyManager:Lorg/android/agoo/control/NotifManager;

    const-string v1, "MI_TOKEN"

    invoke-virtual {v0, p1, v1, v3}, Lorg/android/agoo/control/NotifManager;->reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_19b

    :cond_5e
    const-string v1, "huaweipushId_report"

    .line 138
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HW_TOKEN report begin..regid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->notifyManager:Lorg/android/agoo/control/NotifManager;

    const-string v1, "HW_TOKEN"

    invoke-virtual {v0, p1, v1, v3}, Lorg/android/agoo/control/NotifManager;->reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_19b

    :cond_85
    const-string v1, "gcmpushId_report"

    .line 142
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GCM_TOKEN report begin..regid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->notifyManager:Lorg/android/agoo/control/NotifManager;

    const-string v1, "gcm"

    invoke-virtual {v0, p1, v1, v3}, Lorg/android/agoo/control/NotifManager;->reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_19b

    :cond_ac
    const-string v1, "org.agoo.android.intent.action.RECEIVE"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 150
    iget-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lorg/android/agoo/control/BaseIntentService;->handleRemoteMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_19b

    :cond_bb
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 152
    iget-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lorg/android/agoo/control/BaseIntentService;->handleRemovePackage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_19b

    :cond_ca
    const-string p1, "org.agoo.android.intent.action.REPORT"

    .line 153
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10a

    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 154
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10a

    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 155
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10a

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 156
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10a

    const-string p1, "android.intent.action.PACKAGE_REPLACED"

    .line 157
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10a

    const-string p1, "android.intent.action.USER_PRESENT"

    .line 158
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10a

    const-string p1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 159
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10a

    const-string p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 160
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_108
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_108} :catch_18b
    .catchall {:try_start_3b .. :try_end_108} :catchall_189

    if-eqz p1, :cond_19b

    .line 163
    :cond_10a
    :try_start_10a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "is report cache msg,Config.isReportCacheMsg(mContext)="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/common/Config;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v5, p1, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lorg/android/agoo/common/Config;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_145

    .line 166
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_145

    .line 168
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lorg/android/agoo/common/Config;->d(Landroid/content/Context;)V

    .line 170
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->agooFactory:Lorg/android/agoo/control/AgooFactory;

    invoke-virtual {p1}, Lorg/android/agoo/control/AgooFactory;->reportCacheMsg()V

    .line 171
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;

    invoke-virtual {p1}, Lorg/android/agoo/message/MessageService;->a()V

    .line 174
    :cond_145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 175
    sget-object p1, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {p1}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result p1

    if-eqz p1, :cond_16d

    .line 176
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is clear all msg="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;J)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v5, p1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    :cond_16d
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;J)Z

    move-result p1

    if-eqz p1, :cond_19b

    .line 180
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;J)V

    .line 182
    iget-object p1, p0, Lorg/android/agoo/control/BaseIntentService;->messageService:Lorg/android/agoo/message/MessageService;

    invoke-virtual {p1}, Lorg/android/agoo/message/MessageService;->a()V
    :try_end_17f
    .catch Ljava/lang/Throwable; {:try_start_10a .. :try_end_17f} :catch_180
    .catchall {:try_start_10a .. :try_end_17f} :catchall_189

    goto :goto_19b

    :catch_180
    move-exception p1

    :try_start_181
    const-string v0, "reportCacheMsg"

    .line 186
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, p1, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_188
    .catch Ljava/lang/Throwable; {:try_start_181 .. :try_end_188} :catch_18b
    .catchall {:try_start_181 .. :try_end_188} :catchall_189

    goto :goto_19b

    :catchall_189
    move-exception p1

    goto :goto_1a1

    :catch_18b
    move-exception p1

    .line 190
    :try_start_18c
    sget-object v0, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v0}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v0

    if-eqz v0, :cond_19b

    const-string v0, "onHandleIntent deal error"

    .line 191
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, p1, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_19b
    .catchall {:try_start_18c .. :try_end_19b} :catchall_189

    .line 194
    :cond_19b
    :goto_19b
    sget-object p1, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void

    :goto_1a1
    sget-object v0, Lcom/taobao/accs/client/AdapterGlobalClientInfo;->mStartServiceTimes:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 195
    throw p1
.end method

.method protected abstract onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 110
    new-instance p2, Lorg/android/agoo/control/l;

    invoke-direct {p2, p0, p1}, Lorg/android/agoo/control/l;-><init>(Lorg/android/agoo/control/BaseIntentService;Landroid/content/Intent;)V

    invoke-static {p2}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x2

    return p1
.end method
