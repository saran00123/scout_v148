.class public abstract Lcom/alibaba/sdk/android/push/MessageReceiver;
.super Lcom/aliyun/ams/emas/push/AgooMessageReceiver;


# instance fields
.field private mMessageNotification:Lcom/alibaba/sdk/android/push/notification/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/aliyun/ams/emas/push/AgooMessageReceiver;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/push/notification/d;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/push/notification/d;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/push/MessageReceiver;->mMessageNotification:Lcom/alibaba/sdk/android/push/notification/d;

    return-void
.end method


# virtual methods
.method public customNotificationUI(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/PushData;)Landroid/app/Notification;
    .registers 3

    const/4 p1, 0x0

    return-object p1
.end method

.method public customNotificationUI(Landroid/content/Context;Ljava/util/Map;)Landroid/app/Notification;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/push/notification/PushData;->parse(Landroid/content/Context;Ljava/util/Map;)Lcom/alibaba/sdk/android/push/notification/PushData;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/push/MessageReceiver;->customNotificationUI(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/PushData;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/MessageReceiver;->mMessageNotification:Lcom/alibaba/sdk/android/push/notification/d;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/push/notification/d;->a(Landroid/content/Context;Ljava/util/Map;)Lcom/alibaba/sdk/android/push/notification/b;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/sdk/android/push/MessageReceiver;->mMessageNotification:Lcom/alibaba/sdk/android/push/notification/d;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/push/notification/d;->a(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/b;)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method protected abstract onMessage(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/CPushMessage;)V
.end method

.method public onMessageArrived(Landroid/content/Context;Lcom/aliyun/ams/emas/push/notification/CPushMessage;)V
    .registers 3

    invoke-static {p2}, Lcom/alibaba/sdk/android/push/notification/CPushMessage;->from(Lcom/aliyun/ams/emas/push/notification/CPushMessage;)Lcom/alibaba/sdk/android/push/notification/CPushMessage;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/push/MessageReceiver;->onMessage(Landroid/content/Context;Lcom/alibaba/sdk/android/push/notification/CPushMessage;)V

    return-void
.end method

.method protected abstract onNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract onNotificationClickedWithNoAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract onNotificationOpened(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public onNotificationOpened(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const/4 v0, 0x4

    if-ne p5, v0, :cond_7

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/push/MessageReceiver;->onNotificationClickedWithNoAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/push/MessageReceiver;->onNotificationOpened(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return-void
.end method

.method protected abstract onNotificationReceivedInApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public onNotificationReceivedWithoutShow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p7}, Lcom/alibaba/sdk/android/push/MessageReceiver;->onNotificationReceivedInApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract onNotificationRemoved(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public onNotificationRemoved(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    invoke-virtual {p0, p1, p6}, Lcom/alibaba/sdk/android/push/MessageReceiver;->onNotificationRemoved(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onNotificationShow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/push/MessageReceiver;->onNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/aliyun/ams/emas/push/AgooMessageReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public showNotificationNow(Landroid/content/Context;Ljava/util/Map;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p2}, Lcom/alibaba/sdk/android/push/notification/d;->a(Ljava/util/Map;)Z

    move-result p2

    if-nez p2, :cond_f

    invoke-static {p1}, Lcom/alibaba/sdk/android/push/notification/e;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method
