.class Lcom/xiaomi/mipush/sdk/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/ac;->a:Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const-string v0, "clicked activity finish by timeout."

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/ac;->a:Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/NotificationClickedActivity;->finish()V

    return-void
.end method
