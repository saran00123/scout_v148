.class final Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender;->a(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)V
    .registers 2

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender$4;->a:Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "sub_tags_status"

    return-object v0
.end method

.method public b()Lcom/meizu/cloud/pushsdk/platform/message/BasicPushStatus;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender$4;->a:Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const-string v0, "extra_app_push_sub_tags_status"

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/meizu/cloud/pushsdk/platform/PlatformMessageSender$4;->a:Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;

    invoke-static {v0}, Lcom/meizu/cloud/pushsdk/platform/message/a;->a(Lcom/meizu/cloud/pushsdk/platform/message/SubTagsStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
