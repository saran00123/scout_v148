.class final Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ReplaySubject.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplayDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x679849349531b12L


# instance fields
.field volatile cancelled:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field index:Ljava/lang/Object;

.field final state:Lio/reactivex/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/subjects/ReplaySubject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/subjects/ReplaySubject<",
            "TT;>;)V"
        }
    .end annotation

    .line 607
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 608
    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->downstream:Lio/reactivex/Observer;

    .line 609
    iput-object p2, p0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->state:Lio/reactivex/subjects/ReplaySubject;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 614
    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 615
    iput-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    .line 616
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->state:Lio/reactivex/subjects/ReplaySubject;

    invoke-virtual {v0, p0}, Lio/reactivex/subjects/ReplaySubject;->remove(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V

    :cond_c
    return-void
.end method

.method public isDisposed()Z
    .registers 2

    .line 622
    iget-boolean v0, p0, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    return v0
.end method
