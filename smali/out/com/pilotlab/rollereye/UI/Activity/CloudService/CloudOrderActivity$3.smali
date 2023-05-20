.class Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;
.super Ljava/lang/Object;
.source "CloudOrderActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->QueryOrders(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

.field final synthetic val$num:I


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;I)V
    .registers 3

    .line 127
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    iput p2, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->val$num:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)V

    .line 172
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 174
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    return-void
.end method

.method public onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean;)V
    .registers 5

    .line 136
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$300(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)V

    .line 138
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishRefresh(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 139
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$400(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/scwang/smartrefresh/layout/api/RefreshLayout;->finishLoadMore(Z)Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    .line 141
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$500(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_b4

    .line 145
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 147
    iget v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->val$num:I

    const/4 v2, 0x0

    if-lez v1, :cond_4f

    .line 148
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5c

    .line 150
    :cond_4f
    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 153
    :goto_5c
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_93

    .line 154
    iget p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->val$num:I

    if-lez p1, :cond_80

    .line 155
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;

    move-result-object p1

    iget-object v1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->notifyItemRangeChanged(II)V

    goto :goto_93

    .line 157
    :cond_80
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$600(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v0}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/pilotlab/rollereye/UI/Adapter/CloudOrderAdapter;->notifyItemRangeChanged(II)V

    .line 160
    :cond_93
    :goto_93
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_ab

    .line 161
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_b4

    .line 162
    :cond_ab
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$700(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_b4
    :goto_b4
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 127
    check-cast p1, Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->onNext(Lcom/pilotlab/rollereye/Bean/ServerBean/CloudOrderBean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;->access$202(Lcom/pilotlab/rollereye/UI/Activity/CloudService/CloudOrderActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
