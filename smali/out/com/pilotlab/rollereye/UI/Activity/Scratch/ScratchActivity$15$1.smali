.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15$1;
.super Ljava/lang/Object;
.source "ScratchActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;)V
    .registers 2

    .line 816
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;

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
    .registers 5

    .line 825
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getCode()I

    move-result p1

    const/4 v0, -0x1

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_2f

    .line 826
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;

    iget-object v1, v1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    const v2, 0x7f11024d

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 827
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1600(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;

    iget v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;->val$position:I

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/ListDownloadAdapter;->removeData(I)V

    goto :goto_45

    .line 829
    :cond_2f
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;

    iget-object v1, v1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    const v2, 0x7f11024c

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 832
    :goto_45
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1500(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5f

    .line 833
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;

    iget-object p1, p1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$1900(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5f
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 816
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15$1;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 819
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15$1;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$15;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$302(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
