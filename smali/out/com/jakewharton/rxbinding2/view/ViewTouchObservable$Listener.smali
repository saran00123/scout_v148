.class final Lcom/jakewharton/rxbinding2/view/ViewTouchObservable$Listener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "ViewTouchObservable.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding2/view/ViewTouchObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Listener"
.end annotation


# instance fields
.field private final handled:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final observer:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lio/reactivex/functions/Predicate;Lio/reactivex/Observer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lio/reactivex/functions/Predicate<",
            "-",
            "Landroid/view/MotionEvent;",
            ">;",
            "Lio/reactivex/Observer<",
            "-",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/view/ViewTouchObservable$Listener;->view:Landroid/view/View;

    .line 39
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/view/ViewTouchObservable$Listener;->handled:Lio/reactivex/functions/Predicate;

    .line 40
    iput-object p3, p0, Lcom/jakewharton/rxbinding2/view/ViewTouchObservable$Listener;->observer:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method protected onDispose()V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/view/ViewTouchObservable$Listener;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 44
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/view/ViewTouchObservable$Listener;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1e

    .line 46
    :try_start_6
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/view/ViewTouchObservable$Listener;->handled:Lio/reactivex/functions/Predicate;

    invoke-interface {p1, p2}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 47
    iget-object p1, p0, Lcom/jakewharton/rxbinding2/view/ViewTouchObservable$Listener;->observer:Lio/reactivex/Observer;

    invoke-interface {p1, p2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_15

    const/4 p1, 0x1

    return p1

    :catch_15
    move-exception p1

    .line 51
    iget-object p2, p0, Lcom/jakewharton/rxbinding2/view/ViewTouchObservable$Listener;->observer:Lio/reactivex/Observer;

    invoke-interface {p2, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 52
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/view/ViewTouchObservable$Listener;->dispose()V

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method
