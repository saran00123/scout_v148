.class public Lcom/alibaba/sdk/android/tbrest/SendService;
.super Ljava/lang/Object;
.source "SendService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;
    }
.end annotation


# static fields
.field static final instance:Lcom/alibaba/sdk/android/tbrest/SendService;


# instance fields
.field public appId:Ljava/lang/String;

.field public appKey:Ljava/lang/String;

.field public appSecret:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public channel:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public country:Ljava/lang/String;

.field public host:Ljava/lang/String;

.field public openHttp:Ljava/lang/Boolean;

.field private sendAsyncExecutor:Lcom/alibaba/sdk/android/tbrest/a;

.field public userNick:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Lcom/alibaba/sdk/android/tbrest/SendService;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/tbrest/SendService;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/tbrest/SendService;->instance:Lcom/alibaba/sdk/android/tbrest/SendService;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appId:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appKey:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appSecret:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appVersion:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->channel:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->userNick:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->host:Ljava/lang/String;

    const/4 v1, 0x0

    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->openHttp:Ljava/lang/Boolean;

    .line 70
    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->country:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/alibaba/sdk/android/tbrest/a;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/tbrest/a;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->sendAsyncExecutor:Lcom/alibaba/sdk/android/tbrest/a;

    return-void
.end method

.method private canSend()Ljava/lang/Boolean;
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appId:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appVersion:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appKey:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    if-nez v0, :cond_11

    goto :goto_17

    :cond_11
    const/4 v0, 0x1

    .line 234
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 230
    :cond_17
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "have send args is null\uff0cyou must init first. appId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/tbrest/utils/LogUtil;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 232
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/sdk/android/tbrest/SendService;
    .registers 1

    .line 79
    sget-object v0, Lcom/alibaba/sdk/android/tbrest/SendService;->instance:Lcom/alibaba/sdk/android/tbrest/SendService;

    return-object v0
.end method


# virtual methods
.method public changeHost(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    .line 136
    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->host:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public getAppKey()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeHost()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->host:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 92
    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appId:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appKey:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appVersion:Ljava/lang/String;

    .line 96
    iput-object p5, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->channel:Ljava/lang/String;

    .line 97
    iput-object p6, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->userNick:Ljava/lang/String;

    return-void
.end method

.method public sendRequest(Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Boolean;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    move-object v12, p0

    .line 159
    invoke-direct {p0}, Lcom/alibaba/sdk/android/tbrest/SendService;->canSend()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_32

    if-nez p1, :cond_16

    .line 161
    iget-object v0, v12, Lcom/alibaba/sdk/android/tbrest/SendService;->host:Ljava/lang/String;

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const-string v0, "h-adashx.ut.taobao.com"

    :goto_14
    move-object v3, v0

    goto :goto_17

    :cond_16
    move-object v3, p1

    .line 167
    :goto_17
    iget-object v1, v12, Lcom/alibaba/sdk/android/tbrest/SendService;->appKey:Ljava/lang/String;

    iget-object v2, v12, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    move-object v0, p0

    move-wide v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v0 .. v11}, Lcom/alibaba/sdk/android/tbrest/rest/f;->a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_32
    const/4 v0, 0x0

    .line 169
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public sendRequestAsyn(Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 177
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/sdk/android/tbrest/SendService;->canSend()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4a

    if-nez p1, :cond_17

    .line 179
    iget-object v0, v15, Lcom/alibaba/sdk/android/tbrest/SendService;->host:Ljava/lang/String;

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const-string v0, "h-adashx.ut.taobao.com"

    :goto_15
    move-object v6, v0

    goto :goto_19

    :cond_17
    move-object/from16 v6, p1

    .line 186
    :goto_19
    new-instance v14, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;

    iget-object v4, v15, Lcom/alibaba/sdk/android/tbrest/SendService;->appKey:Ljava/lang/String;

    iget-object v5, v15, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 187
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const-string v3, "rest thread"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-wide/from16 v7, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v17, v14

    move-object/from16 v14, p9

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;-><init>(Lcom/alibaba/sdk/android/tbrest/SendService;Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    .line 188
    iget-object v1, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->sendAsyncExecutor:Lcom/alibaba/sdk/android/tbrest/a;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/tbrest/a;->a(Ljava/lang/Runnable;)V

    goto :goto_4b

    :cond_4a
    move-object v0, v15

    :goto_4b
    return-void
.end method

.method public sendRequestAsynByAppkeyAndUrl(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v15, p0

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/sdk/android/tbrest/SendService;->canSend()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4f

    if-nez p1, :cond_16

    const-string v0, "RestApi"

    const-string v1, "need set url"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    if-nez p2, :cond_1c

    .line 203
    iget-object v0, v15, Lcom/alibaba/sdk/android/tbrest/SendService;->appKey:Ljava/lang/String;

    move-object v4, v0

    goto :goto_1e

    :cond_1c
    move-object/from16 v4, p2

    .line 205
    :goto_1e
    new-instance v14, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;

    iget-object v5, v15, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    const/4 v0, 0x1

    .line 206
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    const-string v3, "rest thread"

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p3

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v17, v14

    move-object/from16 v14, p10

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lcom/alibaba/sdk/android/tbrest/SendService$RestThread;-><init>(Lcom/alibaba/sdk/android/tbrest/SendService;Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    .line 207
    iget-object v1, v0, Lcom/alibaba/sdk/android/tbrest/SendService;->sendAsyncExecutor:Lcom/alibaba/sdk/android/tbrest/a;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/tbrest/a;->a(Ljava/lang/Runnable;)V

    goto :goto_50

    :cond_4f
    move-object v0, v15

    :goto_50
    return-void
.end method

.method public sendRequestByUrl(Ljava/lang/String;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v12, p0

    .line 218
    invoke-direct {p0}, Lcom/alibaba/sdk/android/tbrest/SendService;->canSend()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 219
    iget-object v2, v12, Lcom/alibaba/sdk/android/tbrest/SendService;->appKey:Ljava/lang/String;

    iget-object v3, v12, Lcom/alibaba/sdk/android/tbrest/SendService;->context:Landroid/content/Context;

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v0 .. v11}, Lcom/alibaba/sdk/android/tbrest/rest/f;->a(Lcom/alibaba/sdk/android/tbrest/SendService;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;JLjava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateAppVersion(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    .line 106
    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->appVersion:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public updateChannel(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    .line 126
    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->channel:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public updateUserNick(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    .line 116
    iput-object p1, p0, Lcom/alibaba/sdk/android/tbrest/SendService;->userNick:Ljava/lang/String;

    :cond_4
    return-void
.end method
