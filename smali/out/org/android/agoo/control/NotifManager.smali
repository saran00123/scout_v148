.class public Lorg/android/agoo/control/NotifManager;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field private static final ACK_MESSAGE:Ljava/lang/String; = "accs.ackMessage"

.field private static final EVENT_ID:I = 0x101d1

.field private static final TAG:Ljava/lang/String; = "NotifManager"

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .line 30
    sget-object v0, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private convertMsgToBytes(Lorg/android/agoo/common/MsgDO;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "api"

    const-string v2, "agooReport"

    .line 154
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/android/agoo/common/MsgDO;->messageSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v1, p1, Lorg/android/agoo/common/MsgDO;->extData:Ljava/lang/String;

    const-string v2, "ext"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, p1, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;

    const-string v3, "status"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p1, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 159
    iget-object v1, p1, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    const-string v3, "ec"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_46
    iget-object v1, p1, Lorg/android/agoo/common/MsgDO;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 162
    iget-object v1, p1, Lorg/android/agoo/common/MsgDO;->type:Ljava/lang/String;

    const-string v3, "type"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_55
    iget-object v1, p1, Lorg/android/agoo/common/MsgDO;->fromPkg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 165
    iget-object v1, p1, Lorg/android/agoo/common/MsgDO;->fromPkg:Ljava/lang/String;

    const-string v3, "fromPkg"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_64
    iget-object v1, p1, Lorg/android/agoo/common/MsgDO;->fromAppkey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 168
    iget-object v1, p1, Lorg/android/agoo/common/MsgDO;->fromAppkey:Ljava/lang/String;

    const-string v3, "fromAppkey"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_73
    iget-object v1, p1, Lorg/android/agoo/common/MsgDO;->notifyEnable:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_82

    .line 171
    iget-object v1, p1, Lorg/android/agoo/common/MsgDO;->notifyEnable:Ljava/lang/String;

    const-string v3, "notifyEnable"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :cond_82
    iget-object v1, p1, Lorg/android/agoo/common/MsgDO;->extData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    .line 174
    iget-object v1, p1, Lorg/android/agoo/common/MsgDO;->extData:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_8f
    iget-boolean p1, p1, Lorg/android/agoo/common/MsgDO;->isStartProc:Z

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "isStartProc"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object p1, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "appkey"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object p1, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "utdid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 182
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private getVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "null"

    .line 409
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-object v0

    .line 412
    :cond_9
    sget-object v1, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 413
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 414
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v1, "NotifManager"

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVersion###\u7248\u672c\u53f7\u4e3a : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2e} :catch_2f

    return-object p1

    :catch_2f
    return-object v0
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    .line 391
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return v0

    .line 394
    :cond_8
    sget-object v1, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    const/4 p1, 0x0

    :goto_14
    if-nez p1, :cond_17

    return v0

    .line 402
    :cond_17
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "NotifManager"

    const-string v1, "isAppInstalled true.."

    invoke-static {v0, v1, p1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private reportMethod(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .registers 14

    const/4 v0, 0x0

    const-string v1, "NotifManager"

    if-nez p1, :cond_d

    :try_start_5
    const-string p1, "reportMethod msg null"

    .line 188
    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 191
    :cond_d
    invoke-direct {p0, p1}, Lorg/android/agoo/control/NotifManager;->convertMsgToBytes(Lorg/android/agoo/common/MsgDO;)[B

    move-result-object v5

    .line 192
    new-instance v10, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v3, 0x0

    const-string v4, "agooAck"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 194
    iget-object v2, p1, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTag(Ljava/lang/String;)V

    .line 195
    sget-object v2, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    sget-object v3, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v2

    sget-object v3, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v10, p2}, Lcom/taobao/accs/IACCSManager;->sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;

    move-result-object p2

    .line 196
    sget-object v2, Lcom/taobao/accs/utl/ALog$Level;->D:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v2}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v2

    if-eqz v2, :cond_75

    const-string v2, "report"

    const/4 v3, 0x6

    .line 197
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "dataId"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/4 p2, 0x2

    const-string v0, "status"

    aput-object v0, v3, p2

    const/4 p2, 0x3

    iget-object v0, p1, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;

    aput-object v0, v3, p2

    const/4 p2, 0x4

    const-string v0, "errorcode"

    aput-object v0, v3, p2

    const/4 p2, 0x5

    iget-object p1, p1, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    aput-object p1, v3, p2

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_66} :catch_67

    goto :goto_75

    :catch_67
    move-exception p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string p2, "accs"

    const-string v2, "error"

    invoke-static {p2, v2, p1, v0, v1}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_75
    :goto_75
    return-void
.end method


# virtual methods
.method public doUninstall(Ljava/lang/String;Z)V
    .registers 11

    .line 314
    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "pack"

    .line 315
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "appkey"

    .line 317
    sget-object v0, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "utdid"

    .line 318
    sget-object v0, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 320
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 323
    new-instance p1, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v1, 0x0

    const-string v2, "agooKick"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 326
    sget-object p2, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    sget-object v0, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object p2

    sget-object v0, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-direct {v1}, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;-><init>()V

    invoke-interface {p2, v0, p1, v1}, Lcom/taobao/accs/IACCSManager;->sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_58} :catch_59

    goto :goto_64

    :catch_59
    move-exception p1

    const/4 p2, 0x0

    .line 329
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "NotifManager"

    const-string v1, "[doUninstall] is error"

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_64
    return-void
.end method

.method public handlerACKMessage(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .registers 18

    move-object/from16 v1, p1

    const-string v2, "NotifManager"

    if-nez v1, :cond_7

    return-void

    .line 55
    :cond_7
    iget-object v0, v1, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, v1, Lorg/android/agoo/common/MsgDO;->removePacks:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, v1, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 56
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v3

    const v4, 0x101d2

    sget-object v0, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgids="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",removePacks="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/android/agoo/common/MsgDO;->removePacks:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",errorCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v5, "accs.ackMessage"

    const-string v7, "handlerACKMessageRetuen"

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5b
    const/4 v3, 0x0

    .line 60
    :try_start_5c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v4, "api"

    const-string v5, "agooAck"

    .line 61
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "id"

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lorg/android/agoo/common/MsgDO;->messageSource:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v4, v1, Lorg/android/agoo/common/MsgDO;->removePacks:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_94

    const-string v4, "del_pack"

    .line 64
    iget-object v5, v1, Lorg/android/agoo/common/MsgDO;->removePacks:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_94
    iget-object v4, v1, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a3

    const-string v4, "ec"

    .line 67
    iget-object v5, v1, Lorg/android/agoo/common/MsgDO;->errorCode:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_a3
    iget-object v4, v1, Lorg/android/agoo/common/MsgDO;->type:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b2

    const-string v4, "type"

    .line 70
    iget-object v5, v1, Lorg/android/agoo/common/MsgDO;->type:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_b2
    iget-object v4, v1, Lorg/android/agoo/common/MsgDO;->extData:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c1

    const-string v4, "ext"

    .line 73
    iget-object v5, v1, Lorg/android/agoo/common/MsgDO;->extData:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c1
    const-string v4, "appkey"

    .line 76
    sget-object v5, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "utdid"

    .line 77
    sget-object v5, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 80
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 82
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v9

    const v10, 0x101d2

    const-string v11, "accs.ackMessage"

    sget-object v0, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "handlerACKMessageSendData"

    iget-object v14, v1, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    invoke-virtual/range {v9 .. v14}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "accs"

    const-string v4, "agoo_ack"

    const-string v5, "handlerACKMessage"

    const-wide/16 v6, 0x0

    .line 83
    invoke-static {v0, v4, v5, v6, v7}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 85
    new-instance v0, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v6, 0x0

    const-string v7, "agooAck"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    if-eqz v1, :cond_11b

    .line 88
    iget-object v4, v1, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/taobao/accs/ACCSManager$AccsRequest;->setTag(Ljava/lang/String;)V

    .line 92
    :cond_11b
    sget-object v4, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    sget-object v5, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v4

    sget-object v5, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    move-object/from16 v6, p2

    invoke-interface {v4, v5, v0, v6}, Lcom/taobao/accs/IACCSManager;->sendPushResponse(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlerACKMessage,endRequest,dataId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_14b
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_14b} :catch_14c

    goto :goto_19b

    :catch_14c
    move-exception v0

    .line 97
    sget-object v4, Lcom/taobao/accs/utl/ALog$Level;->E:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v4}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v4

    if-eqz v4, :cond_183

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlerACKMessage Throwable,msgIds="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lorg/android/agoo/common/MsgDO;->type:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",e="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_183
    invoke-static {}, Lcom/taobao/accs/utl/UTMini;->getInstance()Lcom/taobao/accs/utl/UTMini;

    move-result-object v4

    const v5, 0x101d2

    sget-object v1, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/accs/utl/AdapterUtilityImpl;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v6, "accs.ackMessage"

    const-string v8, "handlerACKMessageExceptionFailed"

    invoke-virtual/range {v4 .. v9}, Lcom/taobao/accs/utl/UTMini;->commitEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_19b
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 41
    sput-object p1, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public pingApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    return-void
.end method

.method public report(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    .registers 6

    .line 110
    iget-object v0, p1, Lorg/android/agoo/common/MsgDO;->reportStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 113
    :try_start_8
    iget-object v0, p1, Lorg/android/agoo/common/MsgDO;->reportStr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-lt v0, v1, :cond_2f

    .line 115
    invoke-direct {p0, p1, p2}, Lorg/android/agoo/control/NotifManager;->reportMethod(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    .line 116
    iget-boolean p2, p1, Lorg/android/agoo/common/MsgDO;->isFromCache:Z

    if-nez p2, :cond_2f

    const-string p2, "accs"

    const-string v0, "agoo_ack"

    .line 117
    iget-object p1, p1, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-static {p2, v0, p1, v1, v2}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_23} :catch_24

    goto :goto_2f

    :catch_24
    move-exception p1

    const/4 p2, 0x0

    .line 121
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "NotifManager"

    const-string v1, "[report] is error"

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public reportNotifyMessage(Lorg/android/agoo/common/MsgDO;)V
    .registers 18

    move-object/from16 v0, p1

    const-string v1, "NotifManager"

    const-string v2, "accs"

    if-eqz v0, :cond_7c

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :try_start_b
    const-string v6, "agoo_report_id"

    .line 134
    iget-object v7, v0, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    invoke-static {v2, v6, v7, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 135
    invoke-direct/range {p0 .. p1}, Lorg/android/agoo/control/NotifManager;->convertMsgToBytes(Lorg/android/agoo/common/MsgDO;)[B

    move-result-object v11

    .line 136
    new-instance v6, Lcom/taobao/accs/ACCSManager$AccsRequest;

    const/4 v9, 0x0

    const-string v10, "agooAck"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v15}, Lcom/taobao/accs/ACCSManager$AccsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    .line 138
    sget-object v7, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    sget-object v8, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lorg/android/agoo/common/Config;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/ACCSManager;->getAccsInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/accs/IACCSManager;

    move-result-object v7

    .line 139
    sget-object v8, Lorg/android/agoo/control/NotifManager;->mContext:Landroid/content/Context;

    invoke-interface {v7, v8, v6}, Lcom/taobao/accs/IACCSManager;->sendRequest(Landroid/content/Context;Lcom/taobao/accs/ACCSManager$AccsRequest;)Ljava/lang/String;

    move-result-object v6

    .line 140
    sget-object v7, Lcom/taobao/accs/utl/ALog$Level;->I:Lcom/taobao/accs/utl/ALog$Level;

    invoke-static {v7}, Lcom/taobao/accs/utl/ALog;->isPrintLog(Lcom/taobao/accs/utl/ALog$Level;)Z

    move-result v7

    if-eqz v7, :cond_5c

    const-string v7, "reportNotifyMessage"

    const/4 v8, 0x4

    .line 141
    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "dataId"

    aput-object v9, v8, v3

    const/4 v9, 0x1

    aput-object v6, v8, v9

    const/4 v6, 0x2

    const-string v9, "status"

    aput-object v9, v8, v6

    const/4 v6, 0x3

    iget-object v9, v0, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-static {v1, v7, v8}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5c
    const-string v6, "agoo_click"

    .line 143
    iget-object v7, v0, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;

    invoke-static {v2, v6, v7, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    const-string v6, "agoo_ack"

    .line 144
    iget-object v0, v0, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;

    invoke-static {v2, v6, v0, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_6a} :catch_6b

    goto :goto_7c

    :catch_6b
    move-exception v0

    .line 147
    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "[reportNotifyMessage] is error"

    invoke-static {v1, v6, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    invoke-static {v2, v1, v0, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_7c
    :goto_7c
    return-void
.end method

.method public reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    .line 309
    invoke-virtual {p0, p1, p2, v0}, Lorg/android/agoo/control/NotifManager;->reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12

    .line 262
    new-instance v6, Lorg/android/agoo/control/n;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/android/agoo/control/n;-><init>(Lorg/android/agoo/control/NotifManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0xa

    invoke-static {v6, p2, p3, p1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 213
    new-instance v0, Lorg/android/agoo/control/m;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/android/agoo/control/m;-><init>(Lorg/android/agoo/control/NotifManager;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0xa

    invoke-static {v0, p2, p3, p1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
