.class final Lcom/aliyun/ams/emas/push/c;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/aliyun/ams/emas/push/IAgooPushConfig;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Landroid/os/Handler;

.field final synthetic e:Lcom/aliyun/ams/emas/push/g;


# direct methods
.method constructor <init>(Lcom/aliyun/ams/emas/push/IAgooPushConfig;Landroid/content/Context;Ljava/util/Map;Landroid/os/Handler;Lcom/aliyun/ams/emas/push/g;)V
    .registers 6

    .line 127
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/c;->a:Lcom/aliyun/ams/emas/push/IAgooPushConfig;

    iput-object p2, p0, Lcom/aliyun/ams/emas/push/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/aliyun/ams/emas/push/c;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/aliyun/ams/emas/push/c;->d:Landroid/os/Handler;

    iput-object p5, p0, Lcom/aliyun/ams/emas/push/c;->e:Lcom/aliyun/ams/emas/push/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/c;->a:Lcom/aliyun/ams/emas/push/IAgooPushConfig;

    iget-object v1, p0, Lcom/aliyun/ams/emas/push/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/aliyun/ams/emas/push/c;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/aliyun/ams/emas/push/IAgooPushConfig;->customNotificationUI(Landroid/content/Context;Ljava/util/Map;)Landroid/app/Notification;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/aliyun/ams/emas/push/c;->d:Landroid/os/Handler;

    if-eqz v1, :cond_17

    .line 133
    new-instance v2, Lcom/aliyun/ams/emas/push/d;

    invoke-direct {v2, p0, v0}, Lcom/aliyun/ams/emas/push/d;-><init>(Lcom/aliyun/ams/emas/push/c;Landroid/app/Notification;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c

    .line 141
    :cond_17
    iget-object v1, p0, Lcom/aliyun/ams/emas/push/c;->e:Lcom/aliyun/ams/emas/push/g;

    invoke-interface {v1, v0}, Lcom/aliyun/ams/emas/push/g;->a(Landroid/app/Notification;)V

    :goto_1c
    return-void
.end method
