.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;
.super Ljava/lang/Object;
.source "WebActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->checkStauts()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V
    .registers 2

    .line 436
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

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
    .registers 4

    .line 444
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$1700(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p1

    if-eqz p1, :cond_8d

    .line 445
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$1800(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/rollereye/P2P/P2PClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/P2P/P2PClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 446
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$1900(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_72

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$2000(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    if-eqz p1, :cond_72

    .line 447
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$2100(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getProgramming()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ProgrammingBean;

    move-result-object p1

    if-eqz p1, :cond_72

    .line 449
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$2200(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Lcom/pilotlab/rollereye/Bean/SystemStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus;->getBody()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean;->getProgramming()Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ProgrammingBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/SystemStatus$BodyBean$ProgrammingBean;->getGoRunning()I

    move-result p1

    if-ne p1, v0, :cond_61

    .line 450
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$2300(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Landroid/widget/Button;

    move-result-object p1

    const v1, 0x7f110064

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 451
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->loadingDialog:Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/LoadingDialog;->dismiss()V

    goto :goto_72

    .line 453
    :cond_61
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$2300(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)Landroid/widget/Button;

    move-result-object p1

    const v1, 0x7f11005a

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 454
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$2400(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    .line 458
    :cond_72
    :goto_72
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$2500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)I

    move-result p1

    if-lez p1, :cond_88

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$2500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)I

    move-result p1

    rem-int/2addr p1, v0

    if-nez p1, :cond_88

    .line 459
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$2600(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)V

    .line 460
    :cond_88
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$2508(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;)I

    :cond_8d
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 436
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 439
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity$6;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;->access$1602(Lcom/pilotlab/rollereye/UI/Activity/Scratch/WebActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
