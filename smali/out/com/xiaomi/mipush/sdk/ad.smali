.class Lcom/xiaomi/mipush/sdk/ad;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/ad;->a:Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p1, "clicked activity finish by normal."

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/mipush/sdk/ad;->a:Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;

    invoke-virtual {p1}, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->finish()V

    return-void
.end method
