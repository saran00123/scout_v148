.class Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$2;
.super Ljava/lang/Object;
.source "ScratchActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;

.field final synthetic val$circularProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field final synthetic val$imageView:Landroid/widget/ImageView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;Landroid/widget/ImageView;Landroid/view/View;)V
    .registers 5

    .line 402
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$2;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;

    iput-object p2, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$2;->val$circularProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iput-object p3, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$2;->val$v:Landroid/view/View;

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

    .line 410
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$2;->val$circularProgressDrawable:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    invoke-virtual {v0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->stop()V

    .line 411
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$2;->val$imageView:Landroid/widget/ImageView;

    const v1, 0x7f08015a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 412
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getCode()I

    move-result p1

    const/4 v0, -0x1

    const/16 v1, 0xc8

    if-ne p1, v1, :cond_2b

    .line 413
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$2;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$2;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;

    iget-object v1, v1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    const v2, 0x7f110249

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    goto :goto_3f

    .line 415
    :cond_2b
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$2;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$2;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;

    iget-object v1, v1, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    const v2, 0x7f110247

    invoke-virtual {v1, v2}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    :goto_3f
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 402
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$2;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 405
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3$2;->this$1:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;

    iget-object v0, v0, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;->access$302(Lcom/pilotlab/rollereye/UI/Activity/Scratch/ScratchActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
