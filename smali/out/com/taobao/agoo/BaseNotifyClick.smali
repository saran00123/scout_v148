.class public abstract Lcom/taobao/agoo/BaseNotifyClick;
.super Ljava/lang/Object;
.source "BaseNotifyClick.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "accs.BaseNotifyClick"


# instance fields
.field private context:Landroid/content/Context;

.field private msgSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/agoo/BaseNotifyClick;Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/taobao/agoo/BaseNotifyClick;->parseMsgByThirdPush(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/taobao/agoo/BaseNotifyClick;)Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/taobao/agoo/BaseNotifyClick;->msgSource:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/taobao/agoo/BaseNotifyClick;)Landroid/content/Context;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/taobao/agoo/BaseNotifyClick;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/agoo/BaseNotifyClick;Landroid/content/Intent;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/taobao/agoo/BaseNotifyClick;->reportClickNotifyMsg(Landroid/content/Intent;)V

    return-void
.end method

.method private buildMessage(Landroid/content/Intent;)V
    .registers 4

    .line 48
    invoke-static {}, Lcom/alibaba/sdk/android/push/utils/ThreadUtil;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/taobao/agoo/BaseNotifyClick$1;

    invoke-direct {v1, p0, p1}, Lcom/taobao/agoo/BaseNotifyClick$1;-><init>(Lcom/taobao/agoo/BaseNotifyClick;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private parseMsgByThirdPush(Landroid/content/Intent;)Ljava/lang/String;
    .registers 10

    .line 98
    sget-object v0, Lcom/taobao/agoo/BaseNotifyClickActivity;->notifyListeners:Ljava/util/Set;

    const/4 v1, 0x0

    const-string v2, "accs.BaseNotifyClick"

    if-eqz v0, :cond_37

    sget-object v0, Lcom/taobao/agoo/BaseNotifyClickActivity;->notifyListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_37

    .line 99
    sget-object v0, Lcom/taobao/agoo/BaseNotifyClickActivity;->notifyListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;

    .line 100
    invoke-interface {v3, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 102
    invoke-interface {v3}, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;->getMsgSource()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/agoo/BaseNotifyClick;->msgSource:Ljava/lang/String;

    move-object v3, v4

    goto/16 :goto_b2

    :cond_35
    move-object v3, v4

    goto :goto_16

    .line 107
    :cond_37
    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "no impl, try use default impl to parse intent!"

    invoke-static {v2, v3, v0}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    new-instance v0, Lcom/alibaba/sdk/android/push/impl/HuaweiMsgParseImpl;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/impl/HuaweiMsgParseImpl;-><init>()V

    .line 109
    invoke-interface {v0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 112
    new-instance v0, Lcom/alibaba/sdk/android/push/impl/XiaoMiMsgParseImpl;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/impl/XiaoMiMsgParseImpl;-><init>()V

    .line 113
    invoke-interface {v0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 116
    :cond_56
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 117
    new-instance v0, Lcom/alibaba/sdk/android/push/impl/OppoMsgParseImpl;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/impl/OppoMsgParseImpl;-><init>()V

    .line 118
    invoke-interface {v0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 121
    :cond_65
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 122
    new-instance v0, Lcom/alibaba/sdk/android/push/impl/VivoMsgParseImpl;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/impl/VivoMsgParseImpl;-><init>()V

    .line 123
    invoke-interface {v0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 126
    :cond_74
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_84

    .line 127
    new-instance v0, Lcom/alibaba/sdk/android/push/impl/MeizuMsgParseImpl;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/impl/MeizuMsgParseImpl;-><init>()V

    .line 128
    invoke-interface {v0, p1}, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;->parseMsgFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    move-object v3, p1

    .line 131
    :cond_84
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-wide/16 v4, 0x0

    const-string v6, "error"

    const-string v7, "accs"

    if-eqz p1, :cond_96

    const-string p1, "parse 3push error"

    .line 132
    invoke-static {v7, v6, p1, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_b2

    .line 134
    :cond_96
    invoke-interface {v0}, Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;->getMsgSource()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/agoo/BaseNotifyClick;->msgSource:Ljava/lang/String;

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parse 3push default "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/agoo/BaseNotifyClick;->msgSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, v6, p1, v4, v5}, Lcom/taobao/accs/utl/AppMonitorAdapter;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_b2
    :goto_b2
    const/4 p1, 0x4

    .line 140
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "result"

    aput-object v0, p1, v1

    const/4 v0, 0x1

    aput-object v3, p1, v0

    const/4 v0, 0x2

    const-string v1, "msgSource"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/taobao/agoo/BaseNotifyClick;->msgSource:Ljava/lang/String;

    aput-object v1, p1, v0

    const-string v0, "parseMsgByThirdPush"

    invoke-static {v2, v0, p1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3
.end method

.method private reportClickNotifyMsg(Landroid/content/Intent;)V
    .registers 9

    const-string v0, "accs.BaseNotifyClick"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "id"

    .line 148
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "message_source"

    .line 149
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "report"

    .line 150
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "extData"

    .line 151
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    new-instance v5, Lorg/android/agoo/common/MsgDO;

    invoke-direct {v5}, Lorg/android/agoo/common/MsgDO;-><init>()V

    .line 154
    iput-object v2, v5, Lorg/android/agoo/common/MsgDO;->msgIds:Ljava/lang/String;

    .line 155
    iput-object p1, v5, Lorg/android/agoo/common/MsgDO;->extData:Ljava/lang/String;

    .line 156
    iput-object v3, v5, Lorg/android/agoo/common/MsgDO;->messageSource:Ljava/lang/String;

    .line 157
    iput-object v4, v5, Lorg/android/agoo/common/MsgDO;->reportStr:Ljava/lang/String;

    const-string p1, "8"

    .line 159
    iput-object p1, v5, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportClickNotifyMsg messageId:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " source:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " reportStr:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " status:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lorg/android/agoo/common/MsgDO;->msgStatus:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-static {}, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->getPushReporter()Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushReporter;

    move-result-object p1

    iget-object v2, p0, Lcom/taobao/agoo/BaseNotifyClick;->context:Landroid/content/Context;

    invoke-interface {p1, v2, v5}, Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushReporter;->reportPushClick(Landroid/content/Context;Lorg/android/agoo/common/MsgDO;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_65} :catch_66

    goto :goto_7d

    :catch_66
    move-exception p1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportClickNotifyMsg exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7d
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 v0, 0x0

    .line 37
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "accs.BaseNotifyClick"

    const-string v2, "onCreate"

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iput-object p1, p0, Lcom/taobao/agoo/BaseNotifyClick;->context:Landroid/content/Context;

    .line 39
    invoke-direct {p0, p2}, Lcom/taobao/agoo/BaseNotifyClick;->buildMessage(Landroid/content/Intent;)V

    return-void
.end method

.method public abstract onMessage(Landroid/content/Intent;)V
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x0

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "accs.BaseNotifyClick"

    const-string v2, "onNewIntent"

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/taobao/agoo/BaseNotifyClick;->buildMessage(Landroid/content/Intent;)V

    return-void
.end method

.method public onNotPushData(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method

.method public onParseFailed(Landroid/content/Intent;)V
    .registers 2

    return-void
.end method
