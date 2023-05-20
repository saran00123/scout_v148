.class Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$1;
.super Ljava/lang/Object;
.source "BaseStateActivity.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->initEvent()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

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

    .line 82
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->customer_connectview:Lcom/pilotlab/rollereye/CustomerView/ConnectView;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/ConnectView;->isConnect()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 83
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 84
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/pilotlab/rollereye/UI/Activity/Guide/GuideConDevActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity$1;->this$0:Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;

    invoke-virtual {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/BaseStateActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1f
    return-void
.end method
