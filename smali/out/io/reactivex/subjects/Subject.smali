.class public abstract Lio/reactivex/subjects/Subject;
.super Lio/reactivex/Observable;
.source "Subject.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TT;>;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getThrowable()Ljava/lang/Throwable;
    .annotation build Lio/reactivex/annotations/Nullable;
    .end annotation
.end method

.method public abstract hasComplete()Z
.end method

.method public abstract hasObservers()Z
.end method

.method public abstract hasThrowable()Z
.end method

.method public final toSerialized()Lio/reactivex/subjects/Subject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/Subject<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    .line 72
    instance-of v0, p0, Lio/reactivex/subjects/SerializedSubject;

    if-eqz v0, :cond_5

    return-object p0

    .line 75
    :cond_5
    new-instance v0, Lio/reactivex/subjects/SerializedSubject;

    invoke-direct {v0, p0}, Lio/reactivex/subjects/SerializedSubject;-><init>(Lio/reactivex/subjects/Subject;)V

    return-object v0
.end method
