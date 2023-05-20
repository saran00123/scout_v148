.class Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;
.super Ljava/lang/Object;
.source "CloudOrderActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->onItemCancelClick(Landroid/view/View;I)V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;I)V
    .registers 3

    .line 232
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    iput p2, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 9

    .line 257
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)V

    .line 258
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    const v3, 0x7f11003e

    invoke-virtual {v0, v3}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4$2;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4$2;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    .line 264
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V
    .registers 10

    .line 240
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)V

    .line 242
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_3d

    .line 243
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean$DataBean;->setStatus(I)V

    .line 244
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;

    move-result-object p1

    iget v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->val$position:I

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->notifyItemChanged(I)V

    goto :goto_5b

    .line 246
    :cond_3d
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;->getMsg()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    const v0, 0x7f11003e

    invoke-virtual {p1, v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4$1;

    invoke-direct {v4, p0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4$1;-><init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->myCustomerDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/pilotlab/rollereye/CustomerView/CustomDialog;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/CustomerView/CustomDialog;->show()V

    :goto_5b
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 232
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/NormalBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$4;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
