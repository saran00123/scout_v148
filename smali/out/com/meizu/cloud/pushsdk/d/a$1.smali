.class final Lcom/meizu/cloud/pushsdk/d/a$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/cloud/pushsdk/d/a;->a(Landroid/content/Context;Lcom/meizu/cloud/pushsdk/d/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meizu/cloud/pushsdk/d/e/a;


# direct methods
.method constructor <init>(Lcom/meizu/cloud/pushsdk/d/e/a;)V
    .registers 2

    iput-object p1, p0, Lcom/meizu/cloud/pushsdk/d/a$1;->a:Lcom/meizu/cloud/pushsdk/d/e/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-static {p1}, Lcom/meizu/cloud/pushsdk/d/f/e;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "online true"

    aput-object v0, p1, p2

    const-string p2, "QuickTracker"

    const-string v0, "restart track event: %s"

    invoke-static {p2, v0, p1}, Lcom/meizu/cloud/pushsdk/d/f/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/meizu/cloud/pushsdk/d/a$1;->a:Lcom/meizu/cloud/pushsdk/d/e/a;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/d/e/a;->a()V

    :cond_1a
    return-void
.end method
