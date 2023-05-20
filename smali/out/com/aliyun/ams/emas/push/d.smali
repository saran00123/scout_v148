.class Lcom/aliyun/ams/emas/push/d;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Notification;

.field final synthetic b:Lcom/aliyun/ams/emas/push/c;


# direct methods
.method constructor <init>(Lcom/aliyun/ams/emas/push/c;Landroid/app/Notification;)V
    .registers 3

    .line 133
    iput-object p1, p0, Lcom/aliyun/ams/emas/push/d;->b:Lcom/aliyun/ams/emas/push/c;

    iput-object p2, p0, Lcom/aliyun/ams/emas/push/d;->a:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/aliyun/ams/emas/push/d;->b:Lcom/aliyun/ams/emas/push/c;

    iget-object v0, v0, Lcom/aliyun/ams/emas/push/c;->e:Lcom/aliyun/ams/emas/push/g;

    iget-object v1, p0, Lcom/aliyun/ams/emas/push/d;->a:Landroid/app/Notification;

    invoke-interface {v0, v1}, Lcom/aliyun/ams/emas/push/g;->a(Landroid/app/Notification;)V

    return-void
.end method
