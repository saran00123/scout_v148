.class final Lcom/jakewharton/rxbinding2/widget/SeekBarChangeObservable;
.super Lcom/jakewharton/rxbinding2/InitialValueObservable;
.source "SeekBarChangeObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding2/widget/SeekBarChangeObservable$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding2/InitialValueObservable<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final shouldBeFromUser:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final view:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Landroid/widget/SeekBar;Ljava/lang/Boolean;)V
    .registers 3
    .param p2    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/InitialValueObservable;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/widget/SeekBarChangeObservable;->view:Landroid/widget/SeekBar;

    .line 18
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/widget/SeekBarChangeObservable;->shouldBeFromUser:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method protected getInitialValue()Ljava/lang/Integer;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/widget/SeekBarChangeObservable;->view:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getInitialValue()Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/widget/SeekBarChangeObservable;->getInitialValue()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected subscribeListener(Lio/reactivex/Observer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-static {p1}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkMainThread(Lio/reactivex/Observer;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 25
    :cond_7
    new-instance v0, Lcom/jakewharton/rxbinding2/widget/SeekBarChangeObservable$Listener;

    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/SeekBarChangeObservable;->view:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/jakewharton/rxbinding2/widget/SeekBarChangeObservable;->shouldBeFromUser:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, p1}, Lcom/jakewharton/rxbinding2/widget/SeekBarChangeObservable$Listener;-><init>(Landroid/widget/SeekBar;Ljava/lang/Boolean;Lio/reactivex/Observer;)V

    .line 26
    iget-object v1, p0, Lcom/jakewharton/rxbinding2/widget/SeekBarChangeObservable;->view:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 27
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
