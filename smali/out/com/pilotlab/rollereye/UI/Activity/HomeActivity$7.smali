.class Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$7;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->getStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public onNext(Ljava/lang/Long;)V
    .registers 3

    .line 225
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 226
    invoke-static {}, Lcom/pilotlab/rollereye/Global;->getInstance()Lcom/pilotlab/rollereye/Global;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Global;->getP2PClient(Landroid/content/Context;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 227
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "ON"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3f

    .line 228
    :cond_28
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "OFF"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3f

    .line 229
    :cond_34
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3f
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 216
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$7;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity$7;->this$0:Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/HomeActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
