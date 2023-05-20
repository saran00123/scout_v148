.class Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13$1;
.super Ljava/lang/Object;
.source "ScoutActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;)V
    .registers 2

    .line 373
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;

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

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V
    .registers 2

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 373
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 376
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity$13;->this$0:Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/ScoutActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
