.class final Lcom/jakewharton/rxbinding2/view/ViewTreeObserverDrawObservable$Listener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "ViewTreeObserverDrawObservable.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding2/view/ViewTreeObserverDrawObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Listener"
.end annotation


# instance fields
.field private final observer:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lio/reactivex/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/view/ViewTreeObserverDrawObservable$Listener;->view:Landroid/view/View;

    .line 38
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/view/ViewTreeObserverDrawObservable$Listener;->observer:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method protected onDispose()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/view/ViewTreeObserverDrawObservable$Listener;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onDraw()V
    .registers 3

    .line 42
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/view/ViewTreeObserverDrawObservable$Listener;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 43
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/view/ViewTreeObserverDrawObservable$Listener;->observer:Lio/reactivex/Observer;

    sget-object v1, Lcom/jakewharton/rxbinding2/internal/Notification;->INSTANCE:Lcom/jakewharton/rxbinding2/internal/Notification;

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_d
    return-void
.end method
