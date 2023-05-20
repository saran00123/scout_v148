.class public Lcom/aliyun/ams/emas/push/f;
.super Ljava/lang/Object;
.source "Taobao"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/aliyun/ams/emas/push/f;->f:Z

    .line 32
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(IIIILcom/aliyun/ams/emas/push/CommonCallback;)V
    .registers 9

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDoNotDisturb "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MPS:CloudPushService"

    invoke-static {v2, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz p1, :cond_57

    const/16 v0, 0x17

    if-gt p1, v0, :cond_57

    if-ltz p3, :cond_57

    if-gt p3, v0, :cond_57

    if-ltz p2, :cond_57

    const/16 v0, 0x3b

    if-gt p2, v0, :cond_57

    if-ltz p4, :cond_57

    if-le p4, v0, :cond_44

    goto :goto_57

    :cond_44
    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/aliyun/ams/emas/push/f;->f:Z

    .line 65
    iput p1, p0, Lcom/aliyun/ams/emas/push/f;->b:I

    .line 66
    iput p2, p0, Lcom/aliyun/ams/emas/push/f;->c:I

    .line 67
    iput p3, p0, Lcom/aliyun/ams/emas/push/f;->d:I

    .line 68
    iput p4, p0, Lcom/aliyun/ams/emas/push/f;->e:I

    if-eqz p5, :cond_56

    const-string p1, ""

    .line 70
    invoke-interface {p5, p1}, Lcom/aliyun/ams/emas/push/CommonCallback;->onSuccess(Ljava/lang/String;)V

    :cond_56
    return-void

    :cond_57
    :goto_57
    if-eqz p5, :cond_65

    const/16 p1, 0x4e85

    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "\u53c2\u6570\u8f93\u5165\u975e\u6cd5"

    invoke-interface {p5, p1, p2}, Lcom/aliyun/ams/emas/push/CommonCallback;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_65
    return-void
.end method

.method public a(Lcom/aliyun/ams/emas/push/notification/CPushMessage;)V
    .registers 7

    const/4 v0, 0x0

    const-string v1, "MPS:CloudPushService"

    if-eqz p1, :cond_5d

    .line 111
    invoke-virtual {p1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_5d

    .line 116
    :cond_10
    iget-object v2, p0, Lcom/aliyun/ams/emas/push/f;->a:Landroid/content/Context;

    if-nez v2, :cond_1c

    .line 117
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "context is null"

    invoke-static {v1, v0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 122
    :cond_1c
    :try_start_1c
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 123
    sget-object v3, Lcom/aliyun/ams/emas/push/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v3, p0, Lcom/aliyun/ams/emas/push/f;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/aliyun/ams/emas/push/MsgService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "action_type"

    const-string v4, "message_open"

    .line 125
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "msgId"

    .line 126
    invoke-virtual {p1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extData"

    .line 127
    invoke-virtual {p1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->getTraceInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object p1, p0, Lcom/aliyun/ams/emas/push/f;->a:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_53} :catch_54

    goto :goto_5c

    :catch_54
    move-exception p1

    .line 130
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Click message event upload failed."

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_5c
    return-void

    .line 112
    :cond_5d
    :goto_5d
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "message is null"

    invoke-static {v1, v0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 41
    iput-boolean p1, p0, Lcom/aliyun/ams/emas/push/f;->f:Z

    return-void
.end method

.method public a()Z
    .registers 7

    .line 80
    iget-boolean v0, p0, Lcom/aliyun/ams/emas/push/f;->f:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 83
    :cond_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 85
    iget v2, p0, Lcom/aliyun/ams/emas/push/f;->b:I

    mul-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcom/aliyun/ams/emas/push/f;->c:I

    add-int/2addr v2, v3

    .line 86
    iget v3, p0, Lcom/aliyun/ams/emas/push/f;->d:I

    mul-int/lit8 v3, v3, 0x3c

    iget v4, p0, Lcom/aliyun/ams/emas/push/f;->e:I

    add-int/2addr v3, v4

    const/16 v4, 0xb

    .line 87
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    const/16 v5, 0xc

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v4, v0

    const/4 v0, 0x1

    if-gt v2, v3, :cond_30

    if-lt v4, v2, :cond_2f

    if-gt v4, v3, :cond_2f

    return v0

    :cond_2f
    return v1

    :cond_30
    if-ge v4, v2, :cond_36

    if-gt v4, v3, :cond_35

    goto :goto_36

    :cond_35
    return v1

    :cond_36
    :goto_36
    return v0
.end method

.method public b(Lcom/aliyun/ams/emas/push/notification/CPushMessage;)V
    .registers 7

    const/4 v0, 0x0

    const-string v1, "MPS:CloudPushService"

    if-eqz p1, :cond_5d

    .line 142
    invoke-virtual {p1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_5d

    .line 147
    :cond_10
    iget-object v2, p0, Lcom/aliyun/ams/emas/push/f;->a:Landroid/content/Context;

    if-nez v2, :cond_1c

    .line 148
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "context is null"

    invoke-static {v1, v0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 153
    :cond_1c
    :try_start_1c
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 154
    sget-object v3, Lcom/aliyun/ams/emas/push/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v3, p0, Lcom/aliyun/ams/emas/push/f;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/aliyun/ams/emas/push/MsgService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "action_type"

    const-string v4, "message_delete"

    .line 156
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "msgId"

    .line 157
    invoke-virtual {p1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "extData"

    .line 158
    invoke-virtual {p1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->getTraceInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object p1, p0, Lcom/aliyun/ams/emas/push/f;->a:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_53} :catch_54

    goto :goto_5c

    :catch_54
    move-exception p1

    .line 161
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Dismiss message event upload failed."

    invoke-static {v1, v2, p1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_5c
    return-void

    .line 143
    :cond_5d
    :goto_5d
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "message is null"

    invoke-static {v1, v0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
