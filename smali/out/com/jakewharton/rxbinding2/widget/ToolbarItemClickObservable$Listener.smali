.class final Lcom/jakewharton/rxbinding2/widget/ToolbarItemClickObservable$Listener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "ToolbarItemClickObservable.java"

# interfaces
.implements Landroid/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding2/widget/ToolbarItemClickObservable;
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
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/widget/Toolbar;Lio/reactivex/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Toolbar;",
            "Lio/reactivex/Observer<",
            "-",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/widget/ToolbarItemClickObservable$Listener;->view:Landroid/widget/Toolbar;

    .line 37
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/widget/ToolbarItemClickObservable$Listener;->observer:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method protected onDispose()V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/ToolbarItemClickObservable$Listener;->view:Landroid/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 3

    .line 41
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/widget/ToolbarItemClickObservable$Listener;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 42
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/ToolbarItemClickObservable$Listener;->observer:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method
