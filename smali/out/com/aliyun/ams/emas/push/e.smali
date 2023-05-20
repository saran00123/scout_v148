.class final Lcom/aliyun/ams/emas/push/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Lcom/aliyun/ams/emas/push/g;


# instance fields
.field final synthetic a:Lcom/aliyun/ams/emas/push/notification/f;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/aliyun/ams/emas/push/notification/c;

.field final synthetic d:Lcom/aliyun/ams/emas/push/IAgooPushCallback;


# direct methods
.method constructor <init>(Lcom/aliyun/ams/emas/push/notification/f;Landroid/content/Context;Lcom/aliyun/ams/emas/push/notification/c;Lcom/aliyun/ams/emas/push/IAgooPushCallback;)V
    .registers 5

    .line 158
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/e;->a:Lcom/aliyun/ams/emas/push/notification/f;

    iput-object p2, p0, Lcom/aliyun/ams/emas/push/e;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/aliyun/ams/emas/push/e;->c:Lcom/aliyun/ams/emas/push/notification/c;

    iput-object p4, p0, Lcom/aliyun/ams/emas/push/e;->d:Lcom/aliyun/ams/emas/push/IAgooPushCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Notification;)V
    .registers 6

    .line 161
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/e;->a:Lcom/aliyun/ams/emas/push/notification/f;

    iget-object v1, p0, Lcom/aliyun/ams/emas/push/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/aliyun/ams/emas/push/e;->c:Lcom/aliyun/ams/emas/push/notification/c;

    invoke-virtual {v0, v1, p1, v2}, Lcom/aliyun/ams/emas/push/notification/f;->a(Landroid/content/Context;Landroid/app/Notification;Lcom/aliyun/ams/emas/push/notification/c;)V

    .line 162
    iget-object p1, p0, Lcom/aliyun/ams/emas/push/e;->d:Lcom/aliyun/ams/emas/push/IAgooPushCallback;

    iget-object v0, p0, Lcom/aliyun/ams/emas/push/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/aliyun/ams/emas/push/e;->c:Lcom/aliyun/ams/emas/push/notification/c;

    invoke-virtual {v1}, Lcom/aliyun/ams/emas/push/notification/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/aliyun/ams/emas/push/e;->c:Lcom/aliyun/ams/emas/push/notification/c;

    invoke-virtual {v2}, Lcom/aliyun/ams/emas/push/notification/c;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/aliyun/ams/emas/push/e;->c:Lcom/aliyun/ams/emas/push/notification/c;

    invoke-virtual {v3}, Lcom/aliyun/ams/emas/push/notification/c;->e()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/aliyun/ams/emas/push/IAgooPushCallback;->onNotificationShow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
