.class final Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)V
    .registers 2

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender$1;->a:Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "push_status"

    return-object v0
.end method

.method public b()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender$1;->a:Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "extra_app_push_switch_status"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender$1;->a:Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/platform/message/a;->a(Lcom/meizu/cloud/pushsdk/platform/message/PushSwitchStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
