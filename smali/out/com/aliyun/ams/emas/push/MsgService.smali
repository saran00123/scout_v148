.class public Lcom/aliyun/ams/emas/push/MsgService;
.super Lcom/taobao/accs/data/MsgDistributeService;
.source "Taobao"


# static fields
.field public static final TAG:Ljava/lang/String; = "MPS:MsgService"


# instance fields
.field listener:Lcom/aliyun/ams/emas/push/notification/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/taobao/accs/data/MsgDistributeService;-><init>()V

    .line 23
    new-instance v0, Lcom/aliyun/ams/emas/push/notification/e;

    invoke-direct {v0}, Lcom/aliyun/ams/emas/push/notification/e;-><init>()V

    iput-object v0, p0, Lcom/aliyun/ams/emas/push/MsgService;->listener:Lcom/aliyun/ams/emas/push/notification/e;

    return-void
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 9

    const/4 v0, 0x0

    const-string v1, "MPS:MsgService"

    if-nez p1, :cond_11

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "intent null"

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/accs/data/MsgDistributeService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    .line 33
    :cond_11
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/accs/data/MsgDistributeService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    .line 38
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MsgService onStartCommand begin...action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v3, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/aliyun/ams/emas/push/h;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 40
    iget-object p2, p0, Lcom/aliyun/ams/emas/push/MsgService;->listener:Lcom/aliyun/ams/emas/push/notification/e;

    invoke-virtual {p0}, Lcom/aliyun/ams/emas/push/MsgService;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/aliyun/ams/emas/push/notification/e;->a(Landroid/content/Intent;Landroid/content/Context;)I

    const/4 p1, 0x2

    return p1

    .line 43
    :cond_49
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/accs/data/MsgDistributeService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
