.class Lcom/tutk/sample/AVAPI/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutk/sample/AVAPI/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/tutk/sample/AVAPI/MainActivity;


# direct methods
.method constructor <init>(Lcom/tutk/sample/AVAPI/MainActivity;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/tutk/sample/AVAPI/MainActivity$1;->this$0:Lcom/tutk/sample/AVAPI/MainActivity;

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
    .registers 2

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 51
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/tutk/sample/AVAPI/MainActivity$1;->onNext(Ljava/lang/Long;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/tutk/sample/AVAPI/MainActivity$1;->this$0:Lcom/tutk/sample/AVAPI/MainActivity;

    iput-object p1, v0, Lcom/tutk/sample/AVAPI/MainActivity;->myDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method
