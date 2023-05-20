.class Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;
.super Ljava/lang/Object;
.source "AndroidMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnTimedTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidMediaPlayerListenerHolder"
.end annotation


# instance fields
.field public final mWeakMediaPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;)V
    .registers 3

    .line 359
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 3

    .line 397
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-nez p1, :cond_b

    return-void

    .line 401
    :cond_b
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p1, p2}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnBufferingUpdate(I)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 406
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-nez p1, :cond_b

    return-void

    .line 410
    :cond_b
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnCompletion()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 372
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz p1, :cond_14

    .line 373
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p1, p2, p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnError(II)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 365
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-eqz p1, :cond_14

    .line 366
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p1, p2, p3}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnInfo(II)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 415
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-nez p1, :cond_b

    return-void

    .line 419
    :cond_b
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnPrepared()V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 388
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-nez p1, :cond_b

    return-void

    .line 392
    :cond_b
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnSeekComplete()V

    return-void
.end method

.method public onTimedText(Landroid/media/MediaPlayer;Landroid/media/TimedText;)V
    .registers 4

    .line 424
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-nez p1, :cond_b

    return-void

    :cond_b
    const/4 p1, 0x0

    if-eqz p2, :cond_1b

    .line 431
    new-instance p1, Ltv/danmaku/ijk/media/player/IjkTimedText;

    invoke-virtual {p2}, Landroid/media/TimedText;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/TimedText;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Ltv/danmaku/ijk/media/player/IjkTimedText;-><init>(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 434
    :cond_1b
    iget-object p2, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    invoke-virtual {p2, p1}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnTimedText(Ltv/danmaku/ijk/media/player/IjkTimedText;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 5

    .line 379
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->mWeakMediaPlayer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    if-nez p1, :cond_b

    return-void

    .line 383
    :cond_b
    iget-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$AndroidMediaPlayerListenerHolder;->this$0:Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0, v0}, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    return-void
.end method
