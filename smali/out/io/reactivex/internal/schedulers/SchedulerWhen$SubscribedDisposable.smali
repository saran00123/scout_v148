.class final Lio/reactivex/internal/schedulers/SchedulerWhen$SubscribedDisposable;
.super Ljava/lang/Object;
.source "SchedulerWhen.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubscribedDisposable"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    return-void
.end method

.method public isDisposed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
