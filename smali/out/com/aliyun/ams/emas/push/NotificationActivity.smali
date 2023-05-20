.class public Lcom/aliyun/ams/emas/push/NotificationActivity;
.super Landroid/app/Activity;
.source "Taobao"


# static fields
.field public static final TAG:Ljava/lang/String; = "MPS:NotificationActivity"


# instance fields
.field a:Lcom/aliyun/ams/emas/push/notification/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    new-instance v0, Lcom/aliyun/ams/emas/push/notification/e;

    invoke-direct {v0}, Lcom/aliyun/ams/emas/push/notification/e;-><init>()V

    iput-object v0, p0, Lcom/aliyun/ams/emas/push/NotificationActivity;->a:Lcom/aliyun/ams/emas/push/notification/e;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/aliyun/ams/emas/push/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 27
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MsgService onStartCommand begin...action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MPS:NotificationActivity"

    invoke-static {v3, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    sget-object v1, Lcom/aliyun/ams/emas/push/h;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 31
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/NotificationActivity;->a:Lcom/aliyun/ams/emas/push/notification/e;

    invoke-virtual {p0}, Lcom/aliyun/ams/emas/push/NotificationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/aliyun/ams/emas/push/notification/e;->a(Landroid/content/Intent;Landroid/content/Context;I)I

    .line 35
    :cond_38
    invoke-virtual {p0}, Lcom/aliyun/ams/emas/push/NotificationActivity;->finish()V

    return-void
.end method
