.class Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;
.super Ljava/lang/Object;
.source "RecordActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->checkDownloadProgress()V
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
.field final synthetic this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;


# direct methods
.method constructor <init>(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

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
    .registers 9

    .line 191
    iget-object p1, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$800(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 192
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 193
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pilotlab/rollereye/P2P/P2PDownload;

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/P2P/P2PDownload;->getP2PdownloadBean()Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pilotlab/rollereye/Bean/P2PdownloadBean;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 194
    :goto_20
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 195
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "record"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_15a

    .line 196
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_10a

    .line 197
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 198
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v3

    if-ne v3, v6, :cond_a2

    .line 199
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto/16 :goto_1d0

    .line 201
    :cond_a2
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyItemChanged(I)V

    .line 202
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1d0

    .line 204
    :cond_b0
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d0

    .line 205
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v3

    if-eq v3, v5, :cond_fc

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v3

    if-ne v3, v4, :cond_1d0

    .line 206
    :cond_fc
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyItemChanged(I)V

    .line 207
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1d0

    .line 211
    :cond_10a
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d0

    .line 212
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v3

    if-ne v3, v6, :cond_14d

    .line 213
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    goto/16 :goto_1d0

    .line 215
    :cond_14d
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyItemChanged(I)V

    .line 216
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1d0

    .line 220
    :cond_15a
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getFileType()Ljava/lang/String;

    move-result-object v3

    const-string v6, "snapshot"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d0

    .line 221
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d0

    .line 222
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v3

    if-eq v3, v5, :cond_1c4

    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$000(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;

    invoke-virtual {v3}, Lcom/pilotlab/rollereye/Bean/ServerBean/FileBean;->getDownload_status()I

    move-result v3

    if-ne v3, v4, :cond_1d0

    .line 223
    :cond_1c4
    iget-object v3, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v3}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$900(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;)Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pilotlab/rollereye/UI/Adapter/RecordAdapter;->notifyItemChanged(I)V

    .line 224
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    :cond_1d0
    :goto_1d0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_20

    :cond_1d4
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 182
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity$3;->this$0:Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;

    invoke-static {v0, p1}, Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;->access$702(Lcom/pilotlab/rollereye/UI/Activity/Monitor/RecordActivity;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
