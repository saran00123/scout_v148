.class Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$1;
.super Ljava/lang/Object;
.source "ScoutActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 143
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Monitor/Camera2Activity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object v0

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-virtual {v0, v1}, Lcom/pilotlab/rollereye/Global;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
